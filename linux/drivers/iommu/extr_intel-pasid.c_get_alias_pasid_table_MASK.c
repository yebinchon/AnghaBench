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
typedef  int u16 ;
struct pci_dev {int /*<<< orphan*/  bus; } ;
struct pasid_table_opaque {int devfn; int /*<<< orphan*/  bus; int /*<<< orphan*/  segment; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct pasid_table_opaque*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  search_pasid_table ; 

__attribute__((used)) static int FUNC3(struct pci_dev *pdev, u16 alias, void *opaque)
{
	struct pasid_table_opaque *data = opaque;

	data->segment = FUNC2(pdev->bus);
	data->bus = FUNC0(alias);
	data->devfn = alias & 0xff;

	return FUNC1(&search_pasid_table, data);
}