
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sc; } ;
struct fw_iso_context {int type; int channel; int speed; size_t header_size; void* callback_data; TYPE_1__ callback; struct fw_card* card; } ;
struct fw_card {TYPE_2__* driver; } ;
typedef int fw_iso_callback_t ;
struct TYPE_4__ {struct fw_iso_context* (* allocate_iso_context ) (struct fw_card*,int,int,size_t) ;} ;


 scalar_t__ IS_ERR (struct fw_iso_context*) ;
 struct fw_iso_context* stub1 (struct fw_card*,int,int,size_t) ;

struct fw_iso_context *fw_iso_context_create(struct fw_card *card,
  int type, int channel, int speed, size_t header_size,
  fw_iso_callback_t callback, void *callback_data)
{
 struct fw_iso_context *ctx;

 ctx = card->driver->allocate_iso_context(card,
       type, channel, header_size);
 if (IS_ERR(ctx))
  return ctx;

 ctx->card = card;
 ctx->type = type;
 ctx->channel = channel;
 ctx->speed = speed;
 ctx->header_size = header_size;
 ctx->callback.sc = callback;
 ctx->callback_data = callback_data;

 return ctx;
}
