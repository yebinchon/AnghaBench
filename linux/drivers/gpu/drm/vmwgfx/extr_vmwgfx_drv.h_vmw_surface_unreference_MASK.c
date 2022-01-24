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
struct vmw_surface {struct vmw_resource res; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vmw_resource**) ; 

__attribute__((used)) static inline void FUNC1(struct vmw_surface **srf)
{
	struct vmw_surface *tmp_srf = *srf;
	struct vmw_resource *res = &tmp_srf->res;
	*srf = NULL;

	FUNC0(&res);
}