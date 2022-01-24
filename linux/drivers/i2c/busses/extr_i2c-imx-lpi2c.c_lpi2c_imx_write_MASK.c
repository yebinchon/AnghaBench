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
struct lpi2c_imx_struct {int /*<<< orphan*/  tx_buf; } ;
struct i2c_msg {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lpi2c_imx_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpi2c_imx_struct*) ; 

__attribute__((used)) static void FUNC2(struct lpi2c_imx_struct *lpi2c_imx,
			    struct i2c_msg *msgs)
{
	lpi2c_imx->tx_buf = msgs->buf;
	FUNC0(lpi2c_imx);
	FUNC1(lpi2c_imx);
}