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
#define  DEVFREQ_GOV_START 129 
#define  DEVFREQ_GOV_STOP 128 
 int /*<<< orphan*/  FUNC0 (struct devfreq*) ; 
 int FUNC1 (struct devfreq*) ; 

__attribute__((used)) static int FUNC2(struct devfreq *devfreq,
			unsigned int event, void *data)
{
	int ret = 0;

	switch (event) {
	case DEVFREQ_GOV_START:
		ret = FUNC1(devfreq);
		break;
	case DEVFREQ_GOV_STOP:
		FUNC0(devfreq);
		break;
	default:
		break;
	}

	return ret;
}