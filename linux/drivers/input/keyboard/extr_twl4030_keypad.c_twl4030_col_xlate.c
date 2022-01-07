
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct twl4030_keypad {int n_cols; } ;



__attribute__((used)) static inline u16 twl4030_col_xlate(struct twl4030_keypad *kp, u8 col)
{






 if (col == 0xFF)
  return 1 << kp->n_cols;
 else
  return col & ((1 << kp->n_cols) - 1);
}
