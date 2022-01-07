
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iova_magazine {int size; unsigned long* pfns; } ;


 int BUG_ON (int ) ;
 int iova_magazine_empty (struct iova_magazine*) ;

__attribute__((used)) static unsigned long iova_magazine_pop(struct iova_magazine *mag,
           unsigned long limit_pfn)
{
 int i;
 unsigned long pfn;

 BUG_ON(iova_magazine_empty(mag));


 for (i = mag->size - 1; mag->pfns[i] > limit_pfn; i--)
  if (i == 0)
   return 0;


 pfn = mag->pfns[i];
 mag->pfns[i] = mag->pfns[--mag->size];

 return pfn;
}
