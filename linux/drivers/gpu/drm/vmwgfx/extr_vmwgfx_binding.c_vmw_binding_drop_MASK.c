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
struct vmw_ctx_bindinfo {int /*<<< orphan*/ * ctx; int /*<<< orphan*/  res_list; int /*<<< orphan*/  ctx_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct vmw_ctx_bindinfo *bi)
{
	FUNC0(&bi->ctx_list);
	if (!FUNC1(&bi->res_list))
		FUNC0(&bi->res_list);
	bi->ctx = NULL;
}