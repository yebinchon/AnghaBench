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
struct serdev_device {int dummy; } ;
struct gnss_serial {struct serdev_device* serdev; } ;
struct gnss_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_SCHEDULE_TIMEOUT ; 
 struct gnss_serial* FUNC0 (struct gnss_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct serdev_device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct serdev_device*,unsigned char const*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct gnss_device *gdev,
		const unsigned char *buf, size_t count)
{
	struct gnss_serial *gserial = FUNC0(gdev);
	struct serdev_device *serdev = gserial->serdev;
	int ret;

	/* write is only buffered synchronously */
	ret = FUNC2(serdev, buf, count, MAX_SCHEDULE_TIMEOUT);
	if (ret < 0 || ret < count)
		return ret;

	/* FIXME: determine if interrupted? */
	FUNC1(serdev, 0);

	return count;
}