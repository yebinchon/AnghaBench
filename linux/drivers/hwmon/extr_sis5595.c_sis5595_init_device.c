
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sis5595_data {int dummy; } ;


 int SIS5595_REG_CONFIG ;
 int sis5595_read_value (struct sis5595_data*,int ) ;
 int sis5595_write_value (struct sis5595_data*,int ,int) ;

__attribute__((used)) static void sis5595_init_device(struct sis5595_data *data)
{
 u8 config = sis5595_read_value(data, SIS5595_REG_CONFIG);
 if (!(config & 0x01))
  sis5595_write_value(data, SIS5595_REG_CONFIG,
    (config & 0xf7) | 0x01);
}
