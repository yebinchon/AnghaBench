#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_4__ {size_t axis_map_x; size_t axis_map_y; size_t axis_map_z; scalar_t__ negate_z; scalar_t__ negate_y; scalar_t__ negate_x; } ;
struct kxtj9_data {int shift; int /*<<< orphan*/  input_dev; TYPE_2__ pdata; TYPE_1__* client; } ;
typedef  int s16 ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  ABS_Z ; 
 int /*<<< orphan*/  XOUT_L ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct kxtj9_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct kxtj9_data *tj9)
{
	s16 acc_data[3]; /* Data bytes from hardware xL, xH, yL, yH, zL, zH */
	s16 x, y, z;
	int err;

	err = FUNC3(tj9, XOUT_L, (u8 *)acc_data, 6);
	if (err < 0)
		FUNC0(&tj9->client->dev, "accelerometer data read failed\n");

	x = FUNC4(acc_data[tj9->pdata.axis_map_x]);
	y = FUNC4(acc_data[tj9->pdata.axis_map_y]);
	z = FUNC4(acc_data[tj9->pdata.axis_map_z]);

	x >>= tj9->shift;
	y >>= tj9->shift;
	z >>= tj9->shift;

	FUNC1(tj9->input_dev, ABS_X, tj9->pdata.negate_x ? -x : x);
	FUNC1(tj9->input_dev, ABS_Y, tj9->pdata.negate_y ? -y : y);
	FUNC1(tj9->input_dev, ABS_Z, tj9->pdata.negate_z ? -z : z);
	FUNC2(tj9->input_dev);
}