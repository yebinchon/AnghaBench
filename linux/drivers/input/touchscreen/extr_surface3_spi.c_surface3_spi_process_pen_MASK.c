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
typedef  int /*<<< orphan*/  u8 ;
struct surface3_ts_data_pen {int dummy; } ;
struct surface3_ts_data {int /*<<< orphan*/  pen_input_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct surface3_ts_data*,struct surface3_ts_data_pen*) ; 

__attribute__((used)) static void FUNC2(struct surface3_ts_data *ts_data, u8 *data)
{
	struct surface3_ts_data_pen *pen;

	pen = (struct surface3_ts_data_pen *)&data[15];

	FUNC1(ts_data, pen);
	FUNC0(ts_data->pen_input_dev);
}