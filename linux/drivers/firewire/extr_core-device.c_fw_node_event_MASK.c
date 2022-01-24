#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct fw_node {struct fw_device* data; int /*<<< orphan*/  node_id; } ;
struct fw_device {int is_local; int /*<<< orphan*/  workfn; int /*<<< orphan*/  state; int /*<<< orphan*/  generation; int /*<<< orphan*/  node_id; int /*<<< orphan*/  work; int /*<<< orphan*/  client_list; int /*<<< orphan*/  client_list_mutex; int /*<<< orphan*/  node; int /*<<< orphan*/  card; } ;
struct fw_card {int /*<<< orphan*/  link; int /*<<< orphan*/  generation; struct fw_node* local_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_DEVICE_GONE ; 
 int /*<<< orphan*/  FW_DEVICE_INITIALIZING ; 
 int /*<<< orphan*/  FW_DEVICE_RUNNING ; 
#define  FW_NODE_CREATED 133 
#define  FW_NODE_DESTROYED 132 
#define  FW_NODE_INITIATED_RESET 131 
#define  FW_NODE_LINK_OFF 130 
#define  FW_NODE_LINK_ON 129 
#define  FW_NODE_UPDATED 128 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  INITIAL_DELAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SHUTDOWN_DELAY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fw_card*) ; 
 int /*<<< orphan*/  fw_device_init ; 
 int /*<<< orphan*/  fw_device_refresh ; 
 int /*<<< orphan*/  fw_device_shutdown ; 
 int /*<<< orphan*/  fw_device_update ; 
 int /*<<< orphan*/  fw_device_workfn ; 
 int /*<<< orphan*/  FUNC7 (struct fw_node*) ; 
 int /*<<< orphan*/  FUNC8 (struct fw_device*,int /*<<< orphan*/ ) ; 
 struct fw_device* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 

void FUNC13(struct fw_card *card, struct fw_node *node, int event)
{
	struct fw_device *device;

	switch (event) {
	case FW_NODE_CREATED:
		/*
		 * Attempt to scan the node, regardless whether its self ID has
		 * the L (link active) flag set or not.  Some broken devices
		 * send L=0 but have an up-and-running link; others send L=1
		 * without actually having a link.
		 */
 create:
		device = FUNC9(sizeof(*device), GFP_ATOMIC);
		if (device == NULL)
			break;

		/*
		 * Do minimal initialization of the device here, the
		 * rest will happen in fw_device_init().
		 *
		 * Attention:  A lot of things, even fw_device_get(),
		 * cannot be done before fw_device_init() finished!
		 * You can basically just check device->state and
		 * schedule work until then, but only while holding
		 * card->lock.
		 */
		FUNC4(&device->state, FW_DEVICE_INITIALIZING);
		device->card = FUNC6(card);
		device->node = FUNC7(node);
		device->node_id = node->node_id;
		device->generation = card->generation;
		device->is_local = node == card->local_node;
		FUNC11(&device->client_list_mutex);
		FUNC1(&device->client_list);

		/*
		 * Set the node data to point back to this device so
		 * FW_NODE_UPDATED callbacks can update the node_id
		 * and generation for the device.
		 */
		node->data = device;

		/*
		 * Many devices are slow to respond after bus resets,
		 * especially if they are bus powered and go through
		 * power-up after getting plugged in.  We schedule the
		 * first config rom scan half a second after bus reset.
		 */
		device->workfn = fw_device_init;
		FUNC0(&device->work, fw_device_workfn);
		FUNC8(device, INITIAL_DELAY);
		break;

	case FW_NODE_INITIATED_RESET:
	case FW_NODE_LINK_ON:
		device = node->data;
		if (device == NULL)
			goto create;

		device->node_id = node->node_id;
		FUNC12();  /* update node_id before generation */
		device->generation = card->generation;
		if (FUNC2(&device->state,
			    FW_DEVICE_RUNNING,
			    FW_DEVICE_INITIALIZING) == FW_DEVICE_RUNNING) {
			device->workfn = fw_device_refresh;
			FUNC8(device,
				device->is_local ? 0 : INITIAL_DELAY);
		}
		break;

	case FW_NODE_UPDATED:
		device = node->data;
		if (device == NULL)
			break;

		device->node_id = node->node_id;
		FUNC12();  /* update node_id before generation */
		device->generation = card->generation;
		if (FUNC3(&device->state) == FW_DEVICE_RUNNING) {
			device->workfn = fw_device_update;
			FUNC8(device, 0);
		}
		break;

	case FW_NODE_DESTROYED:
	case FW_NODE_LINK_OFF:
		if (!node->data)
			break;

		/*
		 * Destroy the device associated with the node.  There
		 * are two cases here: either the device is fully
		 * initialized (FW_DEVICE_RUNNING) or we're in the
		 * process of reading its config rom
		 * (FW_DEVICE_INITIALIZING).  If it is fully
		 * initialized we can reuse device->work to schedule a
		 * full fw_device_shutdown().  If not, there's work
		 * scheduled to read it's config rom, and we just put
		 * the device in shutdown state to have that code fail
		 * to create the device.
		 */
		device = node->data;
		if (FUNC5(&device->state,
				FW_DEVICE_GONE) == FW_DEVICE_RUNNING) {
			device->workfn = fw_device_shutdown;
			FUNC8(device,
				FUNC10(&card->link) ? 0 : SHUTDOWN_DELAY);
		}
		break;
	}
}