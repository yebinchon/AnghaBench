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
struct file {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct file*,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  hp_sdc_rtc_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static long FUNC3(struct file *file,
				      unsigned int cmd, unsigned long arg)
{
	int ret;

	FUNC1(&hp_sdc_rtc_mutex);
	ret = FUNC0(file, cmd, arg);
	FUNC2(&hp_sdc_rtc_mutex);

	return ret;
}