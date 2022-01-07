
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pmic8xxx_kp {int num_cols; } ;



__attribute__((used)) static u8 pmic8xxx_col_state(struct pmic8xxx_kp *kp, u8 col)
{

 if (col == 0x00)
  return 1 << kp->num_cols;
 else
  return col & ((1 << kp->num_cols) - 1);
}
