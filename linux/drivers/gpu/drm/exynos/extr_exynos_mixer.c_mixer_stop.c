
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mixer_context {int dummy; } ;


 int MXR_STATUS ;
 int MXR_STATUS_REG_IDLE ;
 int MXR_STATUS_REG_RUN ;
 int mixer_reg_read (struct mixer_context*,int ) ;
 int mixer_reg_writemask (struct mixer_context*,int ,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void mixer_stop(struct mixer_context *ctx)
{
 int timeout = 20;

 mixer_reg_writemask(ctx, MXR_STATUS, 0, MXR_STATUS_REG_RUN);

 while (!(mixer_reg_read(ctx, MXR_STATUS) & MXR_STATUS_REG_IDLE) &&
   --timeout)
  usleep_range(10000, 12000);
}
