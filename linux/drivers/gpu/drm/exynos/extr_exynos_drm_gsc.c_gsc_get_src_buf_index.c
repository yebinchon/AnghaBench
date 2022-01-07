
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gsc_context {int dev; int id; } ;


 int DRM_DEV_DEBUG_KMS (int ,char*,int,...) ;
 int DRM_DEV_ERROR (int ,char*) ;
 int EINVAL ;
 int GSC_IN_BASE_ADDR_Y_MASK ;
 int GSC_IN_CURR_GET_INDEX (int) ;
 int GSC_MAX_SRC ;
 int gsc_read (int ) ;
 int gsc_src_set_buf_seq (struct gsc_context*,int,int) ;

__attribute__((used)) static int gsc_get_src_buf_index(struct gsc_context *ctx)
{
 u32 cfg, curr_index, i;
 u32 buf_id = GSC_MAX_SRC;

 DRM_DEV_DEBUG_KMS(ctx->dev, "gsc id[%d]\n", ctx->id);

 cfg = gsc_read(GSC_IN_BASE_ADDR_Y_MASK);
 curr_index = GSC_IN_CURR_GET_INDEX(cfg);

 for (i = curr_index; i < GSC_MAX_SRC; i++) {
  if (!((cfg >> i) & 0x1)) {
   buf_id = i;
   break;
  }
 }

 DRM_DEV_DEBUG_KMS(ctx->dev, "cfg[0x%x]curr_index[%d]buf_id[%d]\n", cfg,
     curr_index, buf_id);

 if (buf_id == GSC_MAX_SRC) {
  DRM_DEV_ERROR(ctx->dev, "failed to get in buffer index.\n");
  return -EINVAL;
 }

 gsc_src_set_buf_seq(ctx, buf_id, 0);

 return buf_id;
}
