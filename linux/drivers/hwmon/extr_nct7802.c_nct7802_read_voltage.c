
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nct7802_data {int access_lock; int regmap; } ;


 int * REG_VOLTAGE ;
 int ** REG_VOLTAGE_LIMIT_LSB ;
 int * REG_VOLTAGE_LIMIT_MSB ;
 int** REG_VOLTAGE_LIMIT_MSB_SHIFT ;
 int REG_VOLTAGE_LOW ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned int* nct7802_vmul ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int nct7802_read_voltage(struct nct7802_data *data, int nr, int index)
{
 unsigned int v1, v2;
 int ret;

 mutex_lock(&data->access_lock);
 if (index == 0) {
  ret = regmap_read(data->regmap, REG_VOLTAGE[nr], &v1);
  if (ret < 0)
   goto abort;
  ret = regmap_read(data->regmap, REG_VOLTAGE_LOW, &v2);
  if (ret < 0)
   goto abort;
  ret = ((v1 << 2) | (v2 >> 6)) * nct7802_vmul[nr];
 } else {
  int shift = 8 - REG_VOLTAGE_LIMIT_MSB_SHIFT[index - 1][nr];

  ret = regmap_read(data->regmap,
      REG_VOLTAGE_LIMIT_LSB[index - 1][nr], &v1);
  if (ret < 0)
   goto abort;
  ret = regmap_read(data->regmap, REG_VOLTAGE_LIMIT_MSB[nr],
      &v2);
  if (ret < 0)
   goto abort;
  ret = (v1 | ((v2 << shift) & 0x300)) * nct7802_vmul[nr];
 }
abort:
 mutex_unlock(&data->access_lock);
 return ret;
}
