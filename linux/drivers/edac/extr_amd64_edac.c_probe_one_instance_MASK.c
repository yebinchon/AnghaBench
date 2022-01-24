#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct ecc_settings {int dummy; } ;
struct TYPE_4__ {int x86; } ;
struct TYPE_3__ {struct pci_dev* misc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_2__ boot_cpu_data ; 
 int /*<<< orphan*/  ecc_enable_override ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,unsigned int) ; 
 struct ecc_settings** ecc_stngs ; 
 int /*<<< orphan*/  FUNC3 (struct ecc_settings*,unsigned int,struct pci_dev*) ; 
 int FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct ecc_settings*) ; 
 struct ecc_settings* FUNC6 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct ecc_settings*,unsigned int,struct pci_dev*) ; 

__attribute__((used)) static int FUNC9(unsigned int nid)
{
	struct pci_dev *F3 = FUNC7(nid)->misc;
	struct ecc_settings *s;
	int ret;

	ret = -ENOMEM;
	s = FUNC6(sizeof(struct ecc_settings), GFP_KERNEL);
	if (!s)
		goto err_out;

	ecc_stngs[nid] = s;

	if (!FUNC2(F3, nid)) {
		ret = 0;

		if (!ecc_enable_override)
			goto err_enable;

		if (boot_cpu_data.x86 >= 0x17) {
			FUNC1("Forcing ECC on is not recommended on newer systems. Please enable ECC in BIOS.");
			goto err_enable;
		} else
			FUNC1("Forcing ECC on!\n");

		if (!FUNC3(s, nid, F3))
			goto err_enable;
	}

	ret = FUNC4(nid);
	if (ret < 0) {
		FUNC0("Error probing instance: %d\n", nid);

		if (boot_cpu_data.x86 < 0x17)
			FUNC8(s, nid, F3);

		goto err_enable;
	}

	return ret;

err_enable:
	FUNC5(s);
	ecc_stngs[nid] = NULL;

err_out:
	return ret;
}