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
struct sht15_data {int /*<<< orphan*/  sck; int /*<<< orphan*/  dev; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  SHT15_TSCKH ; 
 int /*<<< orphan*/  SHT15_TSCKL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sht15_data*) ; 

__attribute__((used)) static int FUNC6(struct sht15_data *data)
{
	int err;

	err = FUNC1(data->data);
	if (err)
		return err;
	FUNC3(data->sck, 1);
	FUNC4(SHT15_TSCKH);
	if (FUNC2(data->data)) {
		FUNC3(data->sck, 0);
		FUNC0(data->dev, "Command not acknowledged\n");
		err = FUNC5(data);
		if (err)
			return err;
		return -EIO;
	}
	FUNC3(data->sck, 0);
	FUNC4(SHT15_TSCKL);
	return 0;
}