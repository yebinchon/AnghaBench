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
struct occ {int error; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 struct occ* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct occ*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,char*,int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
			      struct device_attribute *attr, char *buf)
{
	struct occ *occ = FUNC0(dev);

	FUNC1(occ);

	return FUNC2(buf, PAGE_SIZE - 1, "%d\n", occ->error);
}