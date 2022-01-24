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
struct sun4i_ps2data {scalar_t__ reg_base; } ;
struct serio {struct sun4i_ps2data* port_data; } ;

/* Variables and functions */
 int PS2_FSTS_TXRDY ; 
 scalar_t__ PS2_REG_DATA ; 
 scalar_t__ PS2_REG_FSTS ; 
 int SERIO_TIMEOUT ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct serio *serio, unsigned char val)
{
	unsigned long expire = jiffies + FUNC0(10000);
	struct sun4i_ps2data *drvdata = serio->port_data;

	do {
		if (FUNC1(drvdata->reg_base + PS2_REG_FSTS) & PS2_FSTS_TXRDY) {
			FUNC3(val, drvdata->reg_base + PS2_REG_DATA);
			return 0;
		}
	} while (FUNC2(jiffies, expire));

	return SERIO_TIMEOUT;
}