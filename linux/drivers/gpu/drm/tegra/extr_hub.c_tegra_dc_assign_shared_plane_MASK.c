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
struct TYPE_2__ {int /*<<< orphan*/  index; } ;
struct tegra_plane {TYPE_1__ base; } ;
struct tegra_dc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DC_WIN_CORE_IHUB_LINEBUF_CONFIG ; 
 int /*<<< orphan*/  DC_WIN_CORE_IHUB_THREAD_GROUP ; 
 int /*<<< orphan*/  DC_WIN_CORE_IHUB_WGRP_FETCH_METER ; 
 int /*<<< orphan*/  DC_WIN_CORE_IHUB_WGRP_LATENCY_CTLA ; 
 int /*<<< orphan*/  DC_WIN_CORE_IHUB_WGRP_LATENCY_CTLB ; 
 int /*<<< orphan*/  DC_WIN_CORE_IHUB_WGRP_POOL_CONFIG ; 
 int /*<<< orphan*/  DC_WIN_CORE_PRECOMP_WGRP_PIPE_METER ; 
 int LATENCY_CTL_MODE_ENABLE ; 
 int FUNC0 (int) ; 
 int MODE_FOUR_LINES ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int THREAD_GROUP_ENABLE ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int THREAD_NUM_MASK ; 
 int WATERMARK_MASK ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_dc*,struct tegra_plane*) ; 
 int FUNC6 (struct tegra_plane*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tegra_plane*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tegra_plane*) ; 
 int FUNC9 (struct tegra_plane*,struct tegra_dc*) ; 
 int /*<<< orphan*/  FUNC10 (struct tegra_plane*) ; 

__attribute__((used)) static void FUNC11(struct tegra_dc *dc,
					 struct tegra_plane *plane)
{
	u32 value;
	int err;

	if (!FUNC5(dc, plane)) {
		err = FUNC9(plane, dc);
		if (err < 0)
			return;
	}

	value = FUNC6(plane, DC_WIN_CORE_IHUB_LINEBUF_CONFIG);
	value |= MODE_FOUR_LINES;
	FUNC7(plane, value, DC_WIN_CORE_IHUB_LINEBUF_CONFIG);

	value = FUNC6(plane, DC_WIN_CORE_IHUB_WGRP_FETCH_METER);
	value = FUNC3(1);
	FUNC7(plane, value, DC_WIN_CORE_IHUB_WGRP_FETCH_METER);

	/* disable watermark */
	value = FUNC6(plane, DC_WIN_CORE_IHUB_WGRP_LATENCY_CTLA);
	value &= ~LATENCY_CTL_MODE_ENABLE;
	FUNC7(plane, value, DC_WIN_CORE_IHUB_WGRP_LATENCY_CTLA);

	value = FUNC6(plane, DC_WIN_CORE_IHUB_WGRP_LATENCY_CTLB);
	value |= WATERMARK_MASK;
	FUNC7(plane, value, DC_WIN_CORE_IHUB_WGRP_LATENCY_CTLB);

	/* pipe meter */
	value = FUNC6(plane, DC_WIN_CORE_PRECOMP_WGRP_PIPE_METER);
	value = FUNC2(0) | FUNC1(0);
	FUNC7(plane, value, DC_WIN_CORE_PRECOMP_WGRP_PIPE_METER);

	/* mempool entries */
	value = FUNC6(plane, DC_WIN_CORE_IHUB_WGRP_POOL_CONFIG);
	value = FUNC0(0x331);
	FUNC7(plane, value, DC_WIN_CORE_IHUB_WGRP_POOL_CONFIG);

	value = FUNC6(plane, DC_WIN_CORE_IHUB_THREAD_GROUP);
	value &= ~THREAD_NUM_MASK;
	value |= FUNC4(plane->base.index);
	value |= THREAD_GROUP_ENABLE;
	FUNC7(plane, value, DC_WIN_CORE_IHUB_THREAD_GROUP);

	FUNC10(plane);
	FUNC8(plane);
}