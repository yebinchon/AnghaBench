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
struct ipu_di {int dummy; } ;
struct ipu_dc_priv {scalar_t__ dc_reg; } ;
struct ipu_dc {scalar_t__ di; scalar_t__ base; struct ipu_dc_priv* priv; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  DC_EVT_EOF ; 
 int /*<<< orphan*/  DC_EVT_EOFIELD ; 
 int /*<<< orphan*/  DC_EVT_EOL ; 
 int /*<<< orphan*/  DC_EVT_NEW_ADDR ; 
 int /*<<< orphan*/  DC_EVT_NEW_CHAN ; 
 int /*<<< orphan*/  DC_EVT_NEW_DATA ; 
 int /*<<< orphan*/  DC_EVT_NF ; 
 int /*<<< orphan*/  DC_EVT_NFIELD ; 
 int /*<<< orphan*/  DC_EVT_NL ; 
 scalar_t__ DC_WR_CH_ADDR ; 
 scalar_t__ DC_WR_CH_CONF ; 
 int DC_WR_CH_CONF_FIELD_MODE ; 
 int /*<<< orphan*/  NULL_WAVE ; 
 int /*<<< orphan*/  SYNC_WAVE ; 
 int /*<<< orphan*/  WRG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ipu_dc*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ipu_dc*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct ipu_di*) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

int FUNC8(struct ipu_dc *dc, struct ipu_di *di, bool interlaced,
		u32 bus_format, u32 width)
{
	struct ipu_dc_priv *priv = dc->priv;
	int addr, sync;
	u32 reg = 0;
	int map;

	dc->di = FUNC5(di);

	map = FUNC4(bus_format);

	/*
	 * In interlaced mode we need more counters to create the asymmetric
	 * per-field VSYNC signals. The pixel active signal synchronising DC
	 * to DI moves to signal generator #6 (see ipu-di.c). In progressive
	 * mode counter #5 is used.
	 */
	sync = interlaced ? 6 : 5;

	/* Reserve 5 microcode template words for each DI */
	if (dc->di)
		addr = 5;
	else
		addr = 0;

	if (interlaced) {
		FUNC2(dc, DC_EVT_NL, addr, 3);
		FUNC2(dc, DC_EVT_EOL, addr, 2);
		FUNC2(dc, DC_EVT_NEW_DATA, addr, 1);

		/* Init template microcode */
		FUNC3(dc, addr, FUNC1(0), 0, map, SYNC_WAVE, 0, sync, 1);
	} else {
		FUNC2(dc, DC_EVT_NL, addr + 2, 3);
		FUNC2(dc, DC_EVT_EOL, addr + 3, 2);
		FUNC2(dc, DC_EVT_NEW_DATA, addr + 1, 1);

		/* Init template microcode */
		FUNC3(dc, addr + 2, FUNC1(0), 0, map, SYNC_WAVE, 8, sync, 1);
		FUNC3(dc, addr + 3, FUNC1(0), 0, map, SYNC_WAVE, 4, sync, 0);
		FUNC3(dc, addr + 4, WRG, 0, map, NULL_WAVE, 0, 0, 1);
		FUNC3(dc, addr + 1, FUNC1(0), 0, map, SYNC_WAVE, 0, sync, 1);
	}

	FUNC2(dc, DC_EVT_NF, 0, 0);
	FUNC2(dc, DC_EVT_NFIELD, 0, 0);
	FUNC2(dc, DC_EVT_EOF, 0, 0);
	FUNC2(dc, DC_EVT_EOFIELD, 0, 0);
	FUNC2(dc, DC_EVT_NEW_CHAN, 0, 0);
	FUNC2(dc, DC_EVT_NEW_ADDR, 0, 0);

	reg = FUNC6(dc->base + DC_WR_CH_CONF);
	if (interlaced)
		reg |= DC_WR_CH_CONF_FIELD_MODE;
	else
		reg &= ~DC_WR_CH_CONF_FIELD_MODE;
	FUNC7(reg, dc->base + DC_WR_CH_CONF);

	FUNC7(0x0, dc->base + DC_WR_CH_ADDR);
	FUNC7(width, priv->dc_reg + FUNC0(dc->di));

	return 0;
}