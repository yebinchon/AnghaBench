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
struct aiptek_settings {int dummy; } ;
struct aiptek {int /*<<< orphan*/  newSetting; int /*<<< orphan*/  curSetting; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EIO ; 
 scalar_t__ FUNC0 (struct aiptek*) ; 
 struct aiptek* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static ssize_t
FUNC3(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	struct aiptek *aiptek = FUNC1(dev);

	/* We do not care what you write to this file. Merely the action
	 * of writing to this file triggers a tablet reprogramming.
	 */
	FUNC2(&aiptek->curSetting, &aiptek->newSetting,
	       sizeof(struct aiptek_settings));

	if (FUNC0(aiptek) < 0)
		return -EIO;

	return count;
}