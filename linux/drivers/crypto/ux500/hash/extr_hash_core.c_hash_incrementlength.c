
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ low_word; int high_word; } ;
struct TYPE_4__ {TYPE_1__ length; } ;
struct hash_req_ctx {TYPE_2__ state; } ;



__attribute__((used)) static void hash_incrementlength(struct hash_req_ctx *ctx, u32 incr)
{
 ctx->state.length.low_word += incr;


 if (ctx->state.length.low_word < incr)
  ctx->state.length.high_word++;
}
