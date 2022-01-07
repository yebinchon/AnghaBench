
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bma150_data {int client; } ;


 int BMA150_HIGH_G_DUR_REG ;
 int BMA150_HIGH_G_EN_MSK ;
 int BMA150_HIGH_G_EN_POS ;
 int BMA150_HIGH_G_EN_REG ;
 int BMA150_HIGH_G_HYST_MSK ;
 int BMA150_HIGH_G_HYST_POS ;
 int BMA150_HIGH_G_HYST_REG ;
 int BMA150_HIGH_G_THRES_REG ;
 int bma150_set_reg_bits (int ,int,int ,int ,int ) ;
 int bma150_write_byte (int ,int ,int) ;

__attribute__((used)) static int bma150_set_high_g_interrupt(struct bma150_data *bma150,
     u8 enable, u8 hyst, u8 dur, u8 thres)
{
 int error;

 error = bma150_set_reg_bits(bma150->client, hyst,
    BMA150_HIGH_G_HYST_POS, BMA150_HIGH_G_HYST_MSK,
    BMA150_HIGH_G_HYST_REG);
 if (error)
  return error;

 error = bma150_write_byte(bma150->client,
    BMA150_HIGH_G_DUR_REG, dur);
 if (error)
  return error;

 error = bma150_write_byte(bma150->client,
    BMA150_HIGH_G_THRES_REG, thres);
 if (error)
  return error;

 return bma150_set_reg_bits(bma150->client, !!enable,
    BMA150_HIGH_G_EN_POS, BMA150_HIGH_G_EN_MSK,
    BMA150_HIGH_G_EN_REG);
}
