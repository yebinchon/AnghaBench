
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct platform_device {int dummy; } ;
struct i5k_amb_data {int amb_len; int amb_base; int amb_mmio; int * amb_present; } ;
struct TYPE_2__ {scalar_t__ fbd0; scalar_t__ err; } ;


 int DRVNAME ;
 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_1__* chipset_ids ;
 int i5k_amb_hwmon_init (struct platform_device*) ;
 int i5k_channel_probe (int *,scalar_t__) ;
 int i5k_find_amb_registers (struct i5k_amb_data*,scalar_t__) ;
 int ioremap_nocache (int ,int ) ;
 int iounmap (int ) ;
 int kfree (struct i5k_amb_data*) ;
 struct i5k_amb_data* kzalloc (int,int ) ;
 int platform_set_drvdata (struct platform_device*,struct i5k_amb_data*) ;
 int release_mem_region (int ,int ) ;
 struct resource* request_mem_region (int ,int ,int ) ;

__attribute__((used)) static int i5k_amb_probe(struct platform_device *pdev)
{
 struct i5k_amb_data *data;
 struct resource *reso;
 int i, res;

 data = kzalloc(sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;


 i = 0;
 do {
  res = i5k_find_amb_registers(data, chipset_ids[i].err);
  if (res == 0)
   break;
  i++;
 } while (chipset_ids[i].err);

 if (res)
  goto err;


 res = i5k_channel_probe(&data->amb_present[0], chipset_ids[i].fbd0);
 if (res)
  goto err;


 i5k_channel_probe(&data->amb_present[2], chipset_ids[i].fbd0 + 1);


 reso = request_mem_region(data->amb_base, data->amb_len, DRVNAME);
 if (!reso) {
  res = -EBUSY;
  goto err;
 }

 data->amb_mmio = ioremap_nocache(data->amb_base, data->amb_len);
 if (!data->amb_mmio) {
  res = -EBUSY;
  goto err_map_failed;
 }

 platform_set_drvdata(pdev, data);

 res = i5k_amb_hwmon_init(pdev);
 if (res)
  goto err_init_failed;

 return res;

err_init_failed:
 iounmap(data->amb_mmio);
err_map_failed:
 release_mem_region(data->amb_base, data->amb_len);
err:
 kfree(data);
 return res;
}
