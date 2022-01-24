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
struct smscore_device_t {int /*<<< orphan*/  clientslock; int /*<<< orphan*/  clients; } ;
struct smscore_client_t {int /*<<< orphan*/  entry; int /*<<< orphan*/  context; int /*<<< orphan*/  onremove_handler; int /*<<< orphan*/  onresponse_handler; struct smscore_device_t* coredev; int /*<<< orphan*/  idlist; } ;
struct smsclient_params_t {int /*<<< orphan*/  initial_id; int /*<<< orphan*/  data_type; int /*<<< orphan*/  context; int /*<<< orphan*/  onremove_handler; int /*<<< orphan*/  onresponse_handler; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct smscore_client_t* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (struct smscore_device_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct smscore_device_t*,struct smscore_client_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(struct smscore_device_t *coredev,
			    struct smsclient_params_t *params,
			    struct smscore_client_t **client)
{
	struct smscore_client_t *newclient;
	/* check that no other channel with same parameters exists */
	if (FUNC5(coredev, params->data_type,
				params->initial_id)) {
		FUNC4("Client already exist.\n");
		return -EEXIST;
	}

	newclient = FUNC1(sizeof(*newclient), GFP_KERNEL);
	if (!newclient)
		return -ENOMEM;

	FUNC0(&newclient->idlist);
	newclient->coredev = coredev;
	newclient->onresponse_handler = params->onresponse_handler;
	newclient->onremove_handler = params->onremove_handler;
	newclient->context = params->context;
	FUNC2(&newclient->entry, &coredev->clients,
			&coredev->clientslock);
	FUNC6(coredev, newclient, params->data_type,
				params->initial_id);
	*client = newclient;
	FUNC3("%p %d %d\n", params->context, params->data_type,
		  params->initial_id);

	return 0;
}