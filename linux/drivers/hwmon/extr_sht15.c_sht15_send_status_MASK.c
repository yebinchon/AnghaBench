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
struct sht15_data {int /*<<< orphan*/  val_status; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  SHT15_TSU ; 
 int /*<<< orphan*/  SHT15_WRITE_STATUS ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sht15_data*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sht15_data*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sht15_data*) ; 

__attribute__((used)) static int FUNC5(struct sht15_data *data, u8 status)
{
	int err;

	err = FUNC3(data, SHT15_WRITE_STATUS);
	if (err)
		return err;
	err = FUNC0(data->data, 1);
	if (err)
		return err;
	FUNC1(SHT15_TSU);
	FUNC2(data, status);
	err = FUNC4(data);
	if (err)
		return err;

	data->val_status = status;
	return 0;
}