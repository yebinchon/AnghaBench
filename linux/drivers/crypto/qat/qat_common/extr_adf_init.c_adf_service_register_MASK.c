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
struct service_hndl {int /*<<< orphan*/  start_status; int /*<<< orphan*/  init_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct service_hndl*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC2(struct service_hndl *service)
{
	FUNC1(service->init_status, 0, sizeof(service->init_status));
	FUNC1(service->start_status, 0, sizeof(service->start_status));
	FUNC0(service);
	return 0;
}