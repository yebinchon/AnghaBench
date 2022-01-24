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
typedef  int u8 ;
struct nct6683_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/  sioreg; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int NCT6683_CR_CASEOPEN_MASK ; 
 int /*<<< orphan*/  NCT6683_LD_ACPI ; 
 int /*<<< orphan*/  NCT6683_REG_CR_CASEOPEN ; 
 struct nct6683_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char*,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC8(struct device *dev, struct device_attribute *attr,
		      char *buf)
{
	struct nct6683_data *data = FUNC0(dev);
	int ret;
	u8 reg;

	FUNC1(&data->update_lock);

	ret = FUNC4(data->sioreg);
	if (ret)
		goto error;
	FUNC7(data->sioreg, NCT6683_LD_ACPI);
	reg = FUNC6(data->sioreg, NCT6683_REG_CR_CASEOPEN);
	FUNC5(data->sioreg);

	FUNC2(&data->update_lock);

	return FUNC3(buf, "%u\n", !(reg & NCT6683_CR_CASEOPEN_MASK));

error:
	FUNC2(&data->update_lock);
	return ret;
}