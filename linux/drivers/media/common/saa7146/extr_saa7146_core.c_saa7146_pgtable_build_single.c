
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {scalar_t__ offset; int length; } ;
struct saa7146_pgtable {scalar_t__ offset; int * cpu; } ;
struct pci_dev {int dummy; } ;
typedef int __le32 ;


 int BUG_ON (int) ;
 scalar_t__ PAGE_SIZE ;
 int cpu_to_le32 (scalar_t__) ;
 scalar_t__ sg_dma_address (struct scatterlist*) ;

int saa7146_pgtable_build_single(struct pci_dev *pci, struct saa7146_pgtable *pt,
 struct scatterlist *list, int sglen )
{
 __le32 *ptr, fill;
 int nr_pages = 0;
 int i,p;

 BUG_ON(0 == sglen);
 BUG_ON(list->offset > PAGE_SIZE);



 pt->offset = list->offset;

 ptr = pt->cpu;
 for (i = 0; i < sglen; i++, list++) {





  for (p = 0; p * 4096 < list->length; p++, ptr++) {
   *ptr = cpu_to_le32(sg_dma_address(list) + p * 4096);
   nr_pages++;
  }
 }



 fill = *(ptr-1);
 for(i=nr_pages;i<1024;i++) {
  *ptr++ = fill;
 }
 return 0;
}
