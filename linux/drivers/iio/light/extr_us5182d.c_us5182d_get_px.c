
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us5182d_data {int client; } ;


 int US5182D_REG_PDL ;
 int i2c_smbus_read_word_data (int ,int ) ;
 int us5182d_px_enable (struct us5182d_data*) ;

__attribute__((used)) static int us5182d_get_px(struct us5182d_data *data)
{
 int ret;

 ret = us5182d_px_enable(data);
 if (ret < 0)
  return ret;

 return i2c_smbus_read_word_data(data->client,
     US5182D_REG_PDL);
}
