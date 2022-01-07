
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pmic8xxx_kp {int dev; int regmap; } ;


 int dev_dbg (int ,char*,int,unsigned int) ;
 int pmic8xxx_col_state (struct pmic8xxx_kp*,unsigned int) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int pmic8xxx_kp_read_data(struct pmic8xxx_kp *kp, u16 *state,
     u16 data_reg, int read_rows)
{
 int rc, row;
 unsigned int val;

 for (row = 0; row < read_rows; row++) {
  rc = regmap_read(kp->regmap, data_reg, &val);
  if (rc)
   return rc;
  dev_dbg(kp->dev, "%d = %d\n", row, val);
  state[row] = pmic8xxx_col_state(kp, val);
 }

 return 0;
}
