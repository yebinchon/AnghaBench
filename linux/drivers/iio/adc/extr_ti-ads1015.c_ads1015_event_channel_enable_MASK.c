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
struct ads1015_data {int event_channel; int comp_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ads1015_data*) ; 

__attribute__((used)) static void FUNC2(struct ads1015_data *data, int chan,
					 int comp_mode)
{
	FUNC0(FUNC1(data));

	data->event_channel = chan;
	data->comp_mode = comp_mode;
}