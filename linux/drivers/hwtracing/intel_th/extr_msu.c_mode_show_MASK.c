#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct msc {size_t mode; int /*<<< orphan*/  buf_mutex; TYPE_1__* mbuf; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct msc* FUNC0 (struct device*) ; 
 char** msc_mode ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static ssize_t
FUNC4(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct msc *msc = FUNC0(dev);
	const char *mode = msc_mode[msc->mode];
	ssize_t ret;

	FUNC1(&msc->buf_mutex);
	if (msc->mbuf)
		mode = msc->mbuf->name;
	ret = FUNC3(buf, PAGE_SIZE, "%s\n", mode);
	FUNC2(&msc->buf_mutex);

	return ret;
}