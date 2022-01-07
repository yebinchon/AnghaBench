
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ percpu_count_ptr; } ;
struct mddev {TYPE_1__ writes_pending; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PERCPU_REF_ALLOW_REINIT ;
 int no_op ;
 scalar_t__ percpu_ref_init (TYPE_1__*,int ,int ,int ) ;
 int percpu_ref_put (TYPE_1__*) ;

int mddev_init_writes_pending(struct mddev *mddev)
{
 if (mddev->writes_pending.percpu_count_ptr)
  return 0;
 if (percpu_ref_init(&mddev->writes_pending, no_op,
       PERCPU_REF_ALLOW_REINIT, GFP_KERNEL) < 0)
  return -ENOMEM;

 percpu_ref_put(&mddev->writes_pending);
 return 0;
}
