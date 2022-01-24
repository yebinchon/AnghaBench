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
typedef  int uint32_t ;
typedef  int u32 ;
struct TYPE_2__ {int pixel_format; } ;
struct mdp_format {scalar_t__ chroma_sample; TYPE_1__ base; } ;
struct mdp5_smp {int /*<<< orphan*/  blk_size; } ;
struct mdp5_kms {int /*<<< orphan*/  cfg; } ;
struct drm_format_info {int num_planes; int hsub; int* cpp; } ;

/* Variables and functions */
 scalar_t__ CHROMA_FULL ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int DRM_FORMAT_NV24 ; 
 struct drm_format_info* FUNC1 (int) ; 
 struct mdp5_kms* FUNC2 (struct mdp5_smp*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 

uint32_t FUNC5(struct mdp5_smp *smp,
		const struct mdp_format *format,
		u32 width, bool hdecim)
{
	const struct drm_format_info *info = FUNC1(format->base.pixel_format);
	struct mdp5_kms *mdp5_kms = FUNC2(smp);
	int rev = FUNC3(mdp5_kms->cfg);
	int i, hsub, nplanes, nlines;
	u32 fmt = format->base.pixel_format;
	uint32_t blkcfg = 0;

	nplanes = info->num_planes;
	hsub = info->hsub;

	/* different if BWC (compressed framebuffer?) enabled: */
	nlines = 2;

	/* Newer MDPs have split/packing logic, which fetches sub-sampled
	 * U and V components (splits them from Y if necessary) and packs
	 * them together, writes to SMP using a single client.
	 */
	if ((rev > 0) && (format->chroma_sample > CHROMA_FULL)) {
		fmt = DRM_FORMAT_NV24;
		nplanes = 2;

		/* if decimation is enabled, HW decimates less on the
		 * sub sampled chroma components
		 */
		if (hdecim && (hsub > 1))
			hsub = 1;
	}

	for (i = 0; i < nplanes; i++) {
		int n, fetch_stride, cpp;

		cpp = info->cpp[i];
		fetch_stride = width * cpp / (i ? hsub : 1);

		n = FUNC0(fetch_stride * nlines, smp->blk_size);

		/* for hw rev v1.00 */
		if (rev == 0)
			n = FUNC4(n);

		blkcfg |= (n << (8 * i));
	}

	return blkcfg;
}