
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int u8 ;
struct dps310_data {int temp_raw; int regmap; } ;
typedef int s32 ;


 int DPS310_TMP_BASE ;
 int regmap_bulk_read (int ,int ,int*,int) ;
 int sign_extend32 (int,int) ;

__attribute__((used)) static int dps310_read_temp_ready(struct dps310_data *data)
{
 int rc;
 u8 val[3];
 s32 raw;

 rc = regmap_bulk_read(data->regmap, DPS310_TMP_BASE, val, sizeof(val));
 if (rc < 0)
  return rc;

 raw = (val[0] << 16) | (val[1] << 8) | val[2];
 data->temp_raw = sign_extend32(raw, 23);

 return 0;
}
