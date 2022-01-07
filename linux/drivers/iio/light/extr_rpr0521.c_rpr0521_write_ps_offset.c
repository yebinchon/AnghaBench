
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpr0521_data {TYPE_1__* client; int regmap; } ;
typedef int buffer ;
typedef int __le16 ;
struct TYPE_2__ {int dev; } ;


 int RPR0521_REG_PS_OFFSET_LSB ;
 int cpu_to_le16 (int) ;
 int dev_err (int *,char*) ;
 int regmap_raw_write (int ,int ,int *,int) ;

__attribute__((used)) static int rpr0521_write_ps_offset(struct rpr0521_data *data, int offset)
{
 int ret;
 __le16 buffer;

 buffer = cpu_to_le16(offset & 0x3ff);
 ret = regmap_raw_write(data->regmap,
  RPR0521_REG_PS_OFFSET_LSB, &buffer, sizeof(buffer));

 if (ret < 0) {
  dev_err(&data->client->dev, "Failed to write PS OFFSET register\n");
  return ret;
 }

 return ret;
}
