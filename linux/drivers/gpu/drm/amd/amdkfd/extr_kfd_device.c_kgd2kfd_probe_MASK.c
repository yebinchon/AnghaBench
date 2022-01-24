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
struct pci_dev {int /*<<< orphan*/  device; int /*<<< orphan*/  vendor; } ;
struct kgd_dev {int dummy; } ;
struct kfd_device_info {scalar_t__ needs_pci_atomics; } ;
struct kfd_dev {int init_complete; int /*<<< orphan*/  sram_ecc_flag; int /*<<< orphan*/  doorbell_available_index; int /*<<< orphan*/  doorbell_mutex; int /*<<< orphan*/  compute_profile; struct kfd2kgd_calls const* kfd2kgd; struct pci_dev* pdev; struct kfd_device_info const* device_info; struct kgd_dev* kgd; int /*<<< orphan*/  pci_atomic_requested; } ;
struct kfd2kgd_calls {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct kgd_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kfd_device ; 
 int /*<<< orphan*/  FUNC4 (struct kfd_dev*) ; 
 struct kfd_dev* FUNC5 (int,int /*<<< orphan*/ ) ; 
 struct kfd_device_info* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

struct kfd_dev *FUNC9(struct kgd_dev *kgd,
	struct pci_dev *pdev, const struct kfd2kgd_calls *f2g)
{
	struct kfd_dev *kfd;
	const struct kfd_device_info *device_info =
					FUNC6(pdev->device);

	if (!device_info) {
		FUNC2(kfd_device, "kgd2kfd_probe failed\n");
		return NULL;
	}

	kfd = FUNC5(sizeof(*kfd), GFP_KERNEL);
	if (!kfd)
		return NULL;

	/* Allow BIF to recode atomics to PCIe 3.0 AtomicOps.
	 * 32 and 64-bit requests are possible and must be
	 * supported.
	 */
	kfd->pci_atomic_requested = FUNC0(kgd);
	if (device_info->needs_pci_atomics &&
	    !kfd->pci_atomic_requested) {
		FUNC3(kfd_device,
			 "skipped device %x:%x, PCI rejects atomics\n",
			 pdev->vendor, pdev->device);
		FUNC4(kfd);
		return NULL;
	}

	kfd->kgd = kgd;
	kfd->device_info = device_info;
	kfd->pdev = pdev;
	kfd->init_complete = false;
	kfd->kfd2kgd = f2g;
	FUNC1(&kfd->compute_profile, 0);

	FUNC8(&kfd->doorbell_mutex);
	FUNC7(&kfd->doorbell_available_index, 0,
		sizeof(kfd->doorbell_available_index));

	FUNC1(&kfd->sram_ecc_flag, 0);

	return kfd;
}