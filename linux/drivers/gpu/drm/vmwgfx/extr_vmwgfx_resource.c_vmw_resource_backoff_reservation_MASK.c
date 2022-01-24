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
struct ww_acquire_ctx {int dummy; } ;
struct ttm_validate_buffer {int /*<<< orphan*/ * bo; int /*<<< orphan*/  head; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ww_acquire_ctx*,struct list_head*) ; 

__attribute__((used)) static void
FUNC5(struct ww_acquire_ctx *ticket,
				 struct ttm_validate_buffer *val_buf)
{
	struct list_head val_list;

	if (FUNC1(val_buf->bo == NULL))
		return;

	FUNC0(&val_list);
	FUNC2(&val_buf->head, &val_list);
	FUNC4(ticket, &val_list);
	FUNC3(val_buf->bo);
	val_buf->bo = NULL;
}