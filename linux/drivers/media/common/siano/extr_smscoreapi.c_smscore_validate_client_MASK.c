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
struct smscore_idlist_t {int id; int data_type; int /*<<< orphan*/  entry; } ;
struct smscore_device_t {int /*<<< orphan*/  clientslock; } ;
struct smscore_client_t {int /*<<< orphan*/  idlist; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct smscore_idlist_t* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct smscore_client_t* FUNC3 (struct smscore_device_t*,int,int) ; 

__attribute__((used)) static int FUNC4(struct smscore_device_t *coredev,
				   struct smscore_client_t *client,
				   int data_type, int id)
{
	struct smscore_idlist_t *listentry;
	struct smscore_client_t *registered_client;

	if (!client) {
		FUNC2("bad parameter.\n");
		return -EINVAL;
	}
	registered_client = FUNC3(coredev, data_type, id);
	if (registered_client == client)
		return 0;

	if (registered_client) {
		FUNC2("The msg ID already registered to another client.\n");
		return -EEXIST;
	}
	listentry = FUNC0(sizeof(*listentry), GFP_KERNEL);
	if (!listentry)
		return -ENOMEM;

	listentry->id = id;
	listentry->data_type = data_type;
	FUNC1(&listentry->entry, &client->idlist,
			&coredev->clientslock);
	return 0;
}