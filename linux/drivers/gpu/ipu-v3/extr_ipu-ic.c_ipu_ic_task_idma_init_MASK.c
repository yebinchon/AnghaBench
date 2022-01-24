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
struct ipuv3_channel {int num; } ;
struct ipu_soc {int /*<<< orphan*/  dev; } ;
struct ipu_ic_priv {int /*<<< orphan*/  lock; struct ipu_soc* ipu; } ;
struct ipu_ic {int rotation; struct ipu_ic_priv* priv; } ;
typedef  enum ipu_rotate_mode { ____Placeholder_ipu_rotate_mode } ipu_rotate_mode ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IC_IDMAC_1 ; 
 int IC_IDMAC_1_CB0_BURST_16 ; 
 int IC_IDMAC_1_CB1_BURST_16 ; 
 int IC_IDMAC_1_CB2_BURST_16 ; 
 int IC_IDMAC_1_CB3_BURST_16 ; 
 int IC_IDMAC_1_CB4_BURST_16 ; 
 int IC_IDMAC_1_CB5_BURST_16 ; 
 int IC_IDMAC_1_CB6_BURST_16 ; 
 int IC_IDMAC_1_CB7_BURST_16 ; 
 int IC_IDMAC_1_PP_FLIP_RS ; 
 int IC_IDMAC_1_PP_ROT_MASK ; 
 int IC_IDMAC_1_PP_ROT_OFFSET ; 
 int IC_IDMAC_1_PRPENC_FLIP_RS ; 
 int IC_IDMAC_1_PRPENC_ROT_MASK ; 
 int IC_IDMAC_1_PRPENC_ROT_OFFSET ; 
 int IC_IDMAC_1_PRPVF_FLIP_RS ; 
 int IC_IDMAC_1_PRPVF_ROT_MASK ; 
 int IC_IDMAC_1_PRPVF_ROT_OFFSET ; 
 int /*<<< orphan*/  IC_IDMAC_2 ; 
 int IC_IDMAC_2_PP_HEIGHT_MASK ; 
 int IC_IDMAC_2_PP_HEIGHT_OFFSET ; 
 int IC_IDMAC_2_PRPENC_HEIGHT_MASK ; 
 int IC_IDMAC_2_PRPENC_HEIGHT_OFFSET ; 
 int IC_IDMAC_2_PRPVF_HEIGHT_MASK ; 
 int IC_IDMAC_2_PRPVF_HEIGHT_OFFSET ; 
 int /*<<< orphan*/  IC_IDMAC_3 ; 
 int IC_IDMAC_3_PP_WIDTH_MASK ; 
 int IC_IDMAC_3_PP_WIDTH_OFFSET ; 
 int IC_IDMAC_3_PRPENC_WIDTH_MASK ; 
 int IC_IDMAC_3_PRPENC_WIDTH_OFFSET ; 
 int IC_IDMAC_3_PRPVF_WIDTH_MASK ; 
 int IC_IDMAC_3_PRPVF_WIDTH_OFFSET ; 
#define  IPUV3_CHANNEL_G_MEM_IC_PP 138 
#define  IPUV3_CHANNEL_G_MEM_IC_PRP_VF 137 
#define  IPUV3_CHANNEL_IC_PP_MEM 136 
#define  IPUV3_CHANNEL_IC_PRP_ENC_MEM 135 
#define  IPUV3_CHANNEL_IC_PRP_VF_MEM 134 
#define  IPUV3_CHANNEL_MEM_IC_PP 133 
#define  IPUV3_CHANNEL_MEM_IC_PRP_VF 132 
#define  IPUV3_CHANNEL_MEM_ROT_ENC 131 
#define  IPUV3_CHANNEL_MEM_ROT_PP 130 
#define  IPUV3_CHANNEL_MEM_ROT_VF 129 
#define  IPUV3_CHANNEL_VDI_MEM_IC_VF 128 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct ipu_ic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ipu_ic*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC7(struct ipu_ic *ic, struct ipuv3_channel *channel,
			  u32 width, u32 height, int burst_size,
			  enum ipu_rotate_mode rot)
{
	struct ipu_ic_priv *priv = ic->priv;
	struct ipu_soc *ipu = priv->ipu;
	u32 ic_idmac_1, ic_idmac_2, ic_idmac_3;
	u32 temp_rot = FUNC0(rot) >> 5;
	bool need_hor_flip = false;
	unsigned long flags;
	int ret = 0;

	if ((burst_size != 8) && (burst_size != 16)) {
		FUNC1(ipu->dev, "Illegal burst length for IC\n");
		return -EINVAL;
	}

	width--;
	height--;

	if (temp_rot & 0x2)	/* Need horizontal flip */
		need_hor_flip = true;

	FUNC5(&priv->lock, flags);

	ic_idmac_1 = FUNC2(ic, IC_IDMAC_1);
	ic_idmac_2 = FUNC2(ic, IC_IDMAC_2);
	ic_idmac_3 = FUNC2(ic, IC_IDMAC_3);

