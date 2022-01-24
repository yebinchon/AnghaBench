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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7470_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  client; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 unsigned char ADT7470_CFG_LF ; 
 unsigned char ADT7470_FREQ_MASK ; 
 unsigned char ADT7470_FREQ_SHIFT ; 
 int /*<<< orphan*/  ADT7470_REG_CFG ; 
 int /*<<< orphan*/  ADT7470_REG_CFG_2 ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/ * adt7470_freq_map ; 
 struct adt7470_data* FUNC1 (struct device*) ; 
 unsigned char FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
			      struct device_attribute *devattr, char *buf)
{
	struct adt7470_data *data = FUNC1(dev);
	unsigned char cfg_reg_1;
	unsigned char cfg_reg_2;
	int index;

	FUNC3(&data->lock);
	cfg_reg_1 = FUNC2(data->client, ADT7470_REG_CFG);
	cfg_reg_2 = FUNC2(data->client, ADT7470_REG_CFG_2);
	FUNC4(&data->lock);

	index = (cfg_reg_2 & ADT7470_FREQ_MASK) >> ADT7470_FREQ_SHIFT;
	if (!(cfg_reg_1 & ADT7470_CFG_LF))
		index += 8;
	if (index >= FUNC0(adt7470_freq_map))
		index = FUNC0(adt7470_freq_map) - 1;

	return FUNC5(buf, PAGE_SIZE, "%d\n", adt7470_freq_map[index]);
}