
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct adxl372_state {int regmap; } ;
typedef int buf ;
typedef int __be32 ;


 int ADXL372_STATUS_1 ;
 int be32_to_cpu (int ) ;
 int regmap_bulk_read (int ,int ,int *,int) ;

__attribute__((used)) static int adxl372_get_status(struct adxl372_state *st,
         u8 *status1, u8 *status2,
         u16 *fifo_entries)
{
 __be32 buf;
 u32 val;
 int ret;


 ret = regmap_bulk_read(st->regmap, ADXL372_STATUS_1,
          &buf, sizeof(buf));
 if (ret < 0)
  return ret;

 val = be32_to_cpu(buf);

 *status1 = (val >> 24) & 0x0F;
 *status2 = (val >> 16) & 0x0F;




 *fifo_entries = val & 0x3FF;

 return ret;
}
