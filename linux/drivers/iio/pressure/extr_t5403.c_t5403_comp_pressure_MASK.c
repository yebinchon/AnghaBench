#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u16 ;
struct t5403_data {int /*<<< orphan*/  lock; } ;
typedef  int s32 ;
typedef  int s16 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct t5403_data*,int) ; 

__attribute__((used)) static int FUNC5(struct t5403_data *data, int *val, int *val2)
{
	int ret;
	s16 t_r;
	u16 p_r;
	s32 S, O, X;

	FUNC2(&data->lock);

	ret = FUNC4(data, false);
	if (ret < 0)
		goto done;
	t_r = ret;

	ret = FUNC4(data, true);
	if (ret < 0)
		goto done;
	p_r = ret;

	/* see EPCOS application note */
	S = FUNC1(3) + (s32) FUNC1(4) * t_r / 0x20000 +
		FUNC0(5) * t_r / 0x8000 * t_r / 0x80000 +
		FUNC0(9) * t_r / 0x8000 * t_r / 0x8000 * t_r / 0x10000;

	O = FUNC0(6) * 0x4000 + FUNC0(7) * t_r / 8 +
		FUNC0(8) * t_r / 0x8000 * t_r / 16 +
		FUNC0(9) * t_r / 0x8000 * t_r / 0x10000 * t_r;

	X = (S * p_r + O) / 0x4000;

	X += ((X - 75000) * (X - 75000) / 0x10000 - 9537) *
	    FUNC0(10) / 0x10000;

	*val = X / 1000;
	*val2 = (X % 1000) * 1000;

done:
	FUNC3(&data->lock);
	return ret;
}