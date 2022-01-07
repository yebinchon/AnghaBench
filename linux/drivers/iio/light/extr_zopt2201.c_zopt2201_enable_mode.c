
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zopt2201_data {int client; } ;


 int ZOPT2201_MAIN_CTRL ;
 int ZOPT2201_MAIN_CTRL_LS_EN ;
 int ZOPT2201_MAIN_CTRL_LS_MODE ;
 int i2c_smbus_write_byte_data (int ,int ,int ) ;

__attribute__((used)) static int zopt2201_enable_mode(struct zopt2201_data *data, bool uvb_mode)
{
 u8 out = ZOPT2201_MAIN_CTRL_LS_EN;

 if (uvb_mode)
  out |= ZOPT2201_MAIN_CTRL_LS_MODE;

 return i2c_smbus_write_byte_data(data->client, ZOPT2201_MAIN_CTRL, out);
}
