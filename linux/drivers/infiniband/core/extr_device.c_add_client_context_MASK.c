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
struct ib_device {int /*<<< orphan*/  client_data_rwsem; int /*<<< orphan*/  client_data; int /*<<< orphan*/  refcount; int /*<<< orphan*/  kverbs_provider; } ;
struct ib_client {int /*<<< orphan*/  client_id; int /*<<< orphan*/  (* add ) (struct ib_device*) ;int /*<<< orphan*/  uses; int /*<<< orphan*/  no_kverbs_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENT_DATA_REGISTERED ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct ib_device *device,
			      struct ib_client *client)
{
	int ret = 0;

	if (!device->kverbs_provider && !client->no_kverbs_req)
		return 0;

	FUNC0(&device->client_data_rwsem);
	/*
	 * So long as the client is registered hold both the client and device
	 * unregistration locks.
	 */
	if (!FUNC5(&client->uses))
		goto out_unlock;
	FUNC4(&device->refcount);

	/*
	 * Another caller to add_client_context got here first and has already
	 * completely initialized context.
	 */
	if (FUNC10(&device->client_data, client->client_id,
		    CLIENT_DATA_REGISTERED))
		goto out;

	ret = FUNC9(FUNC12(&device->client_data, client->client_id, NULL,
			      GFP_KERNEL));
	if (ret)
		goto out;
	FUNC1(&device->client_data_rwsem);
	if (client->add)
		client->add(device);

	/* Readers shall not see a client until add has been completed */
	FUNC11(&device->client_data, client->client_id,
		    CLIENT_DATA_REGISTERED);
	FUNC7(&device->client_data_rwsem);
	return 0;

out:
	FUNC3(device);
	FUNC2(client);
out_unlock:
	FUNC8(&device->client_data_rwsem);
	return ret;
}