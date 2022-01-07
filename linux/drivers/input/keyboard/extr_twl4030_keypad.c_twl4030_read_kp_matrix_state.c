
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct twl4030_keypad {int n_rows; } ;


 int KEYP_FULL_CODE_7_0 ;
 int TWL4030_MAX_ROWS ;
 int twl4030_col_xlate (struct twl4030_keypad*,int ) ;
 int twl4030_kpread (struct twl4030_keypad*,int *,int ,int) ;

__attribute__((used)) static int twl4030_read_kp_matrix_state(struct twl4030_keypad *kp, u16 *state)
{
 u8 new_state[TWL4030_MAX_ROWS];
 int row;
 int ret = twl4030_kpread(kp, new_state,
     KEYP_FULL_CODE_7_0, kp->n_rows);
 if (ret >= 0)
  for (row = 0; row < kp->n_rows; row++)
   state[row] = twl4030_col_xlate(kp, new_state[row]);

 return ret;
}
