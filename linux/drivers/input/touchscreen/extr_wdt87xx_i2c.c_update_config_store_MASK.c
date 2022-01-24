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
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  CHUNK_ID_CNFG ; 
 int /*<<< orphan*/  WDT87XX_CFG_NAME ; 
 int FUNC0 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC1(struct device *dev,
				   struct device_attribute *attr,
				   const char *buf, size_t count)
{
	int error;

	error = FUNC0(dev, WDT87XX_CFG_NAME, CHUNK_ID_CNFG);

	return error ? error : count;
}