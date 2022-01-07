
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pmic8xxx_kp {int num_rows; int num_cols; int input; int * keycodes; int dev; } ;


 int EV_MSC ;
 int MATRIX_SCAN_CODE (int,int,int ) ;
 int MSC_SCAN ;
 int PM8XXX_ROW_SHIFT ;
 int dev_dbg (int ,char*,int,int,char*) ;
 int input_event (int ,int ,int ,int) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;

__attribute__((used)) static void __pmic8xxx_kp_scan_matrix(struct pmic8xxx_kp *kp, u16 *new_state,
      u16 *old_state)
{
 int row, col, code;

 for (row = 0; row < kp->num_rows; row++) {
  int bits_changed = new_state[row] ^ old_state[row];

  if (!bits_changed)
   continue;

  for (col = 0; col < kp->num_cols; col++) {
   if (!(bits_changed & (1 << col)))
    continue;

   dev_dbg(kp->dev, "key [%d:%d] %s\n", row, col,
     !(new_state[row] & (1 << col)) ?
     "pressed" : "released");

   code = MATRIX_SCAN_CODE(row, col, PM8XXX_ROW_SHIFT);

   input_event(kp->input, EV_MSC, MSC_SCAN, code);
   input_report_key(kp->input,
     kp->keycodes[code],
     !(new_state[row] & (1 << col)));

   input_sync(kp->input);
  }
 }
}
