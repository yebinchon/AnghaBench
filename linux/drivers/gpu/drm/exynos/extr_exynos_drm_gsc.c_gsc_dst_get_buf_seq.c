
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gsc_context {int dev; } ;


 int DRM_DEV_DEBUG_KMS (int ,char*,int) ;
 int GSC_OUT_BASE_ADDR_Y_MASK ;
 int GSC_REG_SZ ;
 int gsc_read (int ) ;

__attribute__((used)) static int gsc_dst_get_buf_seq(struct gsc_context *ctx)
{
 u32 cfg, i, buf_num = GSC_REG_SZ;
 u32 mask = 0x00000001;

 cfg = gsc_read(GSC_OUT_BASE_ADDR_Y_MASK);

 for (i = 0; i < GSC_REG_SZ; i++)
  if (cfg & (mask << i))
   buf_num--;

 DRM_DEV_DEBUG_KMS(ctx->dev, "buf_num[%d]\n", buf_num);

 return buf_num;
}
