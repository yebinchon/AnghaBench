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
typedef  int /*<<< orphan*/  u32 ;
struct v4l2_ext_control {int /*<<< orphan*/  value; int /*<<< orphan*/  id; } ;
struct cx2341x_mpeg_params {int dummy; } ;

/* Variables and functions */
 char** FUNC0 (struct cx2341x_mpeg_params const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct cx2341x_mpeg_params const*,struct v4l2_ext_control*) ; 

__attribute__((used)) static const char *FUNC2(const struct cx2341x_mpeg_params *p, u32 id)
{
	const char * const *menu = FUNC0(p, id);
	struct v4l2_ext_control ctrl;

	if (menu == NULL)
		goto invalid;
	ctrl.id = id;
	if (FUNC1(p, &ctrl))
		goto invalid;
	while (ctrl.value-- && *menu) menu++;
	if (*menu == NULL)
		goto invalid;
	return *menu;

invalid:
	return "<invalid>";
}