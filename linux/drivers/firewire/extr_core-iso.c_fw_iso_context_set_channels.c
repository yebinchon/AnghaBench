
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct fw_iso_context {TYPE_2__* card; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int (* set_iso_channels ) (struct fw_iso_context*,int *) ;} ;


 int stub1 (struct fw_iso_context*,int *) ;

int fw_iso_context_set_channels(struct fw_iso_context *ctx, u64 *channels)
{
 return ctx->card->driver->set_iso_channels(ctx, channels);
}
