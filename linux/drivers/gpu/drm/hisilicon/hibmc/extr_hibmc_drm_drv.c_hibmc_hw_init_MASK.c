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
struct hibmc_drm_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hibmc_drm_private*) ; 
 int FUNC1 (struct hibmc_drm_private*) ; 

__attribute__((used)) static int FUNC2(struct hibmc_drm_private *priv)
{
	int ret;

	ret = FUNC1(priv);
	if (ret)
		return ret;

	FUNC0(priv);

	return 0;
}