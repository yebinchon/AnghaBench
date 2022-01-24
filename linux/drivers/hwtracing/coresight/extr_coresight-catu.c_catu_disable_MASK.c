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
struct coresight_device {int dummy; } ;
struct catu_drvdata {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct catu_drvdata*) ; 
 struct catu_drvdata* FUNC3 (struct coresight_device*) ; 

__attribute__((used)) static int FUNC4(struct coresight_device *csdev, void *__unused)
{
	int rc;
	struct catu_drvdata *catu_drvdata = FUNC3(csdev);

	FUNC1(catu_drvdata->base);
	rc = FUNC2(catu_drvdata);
	FUNC0(catu_drvdata->base);
	return rc;
}