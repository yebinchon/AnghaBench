
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siw_device {int mem_xa; int qp_xa; } ;
struct ib_device {int dummy; } ;


 struct siw_device* to_siw_dev (struct ib_device*) ;
 int xa_destroy (int *) ;

__attribute__((used)) static void siw_device_cleanup(struct ib_device *base_dev)
{
 struct siw_device *sdev = to_siw_dev(base_dev);

 xa_destroy(&sdev->qp_xa);
 xa_destroy(&sdev->mem_xa);
}
