
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bnxt_re_dev {struct net_device* netdev; struct bnxt_en_dev* en_dev; } ;
struct bnxt_en_dev {int dummy; } ;


 int bnxt_re_dev_remove (struct bnxt_re_dev*) ;
 int bnxt_re_dev_unprobe (struct net_device*,struct bnxt_en_dev*) ;

__attribute__((used)) static void bnxt_re_dev_unreg(struct bnxt_re_dev *rdev)
{
 struct bnxt_en_dev *en_dev = rdev->en_dev;
 struct net_device *netdev = rdev->netdev;

 bnxt_re_dev_remove(rdev);

 if (netdev)
  bnxt_re_dev_unprobe(netdev, en_dev);
}
