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
struct sc1200_saved_state {int dummy; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct pci_dev*,int /*<<< orphan*/ *,struct sc1200_saved_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct sc1200_saved_state*) ; 
 struct sc1200_saved_state* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sc1200_chipset ; 

__attribute__((used)) static int FUNC3(struct pci_dev *dev, const struct pci_device_id *id)
{
	struct sc1200_saved_state *ss = NULL;
	int rc;

#ifdef CONFIG_PM
	ss = kmalloc(sizeof(*ss), GFP_KERNEL);
	if (ss == NULL)
		return -ENOMEM;
#endif
	rc = FUNC0(dev, &sc1200_chipset, ss);
	if (rc)
		FUNC1(ss);

	return rc;
}