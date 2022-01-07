
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_db_pgdir {int page; int db_dma; int order1; int * bits; int order0; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 int HNS_ROCE_DB_PER_PAGE ;
 int HNS_ROCE_DB_TYPE_COUNT ;
 int PAGE_SIZE ;
 int bitmap_fill (int ,int) ;
 int dma_alloc_coherent (struct device*,int ,int *,int ) ;
 int kfree (struct hns_roce_db_pgdir*) ;
 struct hns_roce_db_pgdir* kzalloc (int,int ) ;

__attribute__((used)) static struct hns_roce_db_pgdir *hns_roce_alloc_db_pgdir(
     struct device *dma_device)
{
 struct hns_roce_db_pgdir *pgdir;

 pgdir = kzalloc(sizeof(*pgdir), GFP_KERNEL);
 if (!pgdir)
  return ((void*)0);

 bitmap_fill(pgdir->order1,
      HNS_ROCE_DB_PER_PAGE / HNS_ROCE_DB_TYPE_COUNT);
 pgdir->bits[0] = pgdir->order0;
 pgdir->bits[1] = pgdir->order1;
 pgdir->page = dma_alloc_coherent(dma_device, PAGE_SIZE,
      &pgdir->db_dma, GFP_KERNEL);
 if (!pgdir->page) {
  kfree(pgdir);
  return ((void*)0);
 }

 return pgdir;
}
