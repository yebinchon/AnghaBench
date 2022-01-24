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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct acx565akm_panel {int enabled; char* name; int has_bc; int has_cabc; int /*<<< orphan*/  reset_gpio; int /*<<< orphan*/  revision; TYPE_1__* spi; int /*<<< orphan*/ * display_id; int /*<<< orphan*/  model; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  MIPID_VER_ACX565AKM ; 
 int /*<<< orphan*/  MIPID_VER_L4F00311 ; 
 int /*<<< orphan*/  MIPID_VER_LPH8923 ; 
 int /*<<< orphan*/  MIPID_VER_LS041Y3 ; 
 int /*<<< orphan*/  MIPI_DCS_GET_DISPLAY_ID ; 
 int /*<<< orphan*/  MIPI_DCS_GET_DISPLAY_STATUS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct acx565akm_panel*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct acx565akm_panel *lcd)
{
	__be32 value;
	u32 status;
	int ret = 0;

	/*
	 * After being taken out of reset the panel needs 5ms before the first
	 * command can be sent.
	 */
	FUNC5(lcd->reset_gpio, 1);
	FUNC6(5000, 10000);

	FUNC1(lcd, MIPI_DCS_GET_DISPLAY_STATUS, (u8 *)&value, 4);
	status = FUNC0(value);
	lcd->enabled = (status & (1 << 17)) && (status & (1 << 10));

	FUNC2(&lcd->spi->dev,
		"LCD panel %s by bootloader (status 0x%04x)\n",
		lcd->enabled ? "enabled" : "disabled ", status);

	FUNC1(lcd, MIPI_DCS_GET_DISPLAY_ID, lcd->display_id, 3);
	FUNC2(&lcd->spi->dev, "MIPI display ID: %02x%02x%02x\n",
		lcd->display_id[0], lcd->display_id[1], lcd->display_id[2]);

	switch (lcd->display_id[0]) {
	case 0x10:
		lcd->model = MIPID_VER_ACX565AKM;
		lcd->name = "acx565akm";
		lcd->has_bc = 1;
		lcd->has_cabc = 1;
		break;
	case 0x29:
		lcd->model = MIPID_VER_L4F00311;
		lcd->name = "l4f00311";
		break;
	case 0x45:
		lcd->model = MIPID_VER_LPH8923;
		lcd->name = "lph8923";
		break;
	case 0x83:
		lcd->model = MIPID_VER_LS041Y3;
		lcd->name = "ls041y3";
		break;
	default:
		lcd->name = "unknown";
		FUNC3(&lcd->spi->dev, "unknown display ID\n");
		ret = -ENODEV;
		goto done;
	}

	lcd->revision = lcd->display_id[1];

	FUNC4(&lcd->spi->dev, "%s rev %02x panel detected\n",
		 lcd->name, lcd->revision);

done:
	if (!lcd->enabled)
		FUNC5(lcd->reset_gpio, 0);

	return ret;
}