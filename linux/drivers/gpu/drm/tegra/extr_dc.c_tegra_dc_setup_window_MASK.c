#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u32 ;
struct tegra_plane {struct tegra_dc* dc; } ;
struct TYPE_8__ {unsigned long value; int mode; } ;
struct TYPE_6__ {unsigned int x; unsigned int y; unsigned int w; unsigned int h; } ;
struct TYPE_5__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  x; int /*<<< orphan*/  y; } ;
struct tegra_dc_window {unsigned int format; int bits_per_pixel; unsigned int swap; unsigned int* base; int* stride; scalar_t__ bottom_up; TYPE_4__ tiling; TYPE_2__ src; TYPE_1__ dst; } ;
struct tegra_dc {TYPE_3__* soc; } ;
struct TYPE_7__ {scalar_t__ has_legacy_blending; scalar_t__ supports_block_linear; } ;

/* Variables and functions */
 unsigned int COLOR_EXPAND ; 
 unsigned int CSC_ENABLE ; 
 int /*<<< orphan*/  DC_WINBUF_ADDR_H_OFFSET ; 
 int /*<<< orphan*/  DC_WINBUF_ADDR_V_OFFSET ; 
 int /*<<< orphan*/  DC_WINBUF_START_ADDR ; 
 int /*<<< orphan*/  DC_WINBUF_START_ADDR_U ; 
 int /*<<< orphan*/  DC_WINBUF_START_ADDR_V ; 
 int /*<<< orphan*/  DC_WINBUF_SURFACE_KIND ; 
 unsigned int DC_WINBUF_SURFACE_KIND_BLOCK ; 
 unsigned int FUNC0 (unsigned long) ; 
 unsigned int DC_WINBUF_SURFACE_KIND_PITCH ; 
 unsigned int DC_WINBUF_SURFACE_KIND_TILED ; 
 int /*<<< orphan*/  DC_WIN_BUFFER_ADDR_MODE ; 
 unsigned int DC_WIN_BUFFER_ADDR_MODE_LINEAR ; 
 unsigned int DC_WIN_BUFFER_ADDR_MODE_LINEAR_UV ; 
 unsigned int DC_WIN_BUFFER_ADDR_MODE_TILE ; 
 unsigned int DC_WIN_BUFFER_ADDR_MODE_TILE_UV ; 
 int /*<<< orphan*/  DC_WIN_BUF_STRIDE ; 
 int /*<<< orphan*/  DC_WIN_BYTE_SWAP ; 
 int /*<<< orphan*/  DC_WIN_COLOR_DEPTH ; 
 int /*<<< orphan*/  DC_WIN_CSC_KUB ; 
 int /*<<< orphan*/  DC_WIN_CSC_KUG ; 
 int /*<<< orphan*/  DC_WIN_CSC_KUR ; 
 int /*<<< orphan*/  DC_WIN_CSC_KVB ; 
 int /*<<< orphan*/  DC_WIN_CSC_KVG ; 
 int /*<<< orphan*/  DC_WIN_CSC_KVR ; 
 int /*<<< orphan*/  DC_WIN_CSC_KYRGB ; 
 int /*<<< orphan*/  DC_WIN_CSC_YOF ; 
 int /*<<< orphan*/  DC_WIN_DDA_INC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DC_WIN_H_INITIAL_DDA ; 
 int /*<<< orphan*/  DC_WIN_LINE_STRIDE ; 
 int /*<<< orphan*/  DC_WIN_POSITION ; 
 int /*<<< orphan*/  DC_WIN_PRESCALED_SIZE ; 
 int /*<<< orphan*/  DC_WIN_SIZE ; 
 int /*<<< orphan*/  DC_WIN_UV_BUF_STRIDE ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  DC_WIN_V_INITIAL_DDA ; 
 int /*<<< orphan*/  DC_WIN_WIN_OPTIONS ; 
 unsigned int FUNC3 (unsigned int) ; 
 unsigned int H_FILTER ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (unsigned int) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
