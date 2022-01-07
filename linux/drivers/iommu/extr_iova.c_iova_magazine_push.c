
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iova_magazine {unsigned long* pfns; int size; } ;


 int BUG_ON (int ) ;
 int iova_magazine_full (struct iova_magazine*) ;

__attribute__((used)) static void iova_magazine_push(struct iova_magazine *mag, unsigned long pfn)
{
 BUG_ON(iova_magazine_full(mag));

 mag->pfns[mag->size++] = pfn;
}
