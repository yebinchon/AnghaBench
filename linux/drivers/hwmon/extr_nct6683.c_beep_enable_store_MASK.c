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
struct nct6683_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/  sioreg; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  NCT6683_CR_BEEP_MASK ; 
 int /*<<< orphan*/  NCT6683_LD_HWM ; 
 int /*<<< orphan*/  NCT6683_REG_CR_BEEP ; 
 struct nct6683_data* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC9(struct device *dev, struct device_attribute *attr,
		  const char *buf, size_t count)
{
	struct nct6683_data *data = FUNC0(dev);
	unsigned long val;
	u8 reg;
	int ret;

	if (FUNC1(buf, 10, &val) || (val != 0 && val != 1))
		return -EINVAL;

	FUNC2(&data->update_lock);

	ret = FUNC4(data->sioreg);
	if (ret) {
		count = ret;
		goto error;
	}

	FUNC8(data->sioreg, NCT6683_LD_HWM);
	reg = FUNC6(data->sioreg, NCT6683_REG_CR_BEEP);
	if (val)
		reg |= NCT6683_CR_BEEP_MASK;
	else
		reg &= ~NCT6683_CR_BEEP_MASK;
	FUNC7(data->sioreg, NCT6683_REG_CR_BEEP, reg);
	FUNC5(data->sioreg);
error:
	FUNC3(&data->update_lock);
	return count;
}