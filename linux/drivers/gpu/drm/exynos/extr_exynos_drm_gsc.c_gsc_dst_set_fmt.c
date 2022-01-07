
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gsc_context {int dev; } ;


 int DRM_DEV_DEBUG_KMS (int ,char*,int) ;
 int GSC_IN_TILE_C_16x8 ;
 int GSC_OUT_CHROMA_ORDER_CBCR ;
 int GSC_OUT_CHROMA_ORDER_CRCB ;
 int GSC_OUT_CHROMA_ORDER_MASK ;
 int GSC_OUT_CHROM_STRIDE_SEL_MASK ;
 int GSC_OUT_CON ;
 int GSC_OUT_FORMAT_MASK ;
 int GSC_OUT_GLOBAL_ALPHA (int) ;
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
 int gsc_read (int ) ;
 int gsc_write (int,int ) ;

__attribute__((used)) static void gsc_dst_set_fmt(struct gsc_context *ctx, u32 fmt, bool tiled)
{
 u32 cfg;

 DRM_DEV_DEBUG_KMS(ctx->dev, "fmt[0x%x]\n", fmt);

 cfg = gsc_read(GSC_OUT_CON);
 cfg &= ~(GSC_OUT_RGB_TYPE_MASK | GSC_OUT_YUV422_1P_ORDER_MASK |
   GSC_OUT_CHROMA_ORDER_MASK | GSC_OUT_FORMAT_MASK |
   GSC_OUT_CHROM_STRIDE_SEL_MASK | GSC_OUT_RB_SWAP_MASK |
   GSC_OUT_GLOBAL_ALPHA_MASK);

 switch (fmt) {
 case 136:
  cfg |= GSC_OUT_RGB565;
  break;
 case 142:
 case 133:
  cfg |= (GSC_OUT_XRGB8888 | GSC_OUT_GLOBAL_ALPHA(0xff));
  break;
 case 141:
  cfg |= (GSC_OUT_XRGB8888 | GSC_OUT_RB_SWAP);
  break;
 case 130:
  cfg |= (GSC_OUT_YUV422_1P |
   GSC_OUT_YUV422_1P_ORDER_LSB_Y |
   GSC_OUT_CHROMA_ORDER_CBCR);
  break;
 case 128:
  cfg |= (GSC_OUT_YUV422_1P |
   GSC_OUT_YUV422_1P_ORDER_LSB_Y |
   GSC_OUT_CHROMA_ORDER_CRCB);
  break;
 case 135:
  cfg |= (GSC_OUT_YUV422_1P |
   GSC_OUT_YUV422_1P_OEDER_LSB_C |
   GSC_OUT_CHROMA_ORDER_CBCR);
  break;
 case 134:
  cfg |= (GSC_OUT_YUV422_1P |
   GSC_OUT_YUV422_1P_OEDER_LSB_C |
   GSC_OUT_CHROMA_ORDER_CRCB);
  break;
 case 138:
  cfg |= (GSC_OUT_CHROMA_ORDER_CRCB | GSC_OUT_YUV420_2P);
  break;
 case 137:
  cfg |= (GSC_OUT_CHROMA_ORDER_CRCB | GSC_OUT_YUV422_2P);
  break;
 case 131:
  cfg |= GSC_OUT_YUV422_3P;
  break;
 case 132:
  cfg |= (GSC_OUT_CHROMA_ORDER_CBCR | GSC_OUT_YUV420_3P);
  break;
 case 129:
  cfg |= (GSC_OUT_CHROMA_ORDER_CRCB | GSC_OUT_YUV420_3P);
  break;
 case 140:
  cfg |= (GSC_OUT_CHROMA_ORDER_CBCR | GSC_OUT_YUV420_2P);
  break;
 case 139:
  cfg |= (GSC_OUT_CHROMA_ORDER_CBCR | GSC_OUT_YUV422_2P);
  break;
 }

 if (tiled)
  cfg |= (GSC_IN_TILE_C_16x8 | GSC_OUT_TILE_MODE);

 gsc_write(cfg, GSC_OUT_CON);
}
