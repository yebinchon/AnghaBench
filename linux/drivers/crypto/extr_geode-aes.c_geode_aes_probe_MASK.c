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
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int AES_INTR_MASK ; 
 int AES_INTR_PENDING ; 
 int AES_INTR_REG ; 
 int ENOMEM ; 
 int /*<<< orphan*/ * _iobase ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  geode_alg ; 
 int /*<<< orphan*/  geode_cbc_alg ; 
 int /*<<< orphan*/  geode_ecb_alg ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lock ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/ * FUNC7 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int FUNC10 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct pci_dev *dev, const struct pci_device_id *id)
{
	int ret;

	ret = FUNC6(dev);
	if (ret)
		return ret;

	ret = FUNC10(dev, "geode-aes");
	if (ret)
		goto eenable;

	_iobase = FUNC7(dev, 0, 0);

	if (_iobase == NULL) {
		ret = -ENOMEM;
		goto erequest;
	}

	FUNC11(&lock);

	/* Clear any pending activity */
	FUNC4(AES_INTR_PENDING | AES_INTR_MASK, _iobase + AES_INTR_REG);

	ret = FUNC0(&geode_alg);
	if (ret)
		goto eiomap;

	ret = FUNC0(&geode_ecb_alg);
	if (ret)
		goto ealg;

	ret = FUNC0(&geode_cbc_alg);
	if (ret)
		goto eecb;

	FUNC3(&dev->dev, "GEODE AES engine enabled.\n");
	return 0;

 eecb:
	FUNC1(&geode_ecb_alg);

 ealg:
	FUNC1(&geode_alg);

 eiomap:
	FUNC8(dev, _iobase);

 erequest:
	FUNC9(dev);

 eenable:
	FUNC5(dev);

	FUNC2(&dev->dev, "GEODE AES initialization failed.\n");
	return ret;
}