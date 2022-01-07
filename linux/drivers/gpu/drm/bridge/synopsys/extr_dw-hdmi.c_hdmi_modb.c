
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dw_hdmi {unsigned int reg_shift; int regm; } ;


 int regmap_update_bits (int ,unsigned int,int ,int ) ;

__attribute__((used)) static void hdmi_modb(struct dw_hdmi *hdmi, u8 data, u8 mask, unsigned reg)
{
 regmap_update_bits(hdmi->regm, reg << hdmi->reg_shift, mask, data);
}
