
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnxt_qplib_res {TYPE_1__* pdev; } ;
struct bnxt_qplib_dpi_tbl {size_t max; int ** app_tbl; int tbl; } ;
struct bnxt_qplib_dpi {size_t dpi; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int dev_warn (int *,char*,size_t) ;
 int memset (struct bnxt_qplib_dpi*,int ,int) ;
 scalar_t__ test_and_set_bit (size_t,int ) ;

int bnxt_qplib_dealloc_dpi(struct bnxt_qplib_res *res,
      struct bnxt_qplib_dpi_tbl *dpit,
      struct bnxt_qplib_dpi *dpi)
{
 if (dpi->dpi >= dpit->max) {
  dev_warn(&res->pdev->dev, "Invalid DPI? dpi = %d\n", dpi->dpi);
  return -EINVAL;
 }
 if (test_and_set_bit(dpi->dpi, dpit->tbl)) {
  dev_warn(&res->pdev->dev, "Freeing an unused DPI? dpi = %d\n",
    dpi->dpi);
  return -EINVAL;
 }
 if (dpit->app_tbl)
  dpit->app_tbl[dpi->dpi] = ((void*)0);
 memset(dpi, 0, sizeof(*dpi));

 return 0;
}
