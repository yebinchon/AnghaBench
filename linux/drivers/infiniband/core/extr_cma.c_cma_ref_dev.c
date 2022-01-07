
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cma_device {int refcount; } ;


 int atomic_inc (int *) ;

void cma_ref_dev(struct cma_device *cma_dev)
{
 atomic_inc(&cma_dev->refcount);
}
