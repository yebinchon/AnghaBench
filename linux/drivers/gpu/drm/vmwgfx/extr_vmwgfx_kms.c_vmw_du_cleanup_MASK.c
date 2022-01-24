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
struct vmw_display_unit {int /*<<< orphan*/  connector; int /*<<< orphan*/  encoder; int /*<<< orphan*/  crtc; int /*<<< orphan*/  cursor; int /*<<< orphan*/  primary; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct vmw_display_unit *du)
{
	FUNC4(&du->primary);
	FUNC4(&du->cursor);

	FUNC1(&du->connector);
	FUNC2(&du->crtc);
	FUNC3(&du->encoder);
	FUNC0(&du->connector);
}