
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct dw_hdmi {int reg_shift; int regm; } ;


 int regmap_read (int ,int,unsigned int*) ;

__attribute__((used)) static inline u8 hdmi_readb(struct dw_hdmi *hdmi, int offset)
{
 unsigned int val = 0;

 regmap_read(hdmi->regm, offset << hdmi->reg_shift, &val);

 return val;
}
