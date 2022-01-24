#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
struct ishtp_cl_tx_ring {int /*<<< orphan*/  list; TYPE_3__ send_buf; } ;
struct TYPE_9__ {int /*<<< orphan*/  list; } ;
struct ishtp_cl {int tx_ring_size; TYPE_5__* device; int /*<<< orphan*/  tx_free_list_spinlock; scalar_t__ tx_ring_free_size; TYPE_4__ tx_free_list; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; TYPE_2__* fw_client; } ;
struct TYPE_6__ {size_t max_msg_length; } ;
struct TYPE_7__ {TYPE_1__ props; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ishtp_cl*) ; 
 int /*<<< orphan*/  FUNC2 (struct ishtp_cl_tx_ring*) ; 
 int /*<<< orphan*/  FUNC3 (size_t,int /*<<< orphan*/ ) ; 
 struct ishtp_cl_tx_ring* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC8(struct ishtp_cl *cl)
{
	size_t	len = cl->device->fw_client->props.max_msg_length;
	int	j;
	unsigned long	flags;

	cl->tx_ring_free_size = 0;

	/* Allocate pool to free Tx bufs */
	for (j = 0; j < cl->tx_ring_size; ++j) {
		struct ishtp_cl_tx_ring	*tx_buf;

		tx_buf = FUNC4(sizeof(struct ishtp_cl_tx_ring), GFP_KERNEL);
		if (!tx_buf)
			goto	out;

		tx_buf->send_buf.data = FUNC3(len, GFP_KERNEL);
		if (!tx_buf->send_buf.data) {
			FUNC2(tx_buf);
			goto	out;
		}

		FUNC6(&cl->tx_free_list_spinlock, flags);
		FUNC5(&tx_buf->list, &cl->tx_free_list.list);
		++cl->tx_ring_free_size;
		FUNC7(&cl->tx_free_list_spinlock, flags);
	}
	return	0;
out:
	FUNC0(&cl->device->dev, "error in allocating Tx pool\n");
	FUNC1(cl);
	return	-ENOMEM;
}