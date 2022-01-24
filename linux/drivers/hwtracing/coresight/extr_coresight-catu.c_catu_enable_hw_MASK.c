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
typedef  int u32 ;
struct etr_buf {scalar_t__ mode; struct catu_etr_buf* private; } ;
struct device {int dummy; } ;
struct catu_etr_buf {int /*<<< orphan*/  sladdr; } ;
struct catu_drvdata {int /*<<< orphan*/  base; TYPE_1__* csdev; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CATU_CONTROL_ENABLE ; 
 int /*<<< orphan*/  CATU_DEFAULT_INADDR ; 
 int CATU_MODE_PASS_THROUGH ; 
 int CATU_MODE_TRANSLATE ; 
 int /*<<< orphan*/  CATU_OS_AXICTRL ; 
 int EBUSY ; 
 scalar_t__ ETR_MODE_CATU ; 
 int FUNC1 (struct catu_drvdata*) ; 
 scalar_t__ FUNC2 (struct catu_drvdata*) ; 
 int /*<<< orphan*/  FUNC3 (struct catu_drvdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct catu_drvdata*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct catu_drvdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct catu_drvdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct catu_drvdata*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct catu_drvdata*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*,char*) ; 

__attribute__((used)) static int FUNC12(struct catu_drvdata *drvdata, void *data)
{
	int rc;
	u32 control, mode;
	struct etr_buf *etr_buf = data;
	struct device *dev = &drvdata->csdev->dev;

	if (FUNC2(drvdata))
		FUNC11(dev, "Timeout while waiting for READY\n");

	control = FUNC1(drvdata);
	if (control & FUNC0(CATU_CONTROL_ENABLE)) {
		FUNC11(dev, "CATU is already enabled\n");
		return -EBUSY;
	}

	rc = FUNC9(drvdata->base);
	if (rc)
		return rc;

	control |= FUNC0(CATU_CONTROL_ENABLE);

	if (etr_buf && etr_buf->mode == ETR_MODE_CATU) {
		struct catu_etr_buf *catu_buf = etr_buf->private;

		mode = CATU_MODE_TRANSLATE;
		FUNC3(drvdata, CATU_OS_AXICTRL);
		FUNC8(drvdata, catu_buf->sladdr);
		FUNC5(drvdata, CATU_DEFAULT_INADDR);
	} else {
		mode = CATU_MODE_PASS_THROUGH;
		FUNC8(drvdata, 0);
		FUNC5(drvdata, 0);
	}

	FUNC6(drvdata, 0);
	FUNC7(drvdata, mode);
	FUNC4(drvdata, control);
	FUNC10(dev, "Enabled in %s mode\n",
		(mode == CATU_MODE_PASS_THROUGH) ?
		"Pass through" :
		"Translate");
	return 0;
}