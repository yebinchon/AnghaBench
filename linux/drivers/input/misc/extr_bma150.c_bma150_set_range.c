
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bma150_data {int client; } ;


 int BMA150_RANGE_MSK ;
 int BMA150_RANGE_POS ;
 int BMA150_RANGE_REG ;
 int bma150_set_reg_bits (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int bma150_set_range(struct bma150_data *bma150, u8 range)
{
 return bma150_set_reg_bits(bma150->client, range, BMA150_RANGE_POS,
    BMA150_RANGE_MSK, BMA150_RANGE_REG);
}
