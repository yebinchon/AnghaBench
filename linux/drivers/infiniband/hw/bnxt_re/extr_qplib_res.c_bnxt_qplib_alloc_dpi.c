
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct bnxt_qplib_dpi_tbl {size_t max; scalar_t__ unmapped_dbr; scalar_t__ dbr_bar_reg_iomem; void** app_tbl; int tbl; } ;
struct bnxt_qplib_dpi {size_t dpi; scalar_t__ umdbr; scalar_t__ dbr; } ;


 int ENOMEM ;
 size_t PAGE_SIZE ;
 int clear_bit (size_t,int ) ;
 size_t find_first_bit (int ,size_t) ;

int bnxt_qplib_alloc_dpi(struct bnxt_qplib_dpi_tbl *dpit,
    struct bnxt_qplib_dpi *dpi,
    void *app)
{
 u32 bit_num;

 bit_num = find_first_bit(dpit->tbl, dpit->max);
 if (bit_num == dpit->max)
  return -ENOMEM;


 clear_bit(bit_num, dpit->tbl);
 dpit->app_tbl[bit_num] = app;

 dpi->dpi = bit_num;
 dpi->dbr = dpit->dbr_bar_reg_iomem + (bit_num * PAGE_SIZE);
 dpi->umdbr = dpit->unmapped_dbr + (bit_num * PAGE_SIZE);

 return 0;
}
