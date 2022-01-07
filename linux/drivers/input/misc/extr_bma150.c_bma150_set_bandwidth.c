
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bma150_data {int client; } ;


 int BMA150_BANDWIDTH_MSK ;
 int BMA150_BANDWIDTH_POS ;
 int BMA150_BANDWIDTH_REG ;
 int bma150_set_reg_bits (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int bma150_set_bandwidth(struct bma150_data *bma150, u8 bw)
{
 return bma150_set_reg_bits(bma150->client, bw, BMA150_BANDWIDTH_POS,
    BMA150_BANDWIDTH_MSK, BMA150_BANDWIDTH_REG);
}
