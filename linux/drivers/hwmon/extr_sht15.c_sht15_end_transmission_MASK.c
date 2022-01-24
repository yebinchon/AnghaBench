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
struct sht15_data {int /*<<< orphan*/  sck; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  SHT15_TSCKH ; 
 int /*<<< orphan*/  SHT15_TSCKL ; 
 int /*<<< orphan*/  SHT15_TSU ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct sht15_data *data)
{
	int err;

	err = FUNC0(data->data, 1);
	if (err)
		return err;
	FUNC2(SHT15_TSU);
	FUNC1(data->sck, 1);
	FUNC2(SHT15_TSCKH);
	FUNC1(data->sck, 0);
	FUNC2(SHT15_TSCKL);
	return 0;
}