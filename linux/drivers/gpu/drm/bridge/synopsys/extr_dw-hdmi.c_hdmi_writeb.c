
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dw_hdmi {int reg_shift; int regm; } ;


 int regmap_write (int ,int,int ) ;

__attribute__((used)) static inline void hdmi_writeb(struct dw_hdmi *hdmi, u8 val, int offset)
{
 regmap_write(hdmi->regm, offset << hdmi->reg_shift, val);
}
