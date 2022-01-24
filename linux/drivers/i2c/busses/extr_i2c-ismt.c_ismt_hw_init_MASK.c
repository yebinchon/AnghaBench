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
struct ismt_priv {scalar_t__ smba; int /*<<< orphan*/  io_rng_dma; TYPE_1__* pci_dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int ISMT_DESC_ENTRIES ; 
 int ISMT_MCTRL_MEIE ; 
 int ISMT_MDS_MASK ; 
 scalar_t__ ISMT_MSTR_MCTRL ; 
 scalar_t__ ISMT_MSTR_MDBA ; 
 scalar_t__ ISMT_MSTR_MDS ; 
 scalar_t__ ISMT_MSTR_MSTS ; 
 scalar_t__ ISMT_SPGT ; 
#define  ISMT_SPGT_SPD_100K 131 
#define  ISMT_SPGT_SPD_1M 130 
#define  ISMT_SPGT_SPD_400K 129 
#define  ISMT_SPGT_SPD_80K 128 
 int ISMT_SPGT_SPD_MASK ; 
 int bus_speed ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct ismt_priv *priv)
{
	u32 val;
	struct device *dev = &priv->pci_dev->dev;

	/* initialize the Master Descriptor Base Address (MDBA) */
	FUNC4(priv->io_rng_dma, priv->smba + ISMT_MSTR_MDBA);

	/* initialize the Master Control Register (MCTRL) */
	FUNC3(ISMT_MCTRL_MEIE, priv->smba + ISMT_MSTR_MCTRL);

	/* initialize the Master Status Register (MSTS) */
	FUNC3(0, priv->smba + ISMT_MSTR_MSTS);

	/* initialize the Master Descriptor Size (MDS) */
	val = FUNC2(priv->smba + ISMT_MSTR_MDS);
	FUNC3((val & ~ISMT_MDS_MASK) | (ISMT_DESC_ENTRIES - 1),
		priv->smba + ISMT_MSTR_MDS);

	/*
	 * Set the SMBus speed (could use this for slow HW debuggers)
	 */

	val = FUNC2(priv->smba + ISMT_SPGT);

	switch (bus_speed) {
	case 0:
		break;

	case 80:
		FUNC0(dev, "Setting SMBus clock to 80 kHz\n");
		FUNC3(((val & ~ISMT_SPGT_SPD_MASK) | ISMT_SPGT_SPD_80K),
			priv->smba + ISMT_SPGT);
		break;

	case 100:
		FUNC0(dev, "Setting SMBus clock to 100 kHz\n");
		FUNC3(((val & ~ISMT_SPGT_SPD_MASK) | ISMT_SPGT_SPD_100K),
			priv->smba + ISMT_SPGT);
		break;

	case 400:
		FUNC0(dev, "Setting SMBus clock to 400 kHz\n");
		FUNC3(((val & ~ISMT_SPGT_SPD_MASK) | ISMT_SPGT_SPD_400K),
			priv->smba + ISMT_SPGT);
		break;

	case 1000:
		FUNC0(dev, "Setting SMBus clock to 1000 kHz\n");
		FUNC3(((val & ~ISMT_SPGT_SPD_MASK) | ISMT_SPGT_SPD_1M),
			priv->smba + ISMT_SPGT);
		break;

	default:
		FUNC1(dev, "Invalid SMBus clock speed, only 0, 80, 100, 400, and 1000 are valid\n");
		break;
	}

	val = FUNC2(priv->smba + ISMT_SPGT);

	switch (val & ISMT_SPGT_SPD_MASK) {
	case ISMT_SPGT_SPD_80K:
		bus_speed = 80;
		break;
	case ISMT_SPGT_SPD_100K:
		bus_speed = 100;
		break;
	case ISMT_SPGT_SPD_400K:
		bus_speed = 400;
		break;
	case ISMT_SPGT_SPD_1M:
		bus_speed = 1000;
		break;
	}
	FUNC0(dev, "SMBus clock is running at %d kHz\n", bus_speed);
}