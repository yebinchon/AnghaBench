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
struct n2_crypto {int /*<<< orphan*/  cwq_list; int /*<<< orphan*/  cwq_info; } ;
struct mdesc_handle {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HV_NCS_QTYPE_CWQ ; 
 struct n2_crypto* FUNC0 () ; 
 int /*<<< orphan*/  cpu_to_cwq ; 
 int /*<<< orphan*/  cwq_intr ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct n2_crypto*) ; 
 int /*<<< orphan*/  FUNC3 (struct n2_crypto*) ; 
 int FUNC4 () ; 
 int FUNC5 (struct mdesc_handle*,struct platform_device*,int /*<<< orphan*/ *,char*) ; 
 struct mdesc_handle* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct mdesc_handle*) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (struct mdesc_handle*,struct platform_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct platform_device *dev)
{
	struct mdesc_handle *mdesc;
	struct n2_crypto *np;
	int err;

	FUNC9();

	FUNC10("Found N2CP at %pOF\n", dev->dev.of_node);

	np = FUNC0();
	if (!np) {
		FUNC1(&dev->dev, "%pOF: Unable to allocate n2cp.\n",
			dev->dev.of_node);
		return -ENOMEM;
	}

	err = FUNC4();
	if (err) {
		FUNC1(&dev->dev, "%pOF: Unable to grab global resources.\n",
			dev->dev.of_node);
		goto out_free_n2cp;
	}

	mdesc = FUNC6();

	if (!mdesc) {
		FUNC1(&dev->dev, "%pOF: Unable to grab MDESC.\n",
			dev->dev.of_node);
		err = -ENODEV;
		goto out_free_global;
	}
	err = FUNC5(mdesc, dev, &np->cwq_info, "n2cp");
	if (err) {
		FUNC1(&dev->dev, "%pOF: Unable to grab IRQ props.\n",
			dev->dev.of_node);
		FUNC7(mdesc);
		goto out_free_global;
	}

	err = FUNC13(mdesc, dev, &np->cwq_info, &np->cwq_list,
			     "cwq", HV_NCS_QTYPE_CWQ, cwq_intr,
			     cpu_to_cwq);
	FUNC7(mdesc);

	if (err) {
		FUNC1(&dev->dev, "%pOF: CWQ MDESC scan failed.\n",
			dev->dev.of_node);
		goto out_free_global;
	}

	err = FUNC8();
	if (err) {
		FUNC1(&dev->dev, "%pOF: Unable to register algorithms.\n",
			dev->dev.of_node);
		goto out_free_spu_list;
	}

	FUNC2(&dev->dev, np);

	return 0;

out_free_spu_list:
	FUNC12(&np->cwq_list);

out_free_global:
	FUNC11();

out_free_n2cp:
	FUNC3(np);

	return err;
}