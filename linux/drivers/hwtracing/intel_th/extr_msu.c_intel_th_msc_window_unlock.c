
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int dummy; } ;
struct msc_window {int dummy; } ;
struct msc {int dummy; } ;
struct device {int dummy; } ;


 int WIN_LOCKED ;
 int WIN_READY ;
 struct msc* dev_get_drvdata (struct device*) ;
 struct msc_window* msc_find_window (struct msc*,struct sg_table*,int) ;
 int msc_win_set_lockout (struct msc_window*,int ,int ) ;

void intel_th_msc_window_unlock(struct device *dev, struct sg_table *sgt)
{
 struct msc *msc = dev_get_drvdata(dev);
 struct msc_window *win;

 if (!sgt)
  return;

 win = msc_find_window(msc, sgt, 0);
 if (!win)
  return;

 msc_win_set_lockout(win, WIN_LOCKED, WIN_READY);
}
