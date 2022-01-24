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
struct talitos_private {TYPE_1__* chan; scalar_t__ reg_crcu; scalar_t__ reg_mdeu; scalar_t__ reg_pkeu; scalar_t__ reg_aesu; scalar_t__ reg_rngu; scalar_t__ reg_deu; scalar_t__ reg_afeu; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ reg; } ;

/* Variables and functions */
#define  DESC_HDR_SEL0_AESU 139 
#define  DESC_HDR_SEL0_AFEU 138 
#define  DESC_HDR_SEL0_CRCU 137 
#define  DESC_HDR_SEL0_DEU 136 
#define  DESC_HDR_SEL0_KEU 135 
 int DESC_HDR_SEL0_MASK ; 
#define  DESC_HDR_SEL0_MDEUA 134 
#define  DESC_HDR_SEL0_MDEUB 133 
#define  DESC_HDR_SEL0_PKEU 132 
#define  DESC_HDR_SEL0_RNG 131 
#define  DESC_HDR_SEL1_CRCU 130 
 int DESC_HDR_SEL1_MASK ; 
#define  DESC_HDR_SEL1_MDEUA 129 
#define  DESC_HDR_SEL1_MDEUB 128 
 scalar_t__ TALITOS_DESCBUF ; 
 scalar_t__ TALITOS_DESCBUF_LO ; 
 scalar_t__ TALITOS_EUISR ; 
 scalar_t__ TALITOS_EUISR_LO ; 
 scalar_t__ TALITOS_ISR ; 
 scalar_t__ TALITOS_ISR_LO ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,int) ; 
 struct talitos_private* FUNC1 (struct device*) ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct device *dev, int ch, u32 desc_hdr)
{
	struct talitos_private *priv = FUNC1(dev);
	int i;

	if (!desc_hdr)
		desc_hdr = FUNC2(priv->chan[ch].reg + TALITOS_DESCBUF);

	switch (desc_hdr & DESC_HDR_SEL0_MASK) {
	case DESC_HDR_SEL0_AFEU:
		FUNC0(dev, "AFEUISR 0x%08x_%08x\n",
			FUNC2(priv->reg_afeu + TALITOS_EUISR),
			FUNC2(priv->reg_afeu + TALITOS_EUISR_LO));
		break;
	case DESC_HDR_SEL0_DEU:
		FUNC0(dev, "DEUISR 0x%08x_%08x\n",
			FUNC2(priv->reg_deu + TALITOS_EUISR),
			FUNC2(priv->reg_deu + TALITOS_EUISR_LO));
		break;
	case DESC_HDR_SEL0_MDEUA:
	case DESC_HDR_SEL0_MDEUB:
		FUNC0(dev, "MDEUISR 0x%08x_%08x\n",
			FUNC2(priv->reg_mdeu + TALITOS_EUISR),
			FUNC2(priv->reg_mdeu + TALITOS_EUISR_LO));
		break;
	case DESC_HDR_SEL0_RNG:
		FUNC0(dev, "RNGUISR 0x%08x_%08x\n",
			FUNC2(priv->reg_rngu + TALITOS_ISR),
			FUNC2(priv->reg_rngu + TALITOS_ISR_LO));
		break;
	case DESC_HDR_SEL0_PKEU:
		FUNC0(dev, "PKEUISR 0x%08x_%08x\n",
			FUNC2(priv->reg_pkeu + TALITOS_EUISR),
			FUNC2(priv->reg_pkeu + TALITOS_EUISR_LO));
		break;
	case DESC_HDR_SEL0_AESU:
		FUNC0(dev, "AESUISR 0x%08x_%08x\n",
			FUNC2(priv->reg_aesu + TALITOS_EUISR),
			FUNC2(priv->reg_aesu + TALITOS_EUISR_LO));
		break;
	case DESC_HDR_SEL0_CRCU:
		FUNC0(dev, "CRCUISR 0x%08x_%08x\n",
			FUNC2(priv->reg_crcu + TALITOS_EUISR),
			FUNC2(priv->reg_crcu + TALITOS_EUISR_LO));
		break;
	case DESC_HDR_SEL0_KEU:
		FUNC0(dev, "KEUISR 0x%08x_%08x\n",
			FUNC2(priv->reg_pkeu + TALITOS_EUISR),
			FUNC2(priv->reg_pkeu + TALITOS_EUISR_LO));
		break;
	}

	switch (desc_hdr & DESC_HDR_SEL1_MASK) {
	case DESC_HDR_SEL1_MDEUA:
	case DESC_HDR_SEL1_MDEUB:
		FUNC0(dev, "MDEUISR 0x%08x_%08x\n",
			FUNC2(priv->reg_mdeu + TALITOS_EUISR),
			FUNC2(priv->reg_mdeu + TALITOS_EUISR_LO));
		break;
	case DESC_HDR_SEL1_CRCU:
		FUNC0(dev, "CRCUISR 0x%08x_%08x\n",
			FUNC2(priv->reg_crcu + TALITOS_EUISR),
			FUNC2(priv->reg_crcu + TALITOS_EUISR_LO));
		break;
	}

	for (i = 0; i < 8; i++)
		FUNC0(dev, "DESCBUF 0x%08x_%08x\n",
			FUNC2(priv->chan[ch].reg + TALITOS_DESCBUF + 8*i),
			FUNC2(priv->chan[ch].reg + TALITOS_DESCBUF_LO + 8*i));
}