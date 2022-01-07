
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cma_device {int dummy; } ;


 int cma_deref_dev (struct cma_device*) ;

__attribute__((used)) static void cma_configfs_params_put(struct cma_device *cma_dev)
{
 cma_deref_dev(cma_dev);
}
