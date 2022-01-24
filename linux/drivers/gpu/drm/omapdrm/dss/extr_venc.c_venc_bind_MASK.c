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
typedef  scalar_t__ u8 ;
struct venc_device {int /*<<< orphan*/  debugfs; struct dss_device* dss; } ;
struct dss_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VENC_REV_ID ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,scalar_t__) ; 
 struct venc_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct dss_device*,char*,int /*<<< orphan*/ ,struct venc_device*) ; 
 struct dss_device* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  venc_dump_regs ; 
 int FUNC4 (struct venc_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct venc_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct venc_device*) ; 

__attribute__((used)) static int FUNC7(struct device *dev, struct device *master, void *data)
{
	struct dss_device *dss = FUNC3(master);
	struct venc_device *venc = FUNC1(dev);
	u8 rev_id;
	int r;

	venc->dss = dss;

	r = FUNC5(venc);
	if (r)
		return r;

	rev_id = (u8)(FUNC4(venc, VENC_REV_ID) & 0xff);
	FUNC0(dev, "OMAP VENC rev %d\n", rev_id);

	FUNC6(venc);

	venc->debugfs = FUNC2(dss, "venc", venc_dump_regs,
						venc);

	return 0;
}