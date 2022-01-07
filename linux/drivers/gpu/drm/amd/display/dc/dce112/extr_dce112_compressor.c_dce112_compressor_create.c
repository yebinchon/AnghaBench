
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct compressor {int dummy; } ;
struct dce112_compressor {struct compressor base; } ;
struct dc_context {int dummy; } ;


 int GFP_KERNEL ;
 int dce112_compressor_construct (struct dce112_compressor*,struct dc_context*) ;
 struct dce112_compressor* kzalloc (int,int ) ;

struct compressor *dce112_compressor_create(struct dc_context *ctx)
{
 struct dce112_compressor *cp110 =
  kzalloc(sizeof(struct dce112_compressor), GFP_KERNEL);

 if (!cp110)
  return ((void*)0);

 dce112_compressor_construct(cp110, ctx);
 return &cp110->base;
}
