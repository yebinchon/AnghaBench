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
typedef  int /*<<< orphan*/  u8 ;
struct hp03_priv {int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int /*<<< orphan*/  HP03_ADC_READ_REG ; 
 int /*<<< orphan*/  HP03_ADC_WRITE_REG ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct hp03_priv *priv, const u8 reg)
{
	int ret;

	ret = FUNC1(priv->client, HP03_ADC_WRITE_REG, reg);
	if (ret < 0)
		return ret;

	FUNC2(50);	/* Wait for conversion to finish */

	return FUNC0(priv->client, HP03_ADC_READ_REG);
}