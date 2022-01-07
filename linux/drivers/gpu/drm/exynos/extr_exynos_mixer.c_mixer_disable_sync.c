
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mixer_context {int dummy; } ;


 int MXR_STATUS ;
 int MXR_STATUS_SYNC_ENABLE ;
 int mixer_reg_writemask (struct mixer_context*,int ,int ,int ) ;

__attribute__((used)) static void mixer_disable_sync(struct mixer_context *ctx)
{
 mixer_reg_writemask(ctx, MXR_STATUS, 0, MXR_STATUS_SYNC_ENABLE);
}
