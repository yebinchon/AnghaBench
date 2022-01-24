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
struct kobject {int dummy; } ;
struct edac_pci_ctl_info {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  KOBJ_ADD ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  edac_pci_top_main_kobj ; 
 struct kobject* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ktype_pci_instance ; 

__attribute__((used)) static int FUNC5(struct edac_pci_ctl_info *pci, int idx)
{
	struct kobject *main_kobj;
	int err;

	FUNC0(0, "\n");

	/* First bump the ref count on the top main kobj, which will
	 * track the number of PCI instances we have, and thus nest
	 * properly on keeping the module loaded
	 */
	main_kobj = FUNC1(edac_pci_top_main_kobj);
	if (!main_kobj) {
		err = -ENODEV;
		goto error_out;
	}

	/* And now register this new kobject under the main kobj */
	err = FUNC2(&pci->kobj, &ktype_pci_instance,
				   edac_pci_top_main_kobj, "pci%d", idx);
	if (err != 0) {
		FUNC0(2, "failed to register instance pci%d\n", idx);
		FUNC3(edac_pci_top_main_kobj);
		goto error_out;
	}

	FUNC4(&pci->kobj, KOBJ_ADD);
	FUNC0(1, "Register instance 'pci%d' kobject\n", idx);

	return 0;

	/* Error unwind statck */
error_out:
	return err;
}