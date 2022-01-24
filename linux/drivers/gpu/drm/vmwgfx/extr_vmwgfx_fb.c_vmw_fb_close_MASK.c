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
struct vmw_private {struct fb_info* fb_info; } ;
struct vmw_fb_par {int /*<<< orphan*/  vmalloc; int /*<<< orphan*/  bo_mutex; int /*<<< orphan*/  local_work; } ;
struct fb_info {struct vmw_fb_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vmw_fb_par*,int,int) ; 

int FUNC8(struct vmw_private *vmw_priv)
{
	struct fb_info *info;
	struct vmw_fb_par *par;

	if (!vmw_priv->fb_info)
		return 0;

	info = vmw_priv->fb_info;
	par = info->par;

	/* ??? order */
	FUNC1(info);
	FUNC0(&par->local_work);
	FUNC5(info);

	FUNC3(&par->bo_mutex);
	(void) FUNC7(par, true, true);
	FUNC4(&par->bo_mutex);

	FUNC6(par->vmalloc);
	FUNC2(info);

	return 0;
}