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
typedef  int u32 ;
struct xlp9xx_i2c_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  XLP9XX_I2C_INTEN ; 
 int FUNC0 (struct xlp9xx_i2c_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xlp9xx_i2c_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct xlp9xx_i2c_dev *priv, u32 mask)
{
	u32 inten;

	inten = FUNC0(priv, XLP9XX_I2C_INTEN) | mask;
	FUNC1(priv, XLP9XX_I2C_INTEN, inten);
}