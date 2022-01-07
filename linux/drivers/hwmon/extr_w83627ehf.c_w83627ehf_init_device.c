
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w83627ehf_data {int have_temp; char** temp_label; size_t* temp_src; int* temp_type; int * reg_temp_config; } ;
typedef enum kinds { ____Placeholder_kinds } kinds ;


 int NUM_REG_TEMP ;
 int W83627EHF_REG_CONFIG ;
 int W83627EHF_REG_DIODE ;
 int W83627EHF_REG_VBAT ;
 scalar_t__ strncmp (char const*,char*,int) ;

 int w83627ehf_read_value (struct w83627ehf_data*,int ) ;
 int w83627ehf_write_value (struct w83627ehf_data*,int ,int) ;


__attribute__((used)) static inline void w83627ehf_init_device(struct w83627ehf_data *data,
         enum kinds kind)
{
 int i;
 u8 tmp, diode;


 tmp = w83627ehf_read_value(data, W83627EHF_REG_CONFIG);
 if (!(tmp & 0x01))
  w83627ehf_write_value(data, W83627EHF_REG_CONFIG,
          tmp | 0x01);


 for (i = 0; i < NUM_REG_TEMP; i++) {
  if (!(data->have_temp & (1 << i)))
   continue;
  if (!data->reg_temp_config[i])
   continue;
  tmp = w83627ehf_read_value(data,
        data->reg_temp_config[i]);
  if (tmp & 0x01)
   w83627ehf_write_value(data,
           data->reg_temp_config[i],
           tmp & 0xfe);
 }


 tmp = w83627ehf_read_value(data, W83627EHF_REG_VBAT);
 if (!(tmp & 0x01))
  w83627ehf_write_value(data, W83627EHF_REG_VBAT, tmp | 0x01);


 switch (kind) {
 case 129:
  diode = w83627ehf_read_value(data, W83627EHF_REG_DIODE);
  break;
 case 128:
  diode = 0x00;
  break;
 default:
  diode = 0x70;
 }
 for (i = 0; i < 3; i++) {
  const char *label = ((void*)0);

  if (data->temp_label)
   label = data->temp_label[data->temp_src[i]];


  if (label && strncmp(label, "PECI", 4) == 0)
   data->temp_type[i] = 6;
  else if (label && strncmp(label, "AMD", 3) == 0)
   data->temp_type[i] = 5;
  else if ((tmp & (0x02 << i)))
   data->temp_type[i] = (diode & (0x10 << i)) ? 1 : 3;
  else
   data->temp_type[i] = 4;
 }
}
