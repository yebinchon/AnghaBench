
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bma150_data {int client; } ;


 int BMA150_SW_RES_MSK ;
 int BMA150_SW_RES_POS ;
 int BMA150_SW_RES_REG ;
 int bma150_set_reg_bits (int ,int,int ,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int bma150_soft_reset(struct bma150_data *bma150)
{
 int error;

 error = bma150_set_reg_bits(bma150->client, 1, BMA150_SW_RES_POS,
    BMA150_SW_RES_MSK, BMA150_SW_RES_REG);
 if (error)
  return error;

 usleep_range(2000, 2100);
 return 0;
}
