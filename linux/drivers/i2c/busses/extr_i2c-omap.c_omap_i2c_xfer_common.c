
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_i2c_dev {int latency; int dev; int (* set_mpu_wkup_lat ) (int ,int) ;} ;
struct i2c_msg {int dummy; } ;
struct i2c_adapter {int dummy; } ;


 struct omap_i2c_dev* i2c_get_adapdata (struct i2c_adapter*) ;
 int omap_i2c_wait_for_bb (struct omap_i2c_dev*) ;
 int omap_i2c_wait_for_bb_valid (struct omap_i2c_dev*) ;
 int omap_i2c_xfer_msg (struct i2c_adapter*,struct i2c_msg*,int,int) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int stub1 (int ,int) ;
 int stub2 (int ,int) ;

__attribute__((used)) static int
omap_i2c_xfer_common(struct i2c_adapter *adap, struct i2c_msg msgs[], int num,
       bool polling)
{
 struct omap_i2c_dev *omap = i2c_get_adapdata(adap);
 int i;
 int r;

 r = pm_runtime_get_sync(omap->dev);
 if (r < 0)
  goto out;

 r = omap_i2c_wait_for_bb_valid(omap);
 if (r < 0)
  goto out;

 r = omap_i2c_wait_for_bb(omap);
 if (r < 0)
  goto out;

 if (omap->set_mpu_wkup_lat != ((void*)0))
  omap->set_mpu_wkup_lat(omap->dev, omap->latency);

 for (i = 0; i < num; i++) {
  r = omap_i2c_xfer_msg(adap, &msgs[i], (i == (num - 1)),
          polling);
  if (r != 0)
   break;
 }

 if (r == 0)
  r = num;

 omap_i2c_wait_for_bb(omap);

 if (omap->set_mpu_wkup_lat != ((void*)0))
  omap->set_mpu_wkup_lat(omap->dev, -1);

out:
 pm_runtime_mark_last_busy(omap->dev);
 pm_runtime_put_autosuspend(omap->dev);
 return r;
}
