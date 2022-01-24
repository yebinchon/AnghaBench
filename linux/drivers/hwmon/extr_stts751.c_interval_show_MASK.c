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
struct stts751_priv {size_t interval; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct stts751_priv* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,int) ; 
 int* stts751_intervals ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
			     struct device_attribute *attr, char *buf)
{
	struct stts751_priv *priv = FUNC0(dev);

	return FUNC1(buf, PAGE_SIZE, "%d\n",
			stts751_intervals[priv->interval]);
}