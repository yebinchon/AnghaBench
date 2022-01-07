
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drv2667_data {int frequency; int regmap; TYPE_1__* client; int page; } ;
struct TYPE_2__ {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int DRV2667_PAGE ;
 int DRV2667_PAGE_0 ;
 int DRV2667_PAGE_1 ;
 int dev_err (int *,char*,int) ;
 int drv2667_init_regs ;
 int drv2667_page1_init ;
 int drv2667_set_waveform_freq (struct drv2667_data*) ;
 int regmap_register_patch (int ,int ,int ) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int drv2667_init(struct drv2667_data *haptics)
{
 int error;


 haptics->frequency = 195;
 haptics->page = DRV2667_PAGE_1;

 error = regmap_register_patch(haptics->regmap,
          drv2667_init_regs,
          ARRAY_SIZE(drv2667_init_regs));
 if (error) {
  dev_err(&haptics->client->dev,
   "Failed to write init registers: %d\n",
   error);
  return error;
 }

 error = regmap_write(haptics->regmap, DRV2667_PAGE, haptics->page);
 if (error) {
  dev_err(&haptics->client->dev, "Failed to set page: %d\n",
   error);
  goto error_out;
 }

 error = drv2667_set_waveform_freq(haptics);
 if (error)
  goto error_page;

 error = regmap_register_patch(haptics->regmap,
          drv2667_page1_init,
          ARRAY_SIZE(drv2667_page1_init));
 if (error) {
  dev_err(&haptics->client->dev,
   "Failed to write page registers: %d\n",
   error);
  return error;
 }

 error = regmap_write(haptics->regmap, DRV2667_PAGE, DRV2667_PAGE_0);
 return error;

error_page:
 regmap_write(haptics->regmap, DRV2667_PAGE, DRV2667_PAGE_0);
error_out:
 return error;
}
