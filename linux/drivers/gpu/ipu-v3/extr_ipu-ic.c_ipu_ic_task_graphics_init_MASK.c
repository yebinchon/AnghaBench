#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct ipu_ic_priv {int /*<<< orphan*/  lock; } ;
struct ipu_ic_colorspace {int dummy; } ;
struct ipu_ic_csc {int /*<<< orphan*/  out_cs; struct ipu_ic_colorspace in_cs; } ;
struct ipu_ic {scalar_t__ task; int graphics; TYPE_1__* bit; int /*<<< orphan*/  out_cs; struct ipu_ic_colorspace g_in_cs; struct ipu_ic_priv* priv; } ;
struct TYPE_2__ {int ic_conf_csc1_en; int ic_cmb_galpha_bit; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IC_CMBP_1 ; 
 int /*<<< orphan*/  IC_CMBP_2 ; 
 int /*<<< orphan*/  IC_CONF ; 
 int IC_CONF_IC_GLB_LOC_A ; 
 int IC_CONF_KEY_COLOR_EN ; 
 scalar_t__ IC_TASK_ENCODER ; 
 int /*<<< orphan*/  IPUV3_COLORSPACE_RGB ; 
 int /*<<< orphan*/  V4L2_QUANTIZATION_FULL_RANGE ; 
 int /*<<< orphan*/  V4L2_YCBCR_ENC_601 ; 
 int FUNC0 (struct ipu_ic_csc*) ; 
 int FUNC1 (struct ipu_ic*,struct ipu_ic_csc*,int) ; 
 int FUNC2 (struct ipu_ic_csc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ipu_ic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ipu_ic*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC7(struct ipu_ic *ic,
			      const struct ipu_ic_colorspace *g_in_cs,
			      bool galpha_en, u32 galpha,
			      bool colorkey_en, u32 colorkey)
{
	struct ipu_ic_priv *priv = ic->priv;
	struct ipu_ic_csc csc2;
	unsigned long flags;
	u32 reg, ic_conf;
	int ret = 0;

	if (ic->task == IC_TASK_ENCODER)
		return -EINVAL;

	FUNC5(&priv->lock, flags);

	ic_conf = FUNC3(ic, IC_CONF);

	if (!(ic_conf & ic->bit->ic_conf_csc1_en)) {
		struct ipu_ic_csc csc1;

		ret = FUNC2(&csc1,
				      V4L2_YCBCR_ENC_601,
				      V4L2_QUANTIZATION_FULL_RANGE,
				      IPUV3_COLORSPACE_RGB,
				      V4L2_YCBCR_ENC_601,
				      V4L2_QUANTIZATION_FULL_RANGE,
				      IPUV3_COLORSPACE_RGB);
		if (ret)
			goto unlock;

		/* need transparent CSC1 conversion */
		ret = FUNC1(ic, &csc1, 0);
		if (ret)
			goto unlock;
	}

	ic->g_in_cs = *g_in_cs;
	csc2.in_cs = ic->g_in_cs;
	csc2.out_cs = ic->out_cs;

	ret = FUNC0(&csc2);
	if (ret)
		goto unlock;

	ret = FUNC1(ic, &csc2, 1);
	if (ret)
		goto unlock;

	if (galpha_en) {
		ic_conf |= IC_CONF_IC_GLB_LOC_A;
		reg = FUNC3(ic, IC_CMBP_1);
		reg &= ~(0xff << ic->bit->ic_cmb_galpha_bit);
		reg |= (galpha << ic->bit->ic_cmb_galpha_bit);
		FUNC4(ic, reg, IC_CMBP_1);
	} else
		ic_conf &= ~IC_CONF_IC_GLB_LOC_A;

	if (colorkey_en) {
		ic_conf |= IC_CONF_KEY_COLOR_EN;
		FUNC4(ic, colorkey, IC_CMBP_2);
	} else
		ic_conf &= ~IC_CONF_KEY_COLOR_EN;

	FUNC4(ic, ic_conf, IC_CONF);

	ic->graphics = true;
unlock:
	FUNC6(&priv->lock, flags);
	return ret;
}