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
struct fxas21002c_data {int /*<<< orphan*/  vdd; int /*<<< orphan*/  vddio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct fxas21002c_data *data)
{
	int ret;

	ret = FUNC1(data->vdd);
	if (ret < 0)
		return ret;

	ret = FUNC1(data->vddio);
	if (ret < 0) {
		FUNC0(data->vdd);
		return ret;
	}

	return 0;
}