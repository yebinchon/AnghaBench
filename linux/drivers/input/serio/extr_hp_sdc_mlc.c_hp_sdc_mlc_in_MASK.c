#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  suseconds_t ;
struct hp_sdc_mlc_priv_s {scalar_t__ emtestmode; } ;
struct TYPE_3__ {int* ipacket; int opacket; int icount; int /*<<< orphan*/  isem; scalar_t__ intimeout; scalar_t__ instart; struct hp_sdc_mlc_priv_s* priv; } ;
typedef  TYPE_1__ hil_mlc ;

/* Variables and functions */
 int HIL_ERR_INT ; 
 int HIL_PKT_ADDR_MASK ; 
 int HIL_PKT_CMD ; 
 int HIL_PKT_DATA_MASK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(hil_mlc *mlc, suseconds_t timeout)
{
	struct hp_sdc_mlc_priv_s *priv;
	int rc = 2;

	priv = mlc->priv;

	/* Try to down the semaphore */
	if (FUNC0(&mlc->isem)) {
		if (priv->emtestmode) {
			mlc->ipacket[0] =
				HIL_ERR_INT | (mlc->opacket &
					       (HIL_PKT_CMD |
						HIL_PKT_ADDR_MASK |
						HIL_PKT_DATA_MASK));
			mlc->icount = 14;
			/* printk(KERN_DEBUG PREFIX ">[%x]\n", mlc->ipacket[0]); */
			goto wasup;
		}
		if (FUNC1(jiffies, mlc->instart + mlc->intimeout)) {
			/*	printk("!%i %i",
				tv.tv_usec - mlc->instart.tv_usec,
				mlc->intimeout);
			 */
			rc = 1;
			FUNC2(&mlc->isem);
		}
		goto done;
	}
 wasup:
	FUNC2(&mlc->isem);
	rc = 0;
 done:
	return rc;
}