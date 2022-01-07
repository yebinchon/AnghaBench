
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_svm_fault {int inst; int addr; int access; } ;
typedef int s64 ;



__attribute__((used)) static int
nouveau_svm_fault_cmp(const void *a, const void *b)
{
 const struct nouveau_svm_fault *fa = *(struct nouveau_svm_fault **)a;
 const struct nouveau_svm_fault *fb = *(struct nouveau_svm_fault **)b;
 int ret;
 if ((ret = (s64)fa->inst - fb->inst))
  return ret;
 if ((ret = (s64)fa->addr - fb->addr))
  return ret;

 return (fa->access == 0 || fa->access == 3) -
        (fb->access == 0 || fb->access == 3);
}
