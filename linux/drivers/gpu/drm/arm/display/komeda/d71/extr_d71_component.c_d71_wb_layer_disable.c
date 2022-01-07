
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct komeda_component {int reg; } ;


 int BLK_CONTROL ;
 int BLK_INPUT_ID0 ;
 int L_EN ;
 int malidp_write32 (int ,int ,int ) ;
 int malidp_write32_mask (int ,int ,int ,int ) ;

__attribute__((used)) static void d71_wb_layer_disable(struct komeda_component *c)
{
 malidp_write32(c->reg, BLK_INPUT_ID0, 0);
 malidp_write32_mask(c->reg, BLK_CONTROL, L_EN, 0);
}
