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
struct TYPE_3__ {struct device* parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct ipu_soc {struct device* dev; } ;
struct TYPE_4__ {struct device_node* of_node; } ;
struct ipu_platform_reg {TYPE_2__ pdata; int /*<<< orphan*/  name; } ;
struct device_node {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct ipu_platform_reg*) ; 
 int ENOMEM ; 
 struct ipu_platform_reg* client_reg ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,unsigned int,int /*<<< orphan*/ ,char*,unsigned int) ; 
 unsigned int ipu_client_id ; 
 int /*<<< orphan*/  ipu_client_id_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct device_node* FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC5 (struct platform_device*) ; 
 int FUNC6 (struct platform_device*,TYPE_2__*,int) ; 
 struct platform_device* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 

__attribute__((used)) static int FUNC11(struct ipu_soc *ipu, unsigned long ipu_base)
{
	struct device *dev = ipu->dev;
	unsigned i;
	int id, ret;

	FUNC2(&ipu_client_id_mutex);
	id = ipu_client_id;
	ipu_client_id += FUNC0(client_reg);
	FUNC3(&ipu_client_id_mutex);

	for (i = 0; i < FUNC0(client_reg); i++) {
		struct ipu_platform_reg *reg = &client_reg[i];
		struct platform_device *pdev;
		struct device_node *of_node;

		/* Associate subdevice with the corresponding port node */
		of_node = FUNC4(dev->of_node, i);
		if (!of_node) {
			FUNC1(dev,
				 "no port@%d node in %pOF, not using %s%d\n",
				 i, dev->of_node,
				 (i / 2) ? "DI" : "CSI", i % 2);
			continue;
		}

		pdev = FUNC7(reg->name, id++);
		if (!pdev) {
			ret = -ENOMEM;
			goto err_register;
		}

		pdev->dev.parent = dev;

		reg->pdata.of_node = of_node;
		ret = FUNC6(pdev, &reg->pdata,
					       sizeof(reg->pdata));
		if (!ret)
			ret = FUNC5(pdev);
		if (ret) {
			FUNC8(pdev);
			goto err_register;
		}
	}

	return 0;

err_register:
	FUNC9(FUNC10(dev));

	return ret;
}