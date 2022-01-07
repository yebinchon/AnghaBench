
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct cs_hsi_iface {int dummy; } ;
struct TYPE_2__ {int lock; struct cs_hsi_iface* hi; } ;


 TYPE_1__ cs_char_data ;
 int cs_char_miscdev ;
 int cs_hsi_stop (struct cs_hsi_iface*) ;
 int dev_dbg (struct device*,char*) ;
 int misc_deregister (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int cs_hsi_client_remove(struct device *dev)
{
 struct cs_hsi_iface *hi;

 dev_dbg(dev, "hsi_client_remove\n");
 misc_deregister(&cs_char_miscdev);
 spin_lock_bh(&cs_char_data.lock);
 hi = cs_char_data.hi;
 cs_char_data.hi = ((void*)0);
 spin_unlock_bh(&cs_char_data.lock);
 if (hi)
  cs_hsi_stop(hi);

 return 0;
}
