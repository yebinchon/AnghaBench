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
struct kfd_process_device {int dummy; } ;
struct kfd_process {int dummy; } ;
struct kfd_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct kfd_process_device* FUNC0 (int) ; 
 struct kfd_process_device* FUNC1 (struct kfd_dev*,struct kfd_process*) ; 
 int FUNC2 (struct kfd_process_device*) ; 
 int FUNC3 (struct kfd_process_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

struct kfd_process_device *FUNC5(struct kfd_dev *dev,
							struct kfd_process *p)
{
	struct kfd_process_device *pdd;
	int err;

	pdd = FUNC1(dev, p);
	if (!pdd) {
		FUNC4("Process device data doesn't exist\n");
		return FUNC0(-ENOMEM);
	}

	err = FUNC2(pdd);
	if (err)
		return FUNC0(err);

	err = FUNC3(pdd, NULL);
	if (err)
		return FUNC0(err);

	return pdd;
}