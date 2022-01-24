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
struct stmfts_data {unsigned long hover_enabled; int /*<<< orphan*/  mutex; int /*<<< orphan*/  client; scalar_t__ running; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  STMFTS_SS_HOVER_SENSE_OFF ; 
 int /*<<< orphan*/  STMFTS_SS_HOVER_SENSE_ON ; 
 struct stmfts_data* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				struct device_attribute *attr,
				const char *buf, size_t len)
{
	struct stmfts_data *sdata = FUNC0(dev);
	unsigned long value;
	int err = 0;

	if (FUNC2(buf, 0, &value))
		return -EINVAL;

	FUNC3(&sdata->mutex);

	if (value & sdata->hover_enabled)
		goto out;

	if (sdata->running)
		err = FUNC1(sdata->client,
					   value ? STMFTS_SS_HOVER_SENSE_ON :
						   STMFTS_SS_HOVER_SENSE_OFF);

	if (!err)
		sdata->hover_enabled = !!value;

out:
	FUNC4(&sdata->mutex);

	return len;
}