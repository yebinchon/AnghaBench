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
typedef  int u8 ;
struct tda998x_priv {int /*<<< orphan*/  wq_edid; scalar_t__ wq_edid_wait; int /*<<< orphan*/  cec_notify; int /*<<< orphan*/  detect_work; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int CEC_INTSTATUS_HDMI ; 
 int /*<<< orphan*/  CEC_PHYS_ADDR_INVALID ; 
 int CEC_RXSHPDINT_HPD ; 
 int CEC_RXSHPDLEV_HPD ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int,int,int) ; 
 int INT_FLAGS_2_EDID_BLK_RD ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  REG_CEC_INTSTATUS ; 
 int /*<<< orphan*/  REG_CEC_RXSHPDINT ; 
 int /*<<< orphan*/  REG_CEC_RXSHPDLEV ; 
 int /*<<< orphan*/  REG_INT_FLAGS_0 ; 
 int /*<<< orphan*/  REG_INT_FLAGS_1 ; 
 int /*<<< orphan*/  REG_INT_FLAGS_2 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct tda998x_priv*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct tda998x_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct tda998x_priv*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *data)
{
	struct tda998x_priv *priv = data;
	u8 sta, cec, lvl, flag0, flag1, flag2;
	bool handled = false;

	sta = FUNC3(priv, REG_CEC_INTSTATUS);
	if (sta & CEC_INTSTATUS_HDMI) {
		cec = FUNC3(priv, REG_CEC_RXSHPDINT);
		lvl = FUNC3(priv, REG_CEC_RXSHPDLEV);
		flag0 = FUNC4(priv, REG_INT_FLAGS_0);
		flag1 = FUNC4(priv, REG_INT_FLAGS_1);
		flag2 = FUNC4(priv, REG_INT_FLAGS_2);
		FUNC0(
			"tda irq sta %02x cec %02x lvl %02x f0 %02x f1 %02x f2 %02x\n",
			sta, cec, lvl, flag0, flag1, flag2);

		if (cec & CEC_RXSHPDINT_HPD) {
			if (lvl & CEC_RXSHPDLEV_HPD) {
				FUNC6(priv);
			} else {
				FUNC5(&priv->detect_work);
				FUNC2(priv->cec_notify,
						   CEC_PHYS_ADDR_INVALID);
			}

			handled = true;
		}

		if ((flag2 & INT_FLAGS_2_EDID_BLK_RD) && priv->wq_edid_wait) {
			priv->wq_edid_wait = 0;
			FUNC7(&priv->wq_edid);
			handled = true;
		}
	}

	return FUNC1(handled);
}