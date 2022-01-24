#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct edid {int dummy; } ;
struct drm_connector {TYPE_1__* dev; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;

/* Variables and functions */
 struct edid* FUNC0 (struct drm_connector*,struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 

struct edid *FUNC3(struct drm_connector *connector,
				     struct i2c_adapter *adapter)
{
	struct pci_dev *pdev = connector->dev->pdev;
	struct edid *edid;

	FUNC1(pdev);
	edid = FUNC0(connector, adapter);
	FUNC2(pdev);

	return edid;
}