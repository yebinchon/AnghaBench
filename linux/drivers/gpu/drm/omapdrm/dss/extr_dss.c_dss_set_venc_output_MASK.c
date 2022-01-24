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
struct dss_device {int dummy; } ;
typedef  enum omap_dss_venc_type { ____Placeholder_omap_dss_venc_type } omap_dss_venc_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  DSS_CONTROL ; 
 int OMAP_DSS_VENC_TYPE_COMPOSITE ; 
 int OMAP_DSS_VENC_TYPE_SVIDEO ; 
 int /*<<< orphan*/  FUNC1 (struct dss_device*,int /*<<< orphan*/ ,int,int,int) ; 

void FUNC2(struct dss_device *dss, enum omap_dss_venc_type type)
{
	int l = 0;

	if (type == OMAP_DSS_VENC_TYPE_COMPOSITE)
		l = 0;
	else if (type == OMAP_DSS_VENC_TYPE_SVIDEO)
		l = 1;
	else
		FUNC0();

	/* venc out selection. 0 = comp, 1 = svideo */
	FUNC1(dss, DSS_CONTROL, l, 6, 6);
}