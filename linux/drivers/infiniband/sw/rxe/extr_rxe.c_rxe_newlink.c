
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_dev {int ib_dev; } ;
struct net_device {int name; } ;


 int EEXIST ;
 int ib_device_put (int *) ;
 int pr_err (char*,int ) ;
 struct rxe_dev* rxe_get_dev_from_net (struct net_device*) ;
 int rxe_net_add (char const*,struct net_device*) ;

__attribute__((used)) static int rxe_newlink(const char *ibdev_name, struct net_device *ndev)
{
 struct rxe_dev *exists;
 int err = 0;

 exists = rxe_get_dev_from_net(ndev);
 if (exists) {
  ib_device_put(&exists->ib_dev);
  pr_err("already configured on %s\n", ndev->name);
  err = -EEXIST;
  goto err;
 }

 err = rxe_net_add(ibdev_name, ndev);
 if (err) {
  pr_err("failed to add %s\n", ndev->name);
  goto err;
 }
err:
 return err;
}
