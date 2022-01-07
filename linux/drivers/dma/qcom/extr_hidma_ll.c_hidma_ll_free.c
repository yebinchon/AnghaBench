
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct hidma_tre {int allocated; } ;
struct hidma_lldev {size_t nr_tres; int dev; struct hidma_tre* trepool; } ;


 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int dev_err (int ,char*,size_t) ;

void hidma_ll_free(struct hidma_lldev *lldev, u32 tre_ch)
{
 struct hidma_tre *tre;

 if (tre_ch >= lldev->nr_tres) {
  dev_err(lldev->dev, "invalid TRE number in free:%d", tre_ch);
  return;
 }

 tre = &lldev->trepool[tre_ch];
 if (atomic_read(&tre->allocated) != 1) {
  dev_err(lldev->dev, "trying to free an unused TRE:%d", tre_ch);
  return;
 }

 atomic_set(&tre->allocated, 0);
}
