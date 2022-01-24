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
struct cec_adapter {scalar_t__ notifier; int /*<<< orphan*/  cec_dir; int /*<<< orphan*/ * rc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cec_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct cec_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct cec_adapter *adap)
{
	if (FUNC0(adap))
		return;

#ifdef CONFIG_MEDIA_CEC_RC
	/* Note: rc_unregister also calls rc_free */
	rc_unregister_device(adap->rc);
	adap->rc = NULL;
#endif
	FUNC3(adap->cec_dir);
#ifdef CONFIG_CEC_NOTIFIER
	if (adap->notifier)
		cec_notifier_unregister(adap->notifier);
#endif
	FUNC1(adap);
}