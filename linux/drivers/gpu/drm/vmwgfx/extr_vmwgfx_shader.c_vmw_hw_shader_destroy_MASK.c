#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vmw_resource {int id; TYPE_1__* func; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* destroy ) (struct vmw_resource*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  (*) (struct vmw_resource*)) ; 
 int /*<<< orphan*/  FUNC1 (struct vmw_resource*) ; 

__attribute__((used)) static void FUNC2(struct vmw_resource *res)
{
	if (FUNC0(res->func->destroy))
		(void) res->func->destroy(res);
	else
		res->id = -1;
}