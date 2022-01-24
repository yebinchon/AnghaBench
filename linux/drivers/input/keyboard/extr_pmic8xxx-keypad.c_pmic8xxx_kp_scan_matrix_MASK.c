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
typedef  int /*<<< orphan*/  u16 ;
struct pmic8xxx_kp {int /*<<< orphan*/ * keystate; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  new_state ;

/* Variables and functions */
 int EINVAL ; 
 int PM8XXX_MAX_ROWS ; 
 int /*<<< orphan*/  FUNC0 (struct pmic8xxx_kp*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pmic8xxx_kp*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct pmic8xxx_kp*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct pmic8xxx_kp *kp, unsigned int events)
{
	u16 new_state[PM8XXX_MAX_ROWS];
	u16 old_state[PM8XXX_MAX_ROWS];
	int rc;

	switch (events) {
	case 0x1:
		rc = FUNC4(kp, new_state, NULL);
		if (rc < 0)
			return rc;

		/* detecting ghost key is not an error */
		if (FUNC3(kp, new_state))
			return 0;
		FUNC0(kp, new_state, kp->keystate);
		FUNC2(kp->keystate, new_state, sizeof(new_state));
	break;
	case 0x3: /* two events - eventcounter is gray-coded */
		rc = FUNC4(kp, new_state, old_state);
		if (rc < 0)
			return rc;

		FUNC0(kp, old_state, kp->keystate);
		FUNC0(kp, new_state, old_state);
		FUNC2(kp->keystate, new_state, sizeof(new_state));
	break;
	case 0x2:
		FUNC1(kp->dev, "Some key events were lost\n");
		rc = FUNC4(kp, new_state, old_state);
		if (rc < 0)
			return rc;
		FUNC0(kp, old_state, kp->keystate);
		FUNC0(kp, new_state, old_state);
		FUNC2(kp->keystate, new_state, sizeof(new_state));
	break;
	default:
		rc = -EINVAL;
	}
	return rc;
}