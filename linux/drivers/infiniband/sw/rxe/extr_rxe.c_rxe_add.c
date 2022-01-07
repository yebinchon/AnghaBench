
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_dev {int dummy; } ;


 int rxe_init (struct rxe_dev*) ;
 int rxe_register_device (struct rxe_dev*,char const*) ;
 int rxe_set_mtu (struct rxe_dev*,unsigned int) ;

int rxe_add(struct rxe_dev *rxe, unsigned int mtu, const char *ibdev_name)
{
 int err;

 err = rxe_init(rxe);
 if (err)
  return err;

 rxe_set_mtu(rxe, mtu);

 return rxe_register_device(rxe, ibdev_name);
}
