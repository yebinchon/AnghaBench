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
struct platform_device {int dummy; } ;
struct pdev_entry {unsigned int cpu; int /*<<< orphan*/  list; struct platform_device* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRVNAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct pdev_entry*) ; 
 struct pdev_entry* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pdev_list ; 
 int /*<<< orphan*/  pdev_list_mutex ; 
 int FUNC5 (struct platform_device*) ; 
 struct platform_device* FUNC6 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

__attribute__((used)) static int FUNC9(unsigned int cpu)
{
	int err;
	struct platform_device *pdev;
	struct pdev_entry *pdev_entry;

	pdev = FUNC6(DRVNAME, cpu);
	if (!pdev) {
		err = -ENOMEM;
		FUNC8("Device allocation failed\n");
		goto exit;
	}

	pdev_entry = FUNC1(sizeof(struct pdev_entry), GFP_KERNEL);
	if (!pdev_entry) {
		err = -ENOMEM;
		goto exit_device_put;
	}

	err = FUNC5(pdev);
	if (err) {
		FUNC8("Device addition failed (%d)\n", err);
		goto exit_device_free;
	}

	pdev_entry->pdev = pdev;
	pdev_entry->cpu = cpu;
	FUNC3(&pdev_list_mutex);
	FUNC2(&pdev_entry->list, &pdev_list);
	FUNC4(&pdev_list_mutex);

	return 0;

exit_device_free:
	FUNC0(pdev_entry);
exit_device_put:
	FUNC7(pdev);
exit:
	return err;
}