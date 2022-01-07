
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bcm_kp {TYPE_1__* input_dev; int n_cols; } ;
struct TYPE_2__ {unsigned short* keycode; } ;


 size_t MATRIX_SCAN_CODE (int,int,unsigned int) ;
 unsigned int get_count_order (int ) ;

__attribute__((used)) static int bcm_kp_get_keycode(struct bcm_kp *kp, int row, int col)
{
 unsigned int row_shift = get_count_order(kp->n_cols);
 unsigned short *keymap = kp->input_dev->keycode;

 return keymap[MATRIX_SCAN_CODE(row, col, row_shift)];
}
