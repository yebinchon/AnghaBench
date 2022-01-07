
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w83627hf_data {int type; int vid; int vrm_ovt; int* sens; } ;
struct platform_device {int dev; } ;
typedef enum chips { ____Placeholder_chips } chips ;


 int* BIT_SCFG1 ;
 int* BIT_SCFG2 ;
 int W83627HF_REG_TEMP2_CONFIG ;
 int W83627HF_REG_TEMP3_CONFIG ;
 int W83627THF_REG_VRM_OVT_CFG ;
 int W83781D_REG_CHIPID ;
 int W83781D_REG_CONFIG ;
 int W83781D_REG_I2C_ADDR ;
 int W83781D_REG_I2C_SUBADDR ;
 int W83781D_REG_SCFG1 ;
 int W83781D_REG_SCFG2 ;
 int W83781D_REG_VBAT ;
 int W83781D_REG_VID_FANDIV ;
 int dev_warn (int *,char*) ;
 int force_i2c ;
 scalar_t__ init ;
 struct w83627hf_data* platform_get_drvdata (struct platform_device*) ;
 int w83627hf ;
 int w83627hf_read_value (struct w83627hf_data*,int ) ;
 int w83627hf_write_value (struct w83627hf_data*,int ,int) ;
 int w83627thf ;
 int w83627thf_read_gpio5 (struct platform_device*) ;
 int w83637hf ;
 int w83687thf ;
 int w83687thf_read_vid (struct platform_device*) ;
 int w83697hf ;

__attribute__((used)) static void w83627hf_init_device(struct platform_device *pdev)
{
 struct w83627hf_data *data = platform_get_drvdata(pdev);
 int i;
 enum chips type = data->type;
 u8 tmp;




 if (type == w83627hf) {
  w83627hf_write_value(data, W83781D_REG_I2C_SUBADDR, 0x89);
  w83627hf_write_value(data, W83781D_REG_I2C_ADDR, force_i2c);
 }


 if (type == w83627hf || type == w83637hf) {
  int lo = w83627hf_read_value(data, W83781D_REG_VID_FANDIV);
  int hi = w83627hf_read_value(data, W83781D_REG_CHIPID);
  data->vid = (lo & 0x0f) | ((hi & 0x01) << 4);
 } else if (type == w83627thf) {
  data->vid = w83627thf_read_gpio5(pdev);
 } else if (type == w83687thf) {
  data->vid = w83687thf_read_vid(pdev);
 }


 if (type == w83627thf || type == w83637hf || type == w83687thf) {
  data->vrm_ovt =
   w83627hf_read_value(data, W83627THF_REG_VRM_OVT_CFG);
 }

 tmp = w83627hf_read_value(data, W83781D_REG_SCFG1);
 for (i = 1; i <= 3; i++) {
  if (!(tmp & BIT_SCFG1[i - 1])) {
   data->sens[i - 1] = 4;
  } else {
   if (w83627hf_read_value
       (data,
        W83781D_REG_SCFG2) & BIT_SCFG2[i - 1])
    data->sens[i - 1] = 1;
   else
    data->sens[i - 1] = 2;
  }
  if ((type == w83697hf) && (i == 2))
   break;
 }

 if(init) {

  tmp = w83627hf_read_value(data, W83627HF_REG_TEMP2_CONFIG);
  if (tmp & 0x01) {
   dev_warn(&pdev->dev, "Enabling temp2, readings "
     "might not make sense\n");
   w83627hf_write_value(data, W83627HF_REG_TEMP2_CONFIG,
    tmp & 0xfe);
  }


  if (type != w83697hf) {
   tmp = w83627hf_read_value(data,
    W83627HF_REG_TEMP3_CONFIG);
   if (tmp & 0x01) {
    dev_warn(&pdev->dev, "Enabling temp3, "
      "readings might not make sense\n");
    w83627hf_write_value(data,
     W83627HF_REG_TEMP3_CONFIG, tmp & 0xfe);
   }
  }
 }


 w83627hf_write_value(data, W83781D_REG_CONFIG,
       (w83627hf_read_value(data,
      W83781D_REG_CONFIG) & 0xf7)
       | 0x01);


 tmp = w83627hf_read_value(data, W83781D_REG_VBAT);
 if (!(tmp & 0x01))
  w83627hf_write_value(data, W83781D_REG_VBAT, tmp | 0x01);
}
