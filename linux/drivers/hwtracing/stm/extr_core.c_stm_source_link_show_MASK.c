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
struct stm_source_device {int /*<<< orphan*/  link; } ;
struct stm_device {int /*<<< orphan*/  dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (char*,char*,char*) ; 
 struct stm_device* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  stm_source_srcu ; 
 struct stm_source_device* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				    struct device_attribute *attr,
				    char *buf)
{
	struct stm_source_device *src = FUNC5(dev);
	struct stm_device *stm;
	int idx, ret;

	idx = FUNC3(&stm_source_srcu);
	stm = FUNC2(src->link, &stm_source_srcu);
	ret = FUNC1(buf, "%s\n",
		      stm ? FUNC0(&stm->dev) : "<none>");
	FUNC4(&stm_source_srcu, idx);

	return ret;
}