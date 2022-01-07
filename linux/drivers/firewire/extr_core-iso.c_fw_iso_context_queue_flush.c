
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fw_iso_context {TYPE_2__* card; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int (* flush_queue_iso ) (struct fw_iso_context*) ;} ;


 int stub1 (struct fw_iso_context*) ;

void fw_iso_context_queue_flush(struct fw_iso_context *ctx)
{
 ctx->card->driver->flush_queue_iso(ctx);
}
