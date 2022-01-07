
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int dummy; } ;


 int EIO ;
 int FSP_REG_REVISION ;
 scalar_t__ fsp_reg_read (struct psmouse*,int ,int*) ;

__attribute__((used)) static int fsp_get_revision(struct psmouse *psmouse, int *rev)
{
 if (fsp_reg_read(psmouse, FSP_REG_REVISION, rev))
  return -EIO;

 return 0;
}
