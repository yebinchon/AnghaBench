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
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int chipset; } ;
struct nvkm_cstate {int* domain; } ;
struct nvkm_clk {int dummy; } ;
struct nv50_clk_hwsq {int dummy; } ;
struct TYPE_2__ {struct nvkm_subdev subdev; } ;
struct nv50_clk {TYPE_1__ base; struct nv50_clk_hwsq hwsq; } ;

/* Variables and functions */
 int ERANGE ; 
 scalar_t__ FUNC0 (int const) ; 
 int FUNC1 (int const,int const,int*) ; 
 int FUNC2 (struct nv50_clk*,int,int const,int*,int*,int*) ; 
 int FUNC3 (struct nv50_clk_hwsq*,struct nvkm_subdev*) ; 
 int /*<<< orphan*/  FUNC4 (struct nv50_clk_hwsq*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nv50_clk_hwsq*,int) ; 
 scalar_t__ FUNC6 (int const,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nv50_clk_hwsq*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nv50_clk_hwsq*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct nv50_clk_hwsq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  divs ; 
 int /*<<< orphan*/  fifo ; 
 int /*<<< orphan*/  mast ; 
 struct nv50_clk* FUNC10 (struct nvkm_clk*) ; 
 size_t nv_clk_src_core ; 
 size_t nv_clk_src_dom6 ; 
 int /*<<< orphan*/  nv_clk_src_hclk ; 
 int /*<<< orphan*/  nv_clk_src_hclkm3d2 ; 
 int /*<<< orphan*/  nv_clk_src_href ; 
 size_t nv_clk_src_shader ; 
 size_t nv_clk_src_vdec ; 
 int FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * nvpll ; 
 int FUNC12 (struct nv50_clk*,int) ; 
 int /*<<< orphan*/ * spll ; 

int
FUNC13(struct nvkm_clk *base, struct nvkm_cstate *cstate)
{
	struct nv50_clk *clk = FUNC10(base);
	struct nv50_clk_hwsq *hwsq = &clk->hwsq;
	struct nvkm_subdev *subdev = &clk->base.subdev;
	struct nvkm_device *device = subdev->device;
	const int shader = cstate->domain[nv_clk_src_shader];
	const int core = cstate->domain[nv_clk_src_core];
	const int vdec = cstate->domain[nv_clk_src_vdec];
	const int dom6 = cstate->domain[nv_clk_src_dom6];
	u32 mastm = 0, mastv = 0;
	u32 divsm = 0, divsv = 0;
	int N, M, P1, P2;
	int freq, out;

	/* prepare a hwsq script from which we'll perform the reclock */
	out = FUNC3(hwsq, subdev);
	if (out)
		return out;

	FUNC9(hwsq, fifo, 0x00000001); /* block fifo */
	FUNC5(hwsq, 8000);
	FUNC7(hwsq, 0x10, 0x00); /* disable fb */
	FUNC8(hwsq, 0x00, 0x01); /* wait for fb disabled */

	/* vdec: avoid modifying xpll until we know exactly how the other
	 * clock domains work, i suspect at least some of them can also be
	 * tied to xpll...
	 */
	if (vdec) {
		/* see how close we can get using nvclk as a source */
		freq = FUNC1(core, vdec, &P1);

		/* see how close we can get using xpll/hclk as a source */
		if (device->chipset != 0x98)
			out = FUNC12(clk, 0x004030);
		else
			out = FUNC11(&clk->base, nv_clk_src_hclkm3d2);
		out = FUNC1(out, vdec, &P2);

		/* select whichever gets us closest */
		if (FUNC0(vdec - freq) <= FUNC0(vdec - out)) {
			if (device->chipset != 0x98)
				mastv |= 0x00000c00;
			divsv |= P1 << 8;
		} else {
			mastv |= 0x00000800;
			divsv |= P2 << 8;
		}

		mastm |= 0x00000c00;
		divsm |= 0x00000700;
	}

	/* dom6: nfi what this is, but we're limited to various combinations
	 * of the host clock frequency
	 */
	if (dom6) {
		if (FUNC6(dom6, FUNC11(&clk->base, nv_clk_src_href))) {
			mastv |= 0x00000000;
		} else
		if (FUNC6(dom6, FUNC11(&clk->base, nv_clk_src_hclk))) {
			mastv |= 0x08000000;
		} else {
			freq = FUNC11(&clk->base, nv_clk_src_hclk) * 3;
			FUNC1(freq, dom6, &P1);

			mastv |= 0x0c000000;
			divsv |= P1;
		}

		mastm |= 0x0c000000;
		divsm |= 0x00000007;
	}

	/* vdec/dom6: switch to "safe" clocks temporarily, update dividers
	 * and then switch to target clocks
	 */
	FUNC4(hwsq, mast, mastm, 0x00000000);
	FUNC4(hwsq, divs, divsm, divsv);
	FUNC4(hwsq, mast, mastm, mastv);

	/* core/shader: disconnect nvclk/sclk from their PLLs (nvclk to dom6,
	 * sclk to hclk) before reprogramming
	 */
	if (device->chipset < 0x92)
		FUNC4(hwsq, mast, 0x001000b0, 0x00100080);
	else
		FUNC4(hwsq, mast, 0x000000b3, 0x00000081);

	/* core: for the moment at least, always use nvpll */
	freq = FUNC2(clk, 0x4028, core, &N, &M, &P1);
	if (freq == 0)
		return -ERANGE;

	FUNC4(hwsq, nvpll[0], 0xc03f0100,
				 0x80000000 | (P1 << 19) | (P1 << 16));
	FUNC4(hwsq, nvpll[1], 0x0000ffff, (N << 8) | M);

	/* shader: tie to nvclk if possible, otherwise use spll.  have to be
	 * very careful that the shader clock is at least twice the core, or
	 * some chipsets will be very unhappy.  i expect most or all of these
	 * cases will be handled by tying to nvclk, but it's possible there's
	 * corners
	 */
	if (P1-- && shader == (core << 1)) {
		FUNC4(hwsq, spll[0], 0xc03f0100, (P1 << 19) | (P1 << 16));
		FUNC4(hwsq, mast, 0x00100033, 0x00000023);
	} else {
		freq = FUNC2(clk, 0x4020, shader, &N, &M, &P1);
		if (freq == 0)
			return -ERANGE;

		FUNC4(hwsq, spll[0], 0xc03f0100,
					0x80000000 | (P1 << 19) | (P1 << 16));
		FUNC4(hwsq, spll[1], 0x0000ffff, (N << 8) | M);
		FUNC4(hwsq, mast, 0x00100033, 0x00000033);
	}

	/* restore normal operation */
	FUNC7(hwsq, 0x10, 0x01); /* enable fb */
	FUNC8(hwsq, 0x00, 0x00); /* wait for fb enabled */
	FUNC9(hwsq, fifo, 0x00000000); /* un-block fifo */
	return 0;
}