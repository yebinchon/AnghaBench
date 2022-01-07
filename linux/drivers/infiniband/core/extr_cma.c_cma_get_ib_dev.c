
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device {int dummy; } ;
struct cma_device {struct ib_device* device; } ;



struct ib_device *cma_get_ib_dev(struct cma_device *cma_dev)
{
 return cma_dev->device;
}
