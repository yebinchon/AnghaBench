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
struct TYPE_2__ {int resend; scalar_t__ mbox; scalar_t__ bmi; scalar_t__ efl; scalar_t__ lbc; scalar_t__ pem; scalar_t__ pom; scalar_t__ nps_pkt; scalar_t__ nps_core; } ;
union nps_core_int_active {int /*<<< orphan*/  value; TYPE_1__ s; } ;
struct nitrox_q_vector {struct nitrox_device* ndev; } ;
struct nitrox_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  NPS_CORE_INT_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct nitrox_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct nitrox_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct nitrox_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct nitrox_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct nitrox_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct nitrox_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct nitrox_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct nitrox_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct nitrox_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct nitrox_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *data)
{
	struct nitrox_q_vector *qvec = data;
	struct nitrox_device *ndev = qvec->ndev;
	union nps_core_int_active core_int;

	core_int.value = FUNC8(ndev, NPS_CORE_INT_ACTIVE);

	if (core_int.s.nps_core)
		FUNC3(ndev);

	if (core_int.s.nps_pkt)
		FUNC4(ndev);

	if (core_int.s.pom)
		FUNC6(ndev);

	if (core_int.s.pem)
		FUNC5(ndev);

	if (core_int.s.lbc)
		FUNC2(ndev);

	if (core_int.s.efl)
		FUNC1(ndev);

	if (core_int.s.bmi)
		FUNC0(ndev);

	/* Mailbox interrupt */
	if (core_int.s.mbox)
		FUNC7(ndev);

	/* If more work callback the ISR, set resend */
	core_int.s.resend = 1;
	FUNC9(ndev, NPS_CORE_INT_ACTIVE, core_int.value);

	return IRQ_HANDLED;
}