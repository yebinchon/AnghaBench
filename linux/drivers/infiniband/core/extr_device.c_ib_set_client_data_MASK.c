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
struct ib_device {int /*<<< orphan*/  client_data; } ;
struct ib_client {int /*<<< orphan*/  client_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

void FUNC4(struct ib_device *device, struct ib_client *client,
			void *data)
{
	void *rc;

	if (FUNC1(FUNC0(data)))
		data = NULL;

	rc = FUNC3(&device->client_data, client->client_id, data,
		      GFP_KERNEL);
	FUNC1(FUNC2(rc));
}