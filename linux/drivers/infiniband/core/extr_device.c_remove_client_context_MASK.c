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
struct ib_device {int /*<<< orphan*/  client_data; int /*<<< orphan*/  client_data_rwsem; } ;
struct ib_client {int /*<<< orphan*/  (* remove ) (struct ib_device*,void*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENT_DATA_REGISTERED ; 
 int /*<<< orphan*/  clients ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_device*,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void FUNC9(struct ib_device *device,
				  unsigned int client_id)
{
	struct ib_client *client;
	void *client_data;

	FUNC0(&device->client_data_rwsem);
	if (!FUNC7(&device->client_data, client_id,
			 CLIENT_DATA_REGISTERED)) {
		FUNC4(&device->client_data_rwsem);
		return;
	}
	client_data = FUNC8(&device->client_data, client_id);
	FUNC5(&device->client_data, client_id, CLIENT_DATA_REGISTERED);
	client = FUNC8(&clients, client_id);
	FUNC4(&device->client_data_rwsem);

	/*
	 * Notice we cannot be holding any exclusive locks when calling the
	 * remove callback as the remove callback can recurse back into any
	 * public functions in this module and thus try for any locks those
	 * functions take.
	 *
	 * For this reason clients and drivers should not call the
	 * unregistration functions will holdling any locks.
	 */
	if (client->remove)
		client->remove(device, client_data);

	FUNC6(&device->client_data, client_id);
	FUNC2(device);
	FUNC1(client);
}