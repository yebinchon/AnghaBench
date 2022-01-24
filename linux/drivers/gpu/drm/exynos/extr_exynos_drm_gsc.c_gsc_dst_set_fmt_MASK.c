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
struct gsc_context {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
#define  DRM_FORMAT_ARGB8888 142 
#define  DRM_FORMAT_BGRX8888 141 
#define  DRM_FORMAT_NV12 140 
#define  DRM_FORMAT_NV16 139 
#define  DRM_FORMAT_NV21 138 
#define  DRM_FORMAT_NV61 137 
#define  DRM_FORMAT_RGB565 136 
#define  DRM_FORMAT_UYVY 135 
#define  DRM_FORMAT_VYUY 134 
#define  DRM_FORMAT_XRGB8888 133 
#define  DRM_FORMAT_YUV420 132 
#define  DRM_FORMAT_YUV422 131 
#define  DRM_FORMAT_YUYV 130 
#define  DRM_FORMAT_YVU420 129 
#define  DRM_FORMAT_YVYU 128 
 int GSC_IN_TILE_C_16x8 ; 
 int GSC_OUT_CHROMA_ORDER_CBCR ; 
 int GSC_OUT_CHROMA_ORDER_CRCB ; 
 int GSC_OUT_CHROMA_ORDER_MASK ; 
 int GSC_OUT_CHROM_STRIDE_SEL_MASK ; 
 int /*<<< orphan*/  GSC_OUT_CON ; 
 int GSC_OUT_FORMAT_MASK ; 
 int FUNC1 (int) ; 
 int GSC_OUT_GLOBAL_ALPHA_MASK ; 
 int GSC_OUT_RB_SWAP ; 
 int GSC_OUT_RB_SWAP_MASK ; 
 int GSC_OUT_RGB565 ; 
 int GSC_OUT_RGB_TYPE_MASK ; 
 int GSC_OUT_TILE_MODE ; 
 int GSC_OUT_XRGB8888 ; 
 int GSC_OUT_YUV420_2P ; 
 int GSC_OUT_YUV420_3P ; 
 int GSC_OUT_YUV422_1P ; 
 int GSC_OUT_YUV422_1P_OEDER_LSB_C ; 
 int GSC_OUT_YUV422_1P_ORDER_LSB_Y ; 
 int GSC_OUT_YUV422_1P_ORDER_MASK ; 
 int GSC_OUT_YUV422_2P ; 
 int GSC_OUT_YUV422_3P ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct gsc_context *ctx, u32 fmt, bool tiled)
{
	u32 cfg;

	FUNC0(ctx->dev, "fmt[0x%x]\n", fmt);

	cfg = FUNC2(GSC_OUT_CON);
	cfg &= ~(GSC_OUT_RGB_TYPE_MASK | GSC_OUT_YUV422_1P_ORDER_MASK |
		 GSC_OUT_CHROMA_ORDER_MASK | GSC_OUT_FORMAT_MASK |
		 GSC_OUT_CHROM_STRIDE_SEL_MASK | GSC_OUT_RB_SWAP_MASK |
		 GSC_OUT_GLOBAL_ALPHA_MASK);

	switch (fmt) {
	case DRM_FORMAT_RGB565:
		cfg |= GSC_OUT_RGB565;
		break;
	case DRM_FORMAT_ARGB8888:
	case DRM_FORMAT_XRGB8888:
		cfg |= (GSC_OUT_XRGB8888 | FUNC1(0xff));
		break;
	case DRM_FORMAT_BGRX8888:
		cfg |= (GSC_OUT_XRGB8888 | GSC_OUT_RB_SWAP);
		break;
	case DRM_FORMAT_YUYV:
		cfg |= (GSC_OUT_YUV422_1P |
			GSC_OUT_YUV422_1P_ORDER_LSB_Y |
			GSC_OUT_CHROMA_ORDER_CBCR);
		break;
	case DRM_FORMAT_YVYU:
		cfg |= (GSC_OUT_YUV422_1P |
			GSC_OUT_YUV422_1P_ORDER_LSB_Y |
			GSC_OUT_CHROMA_ORDER_CRCB);
		break;
	case DRM_FORMAT_UYVY:
		cfg |= (GSC_OUT_YUV422_1P |
			GSC_OUT_YUV422_1P_OEDER_LSB_C |
			GSC_OUT_CHROMA_ORDER_CBCR);
		break;
	case DRM_FORMAT_VYUY:
		cfg |= (GSC_OUT_YUV422_1P |
			GSC_OUT_YUV422_1P_OEDER_LSB_C |
			GSC_OUT_CHROMA_ORDER_CRCB);
		break;
	case DRM_FORMAT_NV21:
		cfg |= (GSC_OUT_CHROMA_ORDER_CRCB | GSC_OUT_YUV420_2P);
		break;
	case DRM_FORMAT_NV61:
		cfg |= (GSC_OUT_CHROMA_ORDER_CRCB | GSC_OUT_YUV422_2P);
		break;
	case DRM_FORMAT_YUV422:
		cfg |= GSC_OUT_YUV422_3P;
		break;
	case DRM_FORMAT_YUV420:
		cfg |= (GSC_OUT_CHROMA_ORDER_CBCR | GSC_OUT_YUV420_3P);
		break;
	case DRM_FORMAT_YVU420:
		cfg |= (GSC_OUT_CHROMA_ORDER_CRCB | GSC_OUT_YUV420_3P);
		break;
	case DRM_FORMAT_NV12:
		cfg |= (GSC_OUT_CHROMA_ORDER_CBCR | GSC_OUT_YUV420_2P);
		break;
	case DRM_FORMAT_NV16:
		cfg |= (GSC_OUT_CHROMA_ORDER_CBCR | GSC_OUT_YUV422_2P);
		break;
	}

	if (tiled)
		cfg |= (GSC_IN_TILE_C_16x8 | GSC_OUT_TILE_MODE);

	FUNC3(cfg, GSC_OUT_CON);
}