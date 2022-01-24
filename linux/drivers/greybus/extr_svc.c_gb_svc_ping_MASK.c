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
struct gb_svc {int /*<<< orphan*/  connection; } ;

/* Variables and functions */
 int GB_OPERATION_TIMEOUT_DEFAULT ; 
 int /*<<< orphan*/  GB_SVC_TYPE_PING ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC1(struct gb_svc *svc)
{
	return FUNC0(svc->connection, GB_SVC_TYPE_PING,
					 NULL, 0, NULL, 0,
					 GB_OPERATION_TIMEOUT_DEFAULT * 2);
}