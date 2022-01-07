
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct bma150_data {scalar_t__ mode; int client; } ;


 scalar_t__ BMA150_MODE_NORMAL ;
 int BMA150_SLEEP_MSK ;
 int BMA150_SLEEP_POS ;
 int BMA150_SLEEP_REG ;
 int BMA150_WAKE_UP_MSK ;
 int BMA150_WAKE_UP_POS ;
 int BMA150_WAKE_UP_REG ;
 int bma150_set_reg_bits (int ,scalar_t__,int ,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int bma150_set_mode(struct bma150_data *bma150, u8 mode)
{
 int error;

 error = bma150_set_reg_bits(bma150->client, mode, BMA150_WAKE_UP_POS,
    BMA150_WAKE_UP_MSK, BMA150_WAKE_UP_REG);
 if (error)
  return error;

 error = bma150_set_reg_bits(bma150->client, mode, BMA150_SLEEP_POS,
    BMA150_SLEEP_MSK, BMA150_SLEEP_REG);
 if (error)
  return error;

 if (mode == BMA150_MODE_NORMAL)
  usleep_range(2000, 2100);

 bma150->mode = mode;
 return 0;
}
