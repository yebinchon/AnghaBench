
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
 int dev_err (int *,char*) ;
 int le16_to_cpu (int ) ;
 int regmap_bulk_read (int ,int ,int *,int) ;

__attribute__((used)) static int rpr0521_read_ps_offset(struct rpr0521_data *data, int *offset)
{
 int ret;
 __le16 buffer;

 ret = regmap_bulk_read(data->regmap,
  RPR0521_REG_PS_OFFSET_LSB, &buffer, sizeof(buffer));

 if (ret < 0) {
  dev_err(&data->client->dev, "Failed to read PS OFFSET register\n");
  return ret;
 }
 *offset = le16_to_cpu(buffer);

 return ret;
}
