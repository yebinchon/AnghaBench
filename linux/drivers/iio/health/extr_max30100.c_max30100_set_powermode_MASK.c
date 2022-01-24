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
struct max30100_data {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX30100_REG_MODE_CONFIG ; 
 int /*<<< orphan*/  MAX30100_REG_MODE_CONFIG_PWR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct max30100_data *data, bool state)
{
	return FUNC0(data->regmap, MAX30100_REG_MODE_CONFIG,
				  MAX30100_REG_MODE_CONFIG_PWR,
				  state ? 0 : MAX30100_REG_MODE_CONFIG_PWR);
}