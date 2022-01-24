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
struct video_device {int dummy; } ;
struct saa7146_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct saa7146_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct video_device*) ; 

int FUNC2(struct video_device *vfd, struct saa7146_dev *dev)
{
	FUNC0("dev:%p\n", dev);

	FUNC1(vfd);
	return 0;
}