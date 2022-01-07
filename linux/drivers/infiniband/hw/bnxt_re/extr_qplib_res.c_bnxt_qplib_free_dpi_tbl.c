
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_qplib_res {int pdev; } ;
struct bnxt_qplib_dpi_tbl {scalar_t__ dbr_bar_reg_iomem; int app_tbl; int tbl; } ;


 int kfree (int ) ;
 int memset (struct bnxt_qplib_dpi_tbl*,int ,int) ;
 int pci_iounmap (int ,scalar_t__) ;

__attribute__((used)) static void bnxt_qplib_free_dpi_tbl(struct bnxt_qplib_res *res,
        struct bnxt_qplib_dpi_tbl *dpit)
{
 kfree(dpit->tbl);
 kfree(dpit->app_tbl);
 if (dpit->dbr_bar_reg_iomem)
  pci_iounmap(res->pdev, dpit->dbr_bar_reg_iomem);
 memset(dpit, 0, sizeof(*dpit));
}
