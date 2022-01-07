
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gsc_context {int dev; } ;


 int DRM_DEV_ERROR (int ,char*) ;
 int EBUSY ;
 int GSC_IN_BASE_ADDR_CB_MASK ;
 int GSC_IN_BASE_ADDR_CR_MASK ;
 int GSC_IN_BASE_ADDR_MASK ;
 int GSC_IN_BASE_ADDR_PINGPONG (int ) ;
 int GSC_IN_BASE_ADDR_Y_MASK ;
 int GSC_OUT_BASE_ADDR_CB_MASK ;
 int GSC_OUT_BASE_ADDR_CR_MASK ;
 int GSC_OUT_BASE_ADDR_MASK ;
 int GSC_OUT_BASE_ADDR_PINGPONG (int ) ;
 int GSC_OUT_BASE_ADDR_Y_MASK ;
 int GSC_RESET_TIMEOUT ;
 int GSC_SW_RESET ;
 int GSC_SW_RESET_SRESET ;
 int gsc_read (int ) ;
 int gsc_write (int,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int gsc_sw_reset(struct gsc_context *ctx)
{
 u32 cfg;
 int count = GSC_RESET_TIMEOUT;


 cfg = (GSC_SW_RESET_SRESET);
 gsc_write(cfg, GSC_SW_RESET);


 while (count--) {
  cfg = gsc_read(GSC_SW_RESET);
  if (!cfg)
   break;
  usleep_range(1000, 2000);
 }

 if (cfg) {
  DRM_DEV_ERROR(ctx->dev, "failed to reset gsc h/w.\n");
  return -EBUSY;
 }


 cfg = gsc_read(GSC_IN_BASE_ADDR_Y_MASK);
 cfg |= (GSC_IN_BASE_ADDR_MASK |
  GSC_IN_BASE_ADDR_PINGPONG(0));
 gsc_write(cfg, GSC_IN_BASE_ADDR_Y_MASK);
 gsc_write(cfg, GSC_IN_BASE_ADDR_CB_MASK);
 gsc_write(cfg, GSC_IN_BASE_ADDR_CR_MASK);

 cfg = gsc_read(GSC_OUT_BASE_ADDR_Y_MASK);
 cfg |= (GSC_OUT_BASE_ADDR_MASK |
  GSC_OUT_BASE_ADDR_PINGPONG(0));
 gsc_write(cfg, GSC_OUT_BASE_ADDR_Y_MASK);
 gsc_write(cfg, GSC_OUT_BASE_ADDR_CB_MASK);
 gsc_write(cfg, GSC_OUT_BASE_ADDR_CR_MASK);

 return 0;
}
