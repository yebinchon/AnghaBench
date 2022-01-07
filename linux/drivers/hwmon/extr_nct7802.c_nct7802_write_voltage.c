
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nct7802_data {int access_lock; int regmap; } ;


 unsigned long DIV_ROUND_CLOSEST (unsigned long,int) ;
 int ** REG_VOLTAGE_LIMIT_LSB ;
 int * REG_VOLTAGE_LIMIT_MSB ;
 int** REG_VOLTAGE_LIMIT_MSB_SHIFT ;
 unsigned long clamp_val (unsigned long,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int* nct7802_vmul ;
 int regmap_update_bits (int ,int ,int,unsigned long) ;
 int regmap_write (int ,int ,unsigned long) ;

__attribute__((used)) static int nct7802_write_voltage(struct nct7802_data *data, int nr, int index,
     unsigned long voltage)
{
 int shift = 8 - REG_VOLTAGE_LIMIT_MSB_SHIFT[index - 1][nr];
 int err;

 voltage = clamp_val(voltage, 0, 0x3ff * nct7802_vmul[nr]);
 voltage = DIV_ROUND_CLOSEST(voltage, nct7802_vmul[nr]);

 mutex_lock(&data->access_lock);
 err = regmap_write(data->regmap,
      REG_VOLTAGE_LIMIT_LSB[index - 1][nr],
      voltage & 0xff);
 if (err < 0)
  goto abort;

 err = regmap_update_bits(data->regmap, REG_VOLTAGE_LIMIT_MSB[nr],
     0x0300 >> shift, (voltage & 0x0300) >> shift);
abort:
 mutex_unlock(&data->access_lock);
 return err;
}
