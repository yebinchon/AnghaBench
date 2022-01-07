
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;
struct pardev_cb {int flags; int irq_func; } ;
typedef int parkbd_parport_cb ;


 int EBUSY ;
 int ENODEV ;
 int PARPORT_FLAG_EXCL ;
 int jiffies ;
 int memset (struct pardev_cb*,int ,int) ;
 int parkbd_dev ;
 int parkbd_interrupt ;
 int parkbd_start ;
 scalar_t__ parport_claim (int ) ;
 int parport_register_dev_model (struct parport*,char*,struct pardev_cb*,int ) ;
 int parport_unregister_device (int ) ;

__attribute__((used)) static int parkbd_getport(struct parport *pp)
{
 struct pardev_cb parkbd_parport_cb;

 memset(&parkbd_parport_cb, 0, sizeof(parkbd_parport_cb));
 parkbd_parport_cb.irq_func = parkbd_interrupt;
 parkbd_parport_cb.flags = PARPORT_FLAG_EXCL;

 parkbd_dev = parport_register_dev_model(pp, "parkbd",
      &parkbd_parport_cb, 0);

 if (!parkbd_dev)
  return -ENODEV;

 if (parport_claim(parkbd_dev)) {
  parport_unregister_device(parkbd_dev);
  return -EBUSY;
 }

 parkbd_start = jiffies;

 return 0;
}
