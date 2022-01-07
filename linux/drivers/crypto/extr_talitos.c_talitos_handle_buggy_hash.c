
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct talitos_ptr {int dummy; } ;
struct TYPE_2__ {int hdr; } ;
struct talitos_edesc {TYPE_1__ desc; } ;
struct talitos_ctx {int dev; } ;
typedef int padded_hash ;


 int DESC_HDR_MODE0_MDEU_PAD ;
 int DMA_TO_DEVICE ;
 int map_single_talitos_ptr (int ,struct talitos_ptr*,int,char*,int ) ;
 int pr_err_once (char*) ;

__attribute__((used)) static void talitos_handle_buggy_hash(struct talitos_ctx *ctx,
          struct talitos_edesc *edesc,
          struct talitos_ptr *ptr)
{
 static u8 padded_hash[64] = {
  0x80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 };

 pr_err_once("Bug in SEC1, padding ourself\n");
 edesc->desc.hdr &= ~DESC_HDR_MODE0_MDEU_PAD;
 map_single_talitos_ptr(ctx->dev, ptr, sizeof(padded_hash),
          (char *)padded_hash, DMA_TO_DEVICE);
}
