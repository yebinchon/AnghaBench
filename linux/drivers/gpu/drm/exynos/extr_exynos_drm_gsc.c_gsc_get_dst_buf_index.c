
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gsc_context {int dev; int id; } ;


 int DRM_DEV_DEBUG_KMS (int ,char*,int,...) ;
 int DRM_DEV_ERROR (int ,char*) ;
 int EINVAL ;
 int GSC_MAX_DST ;
 int GSC_OUT_BASE_ADDR_Y_MASK ;
 int GSC_OUT_CURR_GET_INDEX (int) ;
 int gsc_dst_set_buf_seq (struct gsc_context*,int,int) ;
 int gsc_read (int ) ;

__attribute__((used)) static int gsc_get_dst_buf_index(struct gsc_context *ctx)
{
 u32 cfg, curr_index, i;
 u32 buf_id = GSC_MAX_DST;

 DRM_DEV_DEBUG_KMS(ctx->dev, "gsc id[%d]\n", ctx->id);

 cfg = gsc_read(GSC_OUT_BASE_ADDR_Y_MASK);
 curr_index = GSC_OUT_CURR_GET_INDEX(cfg);

 for (i = curr_index; i < GSC_MAX_DST; i++) {
  if (!((cfg >> i) & 0x1)) {
   buf_id = i;
   break;
  }
 }

 if (buf_id == GSC_MAX_DST) {
  DRM_DEV_ERROR(ctx->dev, "failed to get out buffer index.\n");
  return -EINVAL;
 }

 gsc_dst_set_buf_seq(ctx, buf_id, 0);

 DRM_DEV_DEBUG_KMS(ctx->dev, "cfg[0x%x]curr_index[%d]buf_id[%d]\n", cfg,
     curr_index, buf_id);

 return buf_id;
}
