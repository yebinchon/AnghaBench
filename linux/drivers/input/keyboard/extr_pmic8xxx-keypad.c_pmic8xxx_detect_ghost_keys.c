
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pmic8xxx_kp {int num_rows; int num_cols; int dev; } ;


 int dev_dbg (int ,char*,int,int) ;
 int hweight16 (int) ;

__attribute__((used)) static bool pmic8xxx_detect_ghost_keys(struct pmic8xxx_kp *kp, u16 *new_state)
{
 int row, found_first = -1;
 u16 check, row_state;

 check = 0;
 for (row = 0; row < kp->num_rows; row++) {
  row_state = (~new_state[row]) &
     ((1 << kp->num_cols) - 1);

  if (hweight16(row_state) > 1) {
   if (found_first == -1)
    found_first = row;
   if (check & row_state) {
    dev_dbg(kp->dev, "detected ghost key on row[%d]"
      " and row[%d]\n", found_first, row);
    return 1;
   }
  }
  check |= row_state;
 }
 return 0;
}
