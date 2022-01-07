
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_device_attr {int dummy; } ;
struct TYPE_2__ {struct ib_device_attr props; } ;
struct rvt_dev_info {TYPE_1__ dparms; } ;
struct ib_udata {scalar_t__ outlen; scalar_t__ inlen; } ;
struct ib_device {int dummy; } ;


 int EINVAL ;
 struct rvt_dev_info* ib_to_rvt (struct ib_device*) ;

__attribute__((used)) static int rvt_query_device(struct ib_device *ibdev,
       struct ib_device_attr *props,
       struct ib_udata *uhw)
{
 struct rvt_dev_info *rdi = ib_to_rvt(ibdev);

 if (uhw->inlen || uhw->outlen)
  return -EINVAL;



 *props = rdi->dparms.props;
 return 0;
}
