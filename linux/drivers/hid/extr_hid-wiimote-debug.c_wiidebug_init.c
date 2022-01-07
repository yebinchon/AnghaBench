
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wiimote_debug {void* eeprom; void* drm; struct wiimote_data* wdata; } ;
struct TYPE_4__ {int lock; } ;
struct wiimote_data {TYPE_2__ state; struct wiimote_debug* debug; TYPE_1__* hdev; } ;
struct TYPE_3__ {int debug_dir; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int S_IRUSR ;
 void* debugfs_create_file (char*,int ,int ,struct wiimote_debug*,int *) ;
 int debugfs_remove (void*) ;
 int kfree (struct wiimote_debug*) ;
 struct wiimote_debug* kzalloc (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wiidebug_drm_fops ;
 int wiidebug_eeprom_fops ;

int wiidebug_init(struct wiimote_data *wdata)
{
 struct wiimote_debug *dbg;
 unsigned long flags;
 int ret = -ENOMEM;

 dbg = kzalloc(sizeof(*dbg), GFP_KERNEL);
 if (!dbg)
  return -ENOMEM;

 dbg->wdata = wdata;

 dbg->eeprom = debugfs_create_file("eeprom", S_IRUSR,
  dbg->wdata->hdev->debug_dir, dbg, &wiidebug_eeprom_fops);
 if (!dbg->eeprom)
  goto err;

 dbg->drm = debugfs_create_file("drm", S_IRUSR,
   dbg->wdata->hdev->debug_dir, dbg, &wiidebug_drm_fops);
 if (!dbg->drm)
  goto err_drm;

 spin_lock_irqsave(&wdata->state.lock, flags);
 wdata->debug = dbg;
 spin_unlock_irqrestore(&wdata->state.lock, flags);

 return 0;

err_drm:
 debugfs_remove(dbg->eeprom);
err:
 kfree(dbg);
 return ret;
}
