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
typedef  scalar_t__ u32 ;
struct qce_device {int pipe_pair_id; int /*<<< orphan*/  dev; int /*<<< orphan*/  burst_size; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  QCE_BAM_BURST_SIZE ; 
 scalar_t__ QCE_MAJOR_VERSION5 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct qce_device*,scalar_t__*,scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static int FUNC2(struct qce_device *qce)
{
	u32 major, minor, step;

	FUNC1(qce, &major, &minor, &step);

	/*
	 * the driver does not support v5 with minor 0 because it has special
	 * alignment requirements.
	 */
	if (major != QCE_MAJOR_VERSION5 || minor == 0)
		return -ENODEV;

	qce->burst_size = QCE_BAM_BURST_SIZE;
	qce->pipe_pair_id = 1;

	FUNC0(qce->dev, "Crypto device found, version %d.%d.%d\n",
		major, minor, step);

	return 0;
}