#define  TEGRA_BO_TILING_MODE_BLOCK 130 
#define  TEGRA_BO_TILING_MODE_PITCH 129 
#define  TEGRA_BO_TILING_MODE_TILED 128 
 unsigned int FUNC7 (unsigned int) ; 
 unsigned int V_DIRECTION ; 
 unsigned int V_FILTER ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC9 (unsigned int) ; 
 unsigned int FUNC10 (int /*<<< orphan*/ ) ; 
 unsigned int WIN_ENABLE ; 
 unsigned int FUNC11 (unsigned int,int /*<<< orphan*/ ,int,unsigned int) ; 
 unsigned int FUNC12 (unsigned int) ; 
 int FUNC13 (unsigned int,int*) ; 
 int /*<<< orphan*/  FUNC14 (struct tegra_plane*,struct tegra_dc_window const*) ; 
 int /*<<< orphan*/  FUNC15 (struct tegra_plane*) ; 
 scalar_t__ FUNC16 (struct tegra_plane*,struct tegra_dc_window const*) ; 
 scalar_t__ FUNC17 (struct tegra_plane*,struct tegra_dc_window const*) ; 
 int /*<<< orphan*/  FUNC18 (struct tegra_plane*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC19(struct tegra_plane *plane,
				  const struct tegra_dc_window *window)
{
	unsigned h_offset, v_offset, h_size, v_size, h_dda, v_dda, bpp;
	struct tegra_dc *dc = plane->dc;
	bool yuv, planar;
	u32 value;

	/*
	 * For YUV planar modes, the number of bytes per pixel takes into
	 * account only the luma component and therefore is 1.
	 */
	yuv = FUNC13(window->format, &planar);
	if (!yuv)
		bpp = window->bits_per_pixel / 8;
	else
		bpp = planar ? 1 : 2;

	FUNC18(plane, window->format, DC_WIN_COLOR_DEPTH);
	FUNC18(plane, window->swap, DC_WIN_BYTE_SWAP);

	value = FUNC8(window->dst.y) | FUNC4(window->dst.x);
	FUNC18(plane, value, DC_WIN_POSITION);

	value = FUNC10(window->dst.h) | FUNC6(window->dst.w);
	FUNC18(plane, value, DC_WIN_SIZE);

	h_offset = window->src.x * bpp;
	v_offset = window->src.y;
	h_size = window->src.w * bpp;
	v_size = window->src.h;

	value = FUNC9(v_size) | FUNC5(h_size);
	FUNC18(plane, value, DC_WIN_PRESCALED_SIZE);

	/*
	 * For DDA computations the number of bytes per pixel for YUV planar
	 * modes needs to take into account all Y, U and V components.
	 */
	if (yuv && planar)
		bpp = 2;

	h_dda = FUNC11(window->src.w, window->dst.w, false, bpp);
	v_dda = FUNC11(window->src.h, window->dst.h, true, bpp);

	value = FUNC7(v_dda) | FUNC3(h_dda);
	FUNC18(plane, value, DC_WIN_DDA_INC);

	h_dda = FUNC12(window->src.x);
	v_dda = FUNC12(window->src.y);

	FUNC18(plane, h_dda, DC_WIN_H_INITIAL_DDA);
	FUNC18(plane, v_dda, DC_WIN_V_INITIAL_DDA);

	FUNC18(plane, 0, DC_WIN_UV_BUF_STRIDE);
	FUNC18(plane, 0, DC_WIN_BUF_STRIDE);

	FUNC18(plane, window->base[0], DC_WINBUF_START_ADDR);

	if (yuv && planar) {
		FUNC18(plane, window->base[1], DC_WINBUF_START_ADDR_U);
		FUNC18(plane, window->base[2], DC_WINBUF_START_ADDR_V);
		value = window->stride[1] << 16 | window->stride[0];
		FUNC18(plane, value, DC_WIN_LINE_STRIDE);
	} else {
		FUNC18(plane, window->stride[0], DC_WIN_LINE_STRIDE);
	}

	if (window->bottom_up)
		v_offset += window->src.h - 1;

	FUNC18(plane, h_offset, DC_WINBUF_ADDR_H_OFFSET);
	FUNC18(plane, v_offset, DC_WINBUF_ADDR_V_OFFSET);

	if (dc->soc->supports_block_linear) {
		unsigned long height = window->tiling.value;

		switch (window->tiling.mode) {
		case TEGRA_BO_TILING_MODE_PITCH:
			value = DC_WINBUF_SURFACE_KIND_PITCH;
			break;

		case TEGRA_BO_TILING_MODE_TILED:
			value = DC_WINBUF_SURFACE_KIND_TILED;
			break;

		case TEGRA_BO_TILING_MODE_BLOCK:
			value = FUNC0(height) |
				DC_WINBUF_SURFACE_KIND_BLOCK;
			break;
		}

		FUNC18(plane, value, DC_WINBUF_SURFACE_KIND);
	} else {
		switch (window->tiling.mode) {
		case TEGRA_BO_TILING_MODE_PITCH:
			value = DC_WIN_BUFFER_ADDR_MODE_LINEAR_UV |
				DC_WIN_BUFFER_ADDR_MODE_LINEAR;
			break;

		case TEGRA_BO_TILING_MODE_TILED:
			value = DC_WIN_BUFFER_ADDR_MODE_TILE_UV |
				DC_WIN_BUFFER_ADDR_MODE_TILE;
			break;

		case TEGRA_BO_TILING_MODE_BLOCK:
			/*
			 * No need to handle this here because ->atomic_check
			 * will already have filtered it out.
			 */
			break;
		}

		FUNC18(plane, value, DC_WIN_BUFFER_ADDR_MODE);
	}

	value = WIN_ENABLE;

	if (yuv) {
		/* setup default colorspace conversion coefficients */
		FUNC18(plane, 0x00f0, DC_WIN_CSC_YOF);
		FUNC18(plane, 0x012a, DC_WIN_CSC_KYRGB);
		FUNC18(plane, 0x0000, DC_WIN_CSC_KUR);
		FUNC18(plane, 0x0198, DC_WIN_CSC_KVR);
		FUNC18(plane, 0x039b, DC_WIN_CSC_KUG);
		FUNC18(plane, 0x032f, DC_WIN_CSC_KVG);
		FUNC18(plane, 0x0204, DC_WIN_CSC_KUB);
		FUNC18(plane, 0x0000, DC_WIN_CSC_KVB);

		value |= CSC_ENABLE;
	} else if (window->bits_per_pixel < 24) {
		value |= COLOR_EXPAND;
	}

	if (window->bottom_up)
		value |= V_DIRECTION;

	if (FUNC16(plane, window)) {
		/*
		 * Enable horizontal 6-tap filter and set filtering
		 * coefficients to the default values defined in TRM.
		 */
		FUNC18(plane, 0x00008000, FUNC1(0));
		FUNC18(plane, 0x3e087ce1, FUNC1(1));
		FUNC18(plane, 0x3b117ac1, FUNC1(2));
		FUNC18(plane, 0x591b73aa, FUNC1(3));
		FUNC18(plane, 0x57256d9a, FUNC1(4));
		FUNC18(plane, 0x552f668b, FUNC1(5));
		FUNC18(plane, 0x73385e8b, FUNC1(6));
		FUNC18(plane, 0x72435583, FUNC1(7));
		FUNC18(plane, 0x714c4c8b, FUNC1(8));
		FUNC18(plane, 0x70554393, FUNC1(9));
		FUNC18(plane, 0x715e389b, FUNC1(10));
		FUNC18(plane, 0x71662faa, FUNC1(11));
		FUNC18(plane, 0x536d25ba, FUNC1(12));
		FUNC18(plane, 0x55731bca, FUNC1(13));
		FUNC18(plane, 0x387a11d9, FUNC1(14));
		FUNC18(plane, 0x3c7c08f1, FUNC1(15));

		value |= H_FILTER;
	}

	if (FUNC17(plane, window)) {
		unsigned int i, k;

		/*
		 * Enable vertical 2-tap filter and set filtering
		 * coefficients to the default values defined in TRM.
		 */
		for (i = 0, k = 128; i < 16; i++, k -= 8)
			FUNC18(plane, k, FUNC2(i));

		value |= V_FILTER;
	}

	FUNC18(plane, value, DC_WIN_WIN_OPTIONS);

	if (dc->soc->has_legacy_blending)
		FUNC15(plane);
	else
		FUNC14(plane, window);
}