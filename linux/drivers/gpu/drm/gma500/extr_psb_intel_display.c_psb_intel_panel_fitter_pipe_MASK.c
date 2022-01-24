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
typedef  int u32 ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PFIT_CONTROL ; 
 int PFIT_ENABLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct drm_device *dev)
{
	u32 pfit_control;

	pfit_control = FUNC0(PFIT_CONTROL);

	/* See if the panel fitter is in use */
	if ((pfit_control & PFIT_ENABLE) == 0)
		return -1;
	/* Must be on PIPE 1 for PSB */
	return 1;
}