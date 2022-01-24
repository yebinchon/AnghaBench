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
struct devfreq {int dummy; } ;

/* Variables and functions */
#define  DEVFREQ_GOV_INTERVAL 132 
#define  DEVFREQ_GOV_RESUME 131 
#define  DEVFREQ_GOV_START 130 
#define  DEVFREQ_GOV_STOP 129 
#define  DEVFREQ_GOV_SUSPEND 128 
 int /*<<< orphan*/  FUNC0 (struct devfreq*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct devfreq*) ; 
 int /*<<< orphan*/  FUNC2 (struct devfreq*) ; 
 int /*<<< orphan*/  FUNC3 (struct devfreq*) ; 
 int /*<<< orphan*/  FUNC4 (struct devfreq*) ; 

__attribute__((used)) static int FUNC5(struct devfreq *devfreq,
				unsigned int event, void *data)
{
	switch (event) {
	case DEVFREQ_GOV_START:
		FUNC2(devfreq);
		break;

	case DEVFREQ_GOV_STOP:
		FUNC3(devfreq);
		break;

	case DEVFREQ_GOV_INTERVAL:
		FUNC0(devfreq, (unsigned int *)data);
		break;

	case DEVFREQ_GOV_SUSPEND:
		FUNC4(devfreq);
		break;

	case DEVFREQ_GOV_RESUME:
		FUNC1(devfreq);
		break;

	default:
		break;
	}

	return 0;
}