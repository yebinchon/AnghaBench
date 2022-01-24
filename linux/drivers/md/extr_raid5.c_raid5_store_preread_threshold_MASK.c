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
struct r5conf {unsigned long min_nr_stripes; unsigned long bypass_threshold; } ;
struct mddev {struct r5conf* private; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 size_t PAGE_SIZE ; 
 scalar_t__ FUNC0 (char const*,int,unsigned long*) ; 
 int FUNC1 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mddev*) ; 

__attribute__((used)) static ssize_t
FUNC3(struct mddev *mddev, const char *page, size_t len)
{
	struct r5conf *conf;
	unsigned long new;
	int err;

	if (len >= PAGE_SIZE)
		return -EINVAL;
	if (FUNC0(page, 10, &new))
		return -EINVAL;

	err = FUNC1(mddev);
	if (err)
		return err;
	conf = mddev->private;
	if (!conf)
		err = -ENODEV;
	else if (new > conf->min_nr_stripes)
		err = -EINVAL;
	else
		conf->bypass_threshold = new;
	FUNC2(mddev);
	return err ?: len;
}