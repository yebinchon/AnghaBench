#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct bcm_kp {TYPE_1__* input_dev; int /*<<< orphan*/  n_cols; } ;
struct TYPE_2__ {unsigned short* keycode; } ;

/* Variables and functions */
 size_t FUNC0 (int,int,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct bcm_kp *kp, int row, int col)
{
	unsigned int row_shift = FUNC1(kp->n_cols);
	unsigned short *keymap = kp->input_dev->keycode;

	return keymap[FUNC0(row, col, row_shift)];
}