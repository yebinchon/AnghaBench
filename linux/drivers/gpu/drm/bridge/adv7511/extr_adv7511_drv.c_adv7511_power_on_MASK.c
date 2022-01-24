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
struct adv7511 {scalar_t__ type; int powered; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 scalar_t__ ADV7533 ; 
 int /*<<< orphan*/  FUNC0 (struct adv7511*) ; 
 int /*<<< orphan*/  FUNC1 (struct adv7511*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct adv7511 *adv7511)
{
	FUNC0(adv7511);

	/*
	 * Most of the registers are reset during power down or when HPD is low.
	 */
	FUNC2(adv7511->regmap);

	if (adv7511->type == ADV7533)
		FUNC1(adv7511);
	adv7511->powered = true;
}