
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct via686a_data {int dummy; } ;


 int VIA686A_REG_CONFIG ;
 int VIA686A_REG_TEMP_MODE ;
 int VIA686A_TEMP_MODE_CONTINUOUS ;
 int VIA686A_TEMP_MODE_MASK ;
 int via686a_read_value (struct via686a_data*,int ) ;
 int via686a_update_fan_div (struct via686a_data*) ;
 int via686a_write_value (struct via686a_data*,int ,int) ;

__attribute__((used)) static void via686a_init_device(struct via686a_data *data)
{
 u8 reg;


 reg = via686a_read_value(data, VIA686A_REG_CONFIG);
 via686a_write_value(data, VIA686A_REG_CONFIG, (reg | 0x01) & 0x7F);


 reg = via686a_read_value(data, VIA686A_REG_TEMP_MODE);
 via686a_write_value(data, VIA686A_REG_TEMP_MODE,
       (reg & ~VIA686A_TEMP_MODE_MASK)
       | VIA686A_TEMP_MODE_CONTINUOUS);


 via686a_update_fan_div(data);
}
