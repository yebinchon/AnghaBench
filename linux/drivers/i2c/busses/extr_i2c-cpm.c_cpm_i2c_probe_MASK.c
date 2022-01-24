#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_9__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_4__ dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  of_node; TYPE_4__* parent; } ;
struct TYPE_8__ {int nr; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct cpm_i2c {TYPE_2__ adap; struct platform_device* ofdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (struct cpm_i2c*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpm_i2c*) ; 
 TYPE_2__ cpm_ops ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,char*) ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,struct cpm_i2c*) ; 
 int /*<<< orphan*/  FUNC7 (struct cpm_i2c*) ; 
 struct cpm_i2c* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct cpm_i2c*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *ofdev)
{
	int result, len;
	struct cpm_i2c *cpm;
	const u32 *data;

	cpm = FUNC8(sizeof(struct cpm_i2c), GFP_KERNEL);
	if (!cpm)
		return -ENOMEM;

	cpm->ofdev = ofdev;

	FUNC11(ofdev, cpm);

	cpm->adap = cpm_ops;
	FUNC6(&cpm->adap, cpm);
	cpm->adap.dev.parent = &ofdev->dev;
	cpm->adap.dev.of_node = FUNC10(ofdev->dev.of_node);

	result = FUNC1(cpm);
	if (result) {
		FUNC4(&ofdev->dev, "Unable to init hardware\n");
		goto out_free;
	}

	/* register new adapter to i2c module... */

	data = FUNC9(ofdev->dev.of_node, "linux,i2c-index", &len);
	cpm->adap.nr = (data && len == 4) ? FUNC0(data) : -1;
	result = FUNC5(&cpm->adap);

	if (result < 0)
		goto out_shut;

	FUNC3(&ofdev->dev, "hw routines for %s registered.\n",
		cpm->adap.name);

	return 0;
out_shut:
	FUNC2(cpm);
out_free:
	FUNC7(cpm);

	return result;
}