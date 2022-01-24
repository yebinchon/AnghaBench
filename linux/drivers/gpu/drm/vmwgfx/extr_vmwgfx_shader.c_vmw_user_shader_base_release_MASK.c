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
struct vmw_resource {int dummy; } ;
struct ttm_base_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vmw_resource**) ; 
 struct vmw_resource* FUNC1 (struct ttm_base_object*) ; 

__attribute__((used)) static void FUNC2(struct ttm_base_object **p_base)
{
	struct ttm_base_object *base = *p_base;
	struct vmw_resource *res = FUNC1(base);

	*p_base = NULL;
	FUNC0(&res);
}