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
struct venc_device {scalar_t__ type; int invert_polarity; int /*<<< orphan*/  dss; int /*<<< orphan*/  vdda_dac_reg; int /*<<< orphan*/  output; int /*<<< orphan*/  config; } ;

/* Variables and functions */
 scalar_t__ OMAP_DSS_VENC_TYPE_COMPOSITE ; 
 int /*<<< orphan*/  VENC_OUTPUT_CONTROL ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct venc_device*) ; 
 int FUNC6 (struct venc_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct venc_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct venc_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct venc_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct venc_device *venc)
{
	u32 l;
	int r;

	r = FUNC6(venc);
	if (r)
		goto err0;

	FUNC5(venc);
	FUNC8(venc, venc->config);

	FUNC2(venc->dss, venc->type);
	FUNC1(venc->dss, 1);

	l = 0;

	if (venc->type == OMAP_DSS_VENC_TYPE_COMPOSITE)
		l |= 1 << 1;
	else /* S-Video */
		l |= (1 << 0) | (1 << 2);

	if (venc->invert_polarity == false)
		l |= 1 << 3;

	FUNC9(venc, VENC_OUTPUT_CONTROL, l);

	r = FUNC4(venc->vdda_dac_reg);
	if (r)
		goto err1;

	r = FUNC0(&venc->output);
	if (r)
		goto err2;

	return 0;

err2:
	FUNC3(venc->vdda_dac_reg);
err1:
	FUNC9(venc, VENC_OUTPUT_CONTROL, 0);
	FUNC1(venc->dss, 0);

	FUNC7(venc);
err0:
	return r;
}