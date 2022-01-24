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
struct service_hndl {scalar_t__* start_status; scalar_t__* init_status; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int EFAULT ; 
 int /*<<< orphan*/  FUNC1 (struct service_hndl*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int FUNC3(struct service_hndl *service)
{
	int i;

	for (i = 0; i < FUNC0(service->init_status); i++) {
		if (service->init_status[i] || service->start_status[i]) {
			FUNC2("QAT: Could not remove active service\n");
			return -EFAULT;
		}
	}
	FUNC1(service);
	return 0;
}