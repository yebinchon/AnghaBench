#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct n2_mau {int /*<<< orphan*/  mau_list; int /*<<< orphan*/  mau_info; } ;
struct mdesc_handle {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HV_NCS_QTYPE_MAU ; 
 struct n2_mau* FUNC0 () ; 
 int /*<<< orphan*/  cpu_to_mau ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct n2_mau*) ; 
 int /*<<< orphan*/  FUNC3 (struct n2_mau*) ; 
 int FUNC4 () ; 
 int FUNC5 (struct mdesc_handle*,struct platform_device*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  mau_intr ; 
 struct mdesc_handle* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct mdesc_handle*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (struct mdesc_handle*,struct platform_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct platform_device *dev)
{
	struct mdesc_handle *mdesc;
	struct n2_mau *mp;
	int err;

	FUNC8();

	FUNC9("Found NCP at %pOF\n", dev->dev.of_node);

	mp = FUNC0();
	if (!mp) {
		FUNC1(&dev->dev, "%pOF: Unable to allocate ncp.\n",
			dev->dev.of_node);
		return -ENOMEM;
	}

	err = FUNC4();
	if (err) {
		FUNC1(&dev->dev, "%pOF: Unable to grab global resources.\n",
			dev->dev.of_node);
		goto out_free_ncp;
	}

	mdesc = FUNC6();

	if (!mdesc) {
		FUNC1(&dev->dev, "%pOF: Unable to grab MDESC.\n",
			dev->dev.of_node);
		err = -ENODEV;
		goto out_free_global;
	}

	err = FUNC5(mdesc, dev, &mp->mau_info, "ncp");
	if (err) {
		FUNC1(&dev->dev, "%pOF: Unable to grab IRQ props.\n",
			dev->dev.of_node);
		FUNC7(mdesc);
		goto out_free_global;
	}

	err = FUNC11(mdesc, dev, &mp->mau_info, &mp->mau_list,
			     "mau", HV_NCS_QTYPE_MAU, mau_intr,
			     cpu_to_mau);
	FUNC7(mdesc);

	if (err) {
		FUNC1(&dev->dev, "%pOF: MAU MDESC scan failed.\n",
			dev->dev.of_node);
		goto out_free_global;
	}

	FUNC2(&dev->dev, mp);

	return 0;

out_free_global:
	FUNC10();

out_free_ncp:
	FUNC3(mp);

	return err;
}