
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device_attr {int dummy; } ;
struct rxe_dev {struct ib_device_attr attr; } ;
struct ib_udata {scalar_t__ outlen; scalar_t__ inlen; } ;
struct ib_device {int dummy; } ;


 int EINVAL ;
 struct rxe_dev* to_rdev (struct ib_device*) ;

__attribute__((used)) static int rxe_query_device(struct ib_device *dev,
       struct ib_device_attr *attr,
       struct ib_udata *uhw)
{
 struct rxe_dev *rxe = to_rdev(dev);

 if (uhw->inlen || uhw->outlen)
  return -EINVAL;

 *attr = rxe->attr;
 return 0;
}
