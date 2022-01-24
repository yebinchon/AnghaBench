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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int kfd_char_dev_major ; 
 int /*<<< orphan*/  kfd_class ; 
 int /*<<< orphan*/  kfd_dev_name ; 
 int /*<<< orphan*/  kfd_device ; 
 int /*<<< orphan*/  kfd_fops ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

int FUNC8(void)
{
	int err = 0;

	kfd_char_dev_major = FUNC6(0, kfd_dev_name, &kfd_fops);
	err = kfd_char_dev_major;
	if (err < 0)
		goto err_register_chrdev;

	kfd_class = FUNC3(THIS_MODULE, kfd_dev_name);
	err = FUNC2(kfd_class);
	if (FUNC0(kfd_class))
		goto err_class_create;

	kfd_device = FUNC5(kfd_class, NULL,
					FUNC1(kfd_char_dev_major, 0),
					NULL, kfd_dev_name);
	err = FUNC2(kfd_device);
	if (FUNC0(kfd_device))
		goto err_device_create;

	return 0;

err_device_create:
	FUNC4(kfd_class);
err_class_create:
	FUNC7(kfd_char_dev_major, kfd_dev_name);
err_register_chrdev:
	return err;
}