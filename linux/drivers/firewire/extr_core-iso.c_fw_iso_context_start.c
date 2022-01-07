
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fw_iso_context {TYPE_2__* card; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int (* start_iso ) (struct fw_iso_context*,int,int,int) ;} ;


 int stub1 (struct fw_iso_context*,int,int,int) ;

int fw_iso_context_start(struct fw_iso_context *ctx,
    int cycle, int sync, int tags)
{
 return ctx->card->driver->start_iso(ctx, cycle, sync, tags);
}
