
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct decon_context {int dummy; } ;


 int DECON_SHADOWCON ;
 int SHADOWCON_PROTECT_MASK ;
 int decon_set_bits (struct decon_context*,int ,int ,int ) ;

__attribute__((used)) static void decon_shadow_protect(struct decon_context *ctx, bool protect)
{
 decon_set_bits(ctx, DECON_SHADOWCON, SHADOWCON_PROTECT_MASK,
         protect ? ~0 : 0);
}
