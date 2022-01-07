
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int dummy; } ;


 int EIO ;
 int FSP_PAGE_0B ;
 int FSP_PAGE_DEFAULT ;
 int FSP_REG_SN0 ;
 int FSP_REG_SN1 ;
 int FSP_REG_SN2 ;
 scalar_t__ fsp_page_reg_write (struct psmouse*,int ) ;
 scalar_t__ fsp_reg_read (struct psmouse*,int ,int*) ;

__attribute__((used)) static int fsp_get_sn(struct psmouse *psmouse, int *sn)
{
 int v0, v1, v2;
 int rc = -EIO;


 if (fsp_page_reg_write(psmouse, FSP_PAGE_0B))
  goto out;
 if (fsp_reg_read(psmouse, FSP_REG_SN0, &v0))
  goto out;
 if (fsp_reg_read(psmouse, FSP_REG_SN1, &v1))
  goto out;
 if (fsp_reg_read(psmouse, FSP_REG_SN2, &v2))
  goto out;
 *sn = (v0 << 16) | (v1 << 8) | v2;
 rc = 0;
out:
 fsp_page_reg_write(psmouse, FSP_PAGE_DEFAULT);
 return rc;
}
