
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hash_ctx {TYPE_2__* device; } ;
struct TYPE_3__ {int complete; } ;
struct TYPE_4__ {TYPE_1__ dma; } ;


 int complete (int *) ;

__attribute__((used)) static void hash_dma_callback(void *data)
{
 struct hash_ctx *ctx = data;

 complete(&ctx->device->dma.complete);
}
