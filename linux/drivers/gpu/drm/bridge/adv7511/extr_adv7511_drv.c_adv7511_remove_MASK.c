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
struct i2c_client {int dummy; } ;
struct adv7511 {scalar_t__ type; int /*<<< orphan*/  i2c_edid; int /*<<< orphan*/  i2c_packet; int /*<<< orphan*/  cec_adap; int /*<<< orphan*/  bridge; scalar_t__ cec_clk; int /*<<< orphan*/  i2c_cec; } ;

/* Variables and functions */
 scalar_t__ ADV7533 ; 
 int /*<<< orphan*/  FUNC0 (struct adv7511*) ; 
 int /*<<< orphan*/  FUNC1 (struct adv7511*) ; 
 int /*<<< orphan*/  FUNC2 (struct adv7511*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct adv7511* FUNC6 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *i2c)
{
	struct adv7511 *adv7511 = FUNC6(i2c);

	if (adv7511->type == ADV7533)
		FUNC2(adv7511);
	FUNC7(adv7511->i2c_cec);
	if (adv7511->cec_clk)
		FUNC4(adv7511->cec_clk);

	FUNC1(adv7511);

	FUNC5(&adv7511->bridge);

	FUNC0(adv7511);

	FUNC3(adv7511->cec_adap);

	FUNC7(adv7511->i2c_packet);
	FUNC7(adv7511->i2c_edid);

	return 0;
}