	switch (channel->num) {
	case IPUV3_CHANNEL_IC_PP_MEM:
		if (burst_size == 16)
			ic_idmac_1 |= IC_IDMAC_1_CB2_BURST_16;
		else
			ic_idmac_1 &= ~IC_IDMAC_1_CB2_BURST_16;

		if (need_hor_flip)
			ic_idmac_1 |= IC_IDMAC_1_PP_FLIP_RS;
		else
			ic_idmac_1 &= ~IC_IDMAC_1_PP_FLIP_RS;

		ic_idmac_2 &= ~IC_IDMAC_2_PP_HEIGHT_MASK;
		ic_idmac_2 |= height << IC_IDMAC_2_PP_HEIGHT_OFFSET;

		ic_idmac_3 &= ~IC_IDMAC_3_PP_WIDTH_MASK;
		ic_idmac_3 |= width << IC_IDMAC_3_PP_WIDTH_OFFSET;
		break;
	case IPUV3_CHANNEL_MEM_IC_PP:
		if (burst_size == 16)
			ic_idmac_1 |= IC_IDMAC_1_CB5_BURST_16;
		else
			ic_idmac_1 &= ~IC_IDMAC_1_CB5_BURST_16;
		break;
	case IPUV3_CHANNEL_MEM_ROT_PP:
		ic_idmac_1 &= ~IC_IDMAC_1_PP_ROT_MASK;
		ic_idmac_1 |= temp_rot << IC_IDMAC_1_PP_ROT_OFFSET;
		break;
	case IPUV3_CHANNEL_MEM_IC_PRP_VF:
		if (burst_size == 16)
			ic_idmac_1 |= IC_IDMAC_1_CB6_BURST_16;
		else
			ic_idmac_1 &= ~IC_IDMAC_1_CB6_BURST_16;
		break;
	case IPUV3_CHANNEL_IC_PRP_ENC_MEM:
		if (burst_size == 16)
			ic_idmac_1 |= IC_IDMAC_1_CB0_BURST_16;
		else
			ic_idmac_1 &= ~IC_IDMAC_1_CB0_BURST_16;

		if (need_hor_flip)
			ic_idmac_1 |= IC_IDMAC_1_PRPENC_FLIP_RS;
		else
			ic_idmac_1 &= ~IC_IDMAC_1_PRPENC_FLIP_RS;

		ic_idmac_2 &= ~IC_IDMAC_2_PRPENC_HEIGHT_MASK;
		ic_idmac_2 |= height << IC_IDMAC_2_PRPENC_HEIGHT_OFFSET;

		ic_idmac_3 &= ~IC_IDMAC_3_PRPENC_WIDTH_MASK;
		ic_idmac_3 |= width << IC_IDMAC_3_PRPENC_WIDTH_OFFSET;
		break;
	case IPUV3_CHANNEL_MEM_ROT_ENC:
		ic_idmac_1 &= ~IC_IDMAC_1_PRPENC_ROT_MASK;
		ic_idmac_1 |= temp_rot << IC_IDMAC_1_PRPENC_ROT_OFFSET;
		break;
	case IPUV3_CHANNEL_IC_PRP_VF_MEM:
		if (burst_size == 16)
			ic_idmac_1 |= IC_IDMAC_1_CB1_BURST_16;
		else
			ic_idmac_1 &= ~IC_IDMAC_1_CB1_BURST_16;

		if (need_hor_flip)
			ic_idmac_1 |= IC_IDMAC_1_PRPVF_FLIP_RS;
		else
			ic_idmac_1 &= ~IC_IDMAC_1_PRPVF_FLIP_RS;

		ic_idmac_2 &= ~IC_IDMAC_2_PRPVF_HEIGHT_MASK;
		ic_idmac_2 |= height << IC_IDMAC_2_PRPVF_HEIGHT_OFFSET;

		ic_idmac_3 &= ~IC_IDMAC_3_PRPVF_WIDTH_MASK;
		ic_idmac_3 |= width << IC_IDMAC_3_PRPVF_WIDTH_OFFSET;
		break;
	case IPUV3_CHANNEL_MEM_ROT_VF:
		ic_idmac_1 &= ~IC_IDMAC_1_PRPVF_ROT_MASK;
		ic_idmac_1 |= temp_rot << IC_IDMAC_1_PRPVF_ROT_OFFSET;
		break;
	case IPUV3_CHANNEL_G_MEM_IC_PRP_VF:
		if (burst_size == 16)
			ic_idmac_1 |= IC_IDMAC_1_CB3_BURST_16;
		else
			ic_idmac_1 &= ~IC_IDMAC_1_CB3_BURST_16;
		break;
	case IPUV3_CHANNEL_G_MEM_IC_PP:
		if (burst_size == 16)
			ic_idmac_1 |= IC_IDMAC_1_CB4_BURST_16;
		else
			ic_idmac_1 &= ~IC_IDMAC_1_CB4_BURST_16;
		break;
	case IPUV3_CHANNEL_VDI_MEM_IC_VF:
		if (burst_size == 16)
			ic_idmac_1 |= IC_IDMAC_1_CB7_BURST_16;
		else
			ic_idmac_1 &= ~IC_IDMAC_1_CB7_BURST_16;
		break;
	default:
		goto unlock;
	}

	FUNC3(ic, ic_idmac_1, IC_IDMAC_1);
	FUNC3(ic, ic_idmac_2, IC_IDMAC_2);
	FUNC3(ic, ic_idmac_3, IC_IDMAC_3);

	if (FUNC4(rot))
		ic->rotation = true;

unlock:
	FUNC6(&priv->lock, flags);
	return ret;
}