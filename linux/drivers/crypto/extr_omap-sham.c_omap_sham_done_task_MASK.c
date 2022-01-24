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
struct omap_sham_dev {int err; int /*<<< orphan*/  flags; int /*<<< orphan*/  req; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLAGS_BUSY ; 
 int /*<<< orphan*/  FLAGS_CPU ; 
 int /*<<< orphan*/  FLAGS_DMA_ACTIVE ; 
 int /*<<< orphan*/  FLAGS_DMA_READY ; 
 int /*<<< orphan*/  FLAGS_OUTPUT_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_sham_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct omap_sham_dev*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(unsigned long data)
{
	struct omap_sham_dev *dd = (struct omap_sham_dev *)data;
	int err = 0;

	if (!FUNC6(FLAGS_BUSY, &dd->flags)) {
		FUNC3(dd, NULL);
		return;
	}

	if (FUNC6(FLAGS_CPU, &dd->flags)) {
		if (FUNC5(FLAGS_OUTPUT_READY, &dd->flags))
			goto finish;
	} else if (FUNC6(FLAGS_DMA_READY, &dd->flags)) {
		if (FUNC5(FLAGS_DMA_ACTIVE, &dd->flags)) {
			FUNC4(dd);
			if (dd->err) {
				err = dd->err;
				goto finish;
			}
		}
		if (FUNC5(FLAGS_OUTPUT_READY, &dd->flags)) {
			/* hash or semi-hash ready */
			FUNC0(FLAGS_DMA_READY, &dd->flags);
			goto finish;
		}
	}

	return;

finish:
	FUNC1(dd->dev, "update done: err: %d\n", err);
	/* finish curent request */
	FUNC2(dd->req, err);

	/* If we are not busy, process next req */
	if (!FUNC6(FLAGS_BUSY, &dd->flags))
		FUNC3(dd, NULL);
}