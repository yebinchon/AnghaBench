
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct bnxt_qplib_res {int dpi_tbl; int pd_tbl; int pkey_tbl; int sgid_tbl; struct net_device* netdev; struct pci_dev* pdev; } ;
struct bnxt_qplib_dev_attr {int l2_db_size; int max_pd; int max_pkey; int max_sgid; } ;


 int bnxt_qplib_alloc_dpi_tbl (struct bnxt_qplib_res*,int *,int ) ;
 int bnxt_qplib_alloc_pd_tbl (struct bnxt_qplib_res*,int *,int ) ;
 int bnxt_qplib_alloc_pkey_tbl (struct bnxt_qplib_res*,int *,int ) ;
 int bnxt_qplib_alloc_sgid_tbl (struct bnxt_qplib_res*,int *,int ) ;
 int bnxt_qplib_free_res (struct bnxt_qplib_res*) ;

int bnxt_qplib_alloc_res(struct bnxt_qplib_res *res, struct pci_dev *pdev,
    struct net_device *netdev,
    struct bnxt_qplib_dev_attr *dev_attr)
{
 int rc = 0;

 res->pdev = pdev;
 res->netdev = netdev;

 rc = bnxt_qplib_alloc_sgid_tbl(res, &res->sgid_tbl, dev_attr->max_sgid);
 if (rc)
  goto fail;

 rc = bnxt_qplib_alloc_pkey_tbl(res, &res->pkey_tbl, dev_attr->max_pkey);
 if (rc)
  goto fail;

 rc = bnxt_qplib_alloc_pd_tbl(res, &res->pd_tbl, dev_attr->max_pd);
 if (rc)
  goto fail;

 rc = bnxt_qplib_alloc_dpi_tbl(res, &res->dpi_tbl, dev_attr->l2_db_size);
 if (rc)
  goto fail;

 return 0;
fail:
 bnxt_qplib_free_res(res);
 return rc;
}
