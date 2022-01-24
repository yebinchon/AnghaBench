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
struct ipu_soc {int /*<<< orphan*/  dev; } ;
struct ipu_ic_priv {struct ipu_soc* ipu; } ;
struct ipu_ic {struct ipu_ic_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  IC_CMBP_1 ; 
 int /*<<< orphan*/  IC_CMBP_2 ; 
 int /*<<< orphan*/  IC_CONF ; 
 int /*<<< orphan*/  IC_IDMAC_1 ; 
 int /*<<< orphan*/  IC_IDMAC_2 ; 
 int /*<<< orphan*/  IC_IDMAC_3 ; 
 int /*<<< orphan*/  IC_IDMAC_4 ; 
 int /*<<< orphan*/  IC_PP_RSC ; 
 int /*<<< orphan*/  IC_PRP_ENC_RSC ; 
 int /*<<< orphan*/  IC_PRP_VF_RSC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipu_ic*,int /*<<< orphan*/ ) ; 

void FUNC2(struct ipu_ic *ic)
{
	struct ipu_ic_priv *priv = ic->priv;
	struct ipu_soc *ipu = priv->ipu;

	FUNC0(ipu->dev, "IC_CONF = \t0x%08X\n",
		FUNC1(ic, IC_CONF));
	FUNC0(ipu->dev, "IC_PRP_ENC_RSC = \t0x%08X\n",
		FUNC1(ic, IC_PRP_ENC_RSC));
	FUNC0(ipu->dev, "IC_PRP_VF_RSC = \t0x%08X\n",
		FUNC1(ic, IC_PRP_VF_RSC));
	FUNC0(ipu->dev, "IC_PP_RSC = \t0x%08X\n",
		FUNC1(ic, IC_PP_RSC));
	FUNC0(ipu->dev, "IC_CMBP_1 = \t0x%08X\n",
		FUNC1(ic, IC_CMBP_1));
	FUNC0(ipu->dev, "IC_CMBP_2 = \t0x%08X\n",
		FUNC1(ic, IC_CMBP_2));
	FUNC0(ipu->dev, "IC_IDMAC_1 = \t0x%08X\n",
		FUNC1(ic, IC_IDMAC_1));
	FUNC0(ipu->dev, "IC_IDMAC_2 = \t0x%08X\n",
		FUNC1(ic, IC_IDMAC_2));
	FUNC0(ipu->dev, "IC_IDMAC_3 = \t0x%08X\n",
		FUNC1(ic, IC_IDMAC_3));
	FUNC0(ipu->dev, "IC_IDMAC_4 = \t0x%08X\n",
		FUNC1(ic, IC_IDMAC_4));
}