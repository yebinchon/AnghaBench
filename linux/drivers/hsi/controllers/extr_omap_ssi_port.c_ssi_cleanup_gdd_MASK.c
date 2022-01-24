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
struct omap_ssi_port {int /*<<< orphan*/  pdev; } ;
struct omap_ssi_controller {scalar_t__ sys; TYPE_1__* gdd_trn; scalar_t__ gdd; } ;
struct hsi_port {int dummy; } ;
struct hsi_msg {scalar_t__ ttype; struct hsi_client* cl; } ;
struct hsi_controller {int dummy; } ;
struct hsi_client {int dummy; } ;
struct TYPE_2__ {struct hsi_msg* msg; } ;

/* Variables and functions */
 scalar_t__ HSI_MSG_READ ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ SSI_GDD_MPU_IRQ_ENABLE_REG ; 
 scalar_t__ SSI_GDD_MPU_IRQ_STATUS_REG ; 
 unsigned int SSI_MAX_GDD_LCH ; 
 struct omap_ssi_controller* FUNC1 (struct hsi_controller*) ; 
 struct hsi_port* FUNC2 (struct hsi_client*) ; 
 struct omap_ssi_port* FUNC3 (struct hsi_port*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct hsi_controller *ssi, struct hsi_client *cl)
{
	struct omap_ssi_controller *omap_ssi = FUNC1(ssi);
	struct hsi_port *port = FUNC2(cl);
	struct omap_ssi_port *omap_port = FUNC3(port);
	struct hsi_msg *msg;
	unsigned int i;
	u32 val = 0;
	u32 tmp;

	for (i = 0; i < SSI_MAX_GDD_LCH; i++) {
		msg = omap_ssi->gdd_trn[i].msg;
		if ((!msg) || (msg->cl != cl))
			continue;
		FUNC9(0, omap_ssi->gdd + FUNC0(i));
		val |= (1 << i);
		/*
		 * Clock references for write will be handled in
		 * ssi_cleanup_queues
		 */
		if (msg->ttype == HSI_MSG_READ) {
			FUNC4(omap_port->pdev);
			FUNC5(omap_port->pdev);
		}
		omap_ssi->gdd_trn[i].msg = NULL;
	}
	tmp = FUNC6(omap_ssi->sys + SSI_GDD_MPU_IRQ_ENABLE_REG);
	tmp &= ~val;
	FUNC8(tmp, omap_ssi->sys + SSI_GDD_MPU_IRQ_ENABLE_REG);
	FUNC7(val, omap_ssi->sys + SSI_GDD_MPU_IRQ_STATUS_REG);
}