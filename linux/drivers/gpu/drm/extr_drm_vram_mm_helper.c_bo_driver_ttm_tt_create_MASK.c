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
typedef  int /*<<< orphan*/  uint32_t ;
struct ttm_tt {int /*<<< orphan*/ * func; } ;
struct ttm_buffer_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  backend_func ; 
 int /*<<< orphan*/  FUNC0 (struct ttm_tt*) ; 
 struct ttm_tt* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ttm_tt*,struct ttm_buffer_object*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ttm_tt *FUNC3(struct ttm_buffer_object *bo,
					      uint32_t page_flags)
{
	struct ttm_tt *tt;
	int ret;

	tt = FUNC1(sizeof(*tt), GFP_KERNEL);
	if (!tt)
		return NULL;

	tt->func = &backend_func;

	ret = FUNC2(tt, bo, page_flags);
	if (ret < 0)
		goto err_ttm_tt_init;

	return tt;

err_ttm_tt_init:
	FUNC0(tt);
	return NULL;
}