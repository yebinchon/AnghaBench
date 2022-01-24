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
struct zorro_dev {int /*<<< orphan*/  dev; } ;
struct icy_i2c {int /*<<< orphan*/  adapter; int /*<<< orphan*/  ltc2990_fwnode; int /*<<< orphan*/  ltc2990_client; } ;

/* Variables and functions */
 struct icy_i2c* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct zorro_dev *z)
{
	struct icy_i2c *i2c = FUNC0(&z->dev);

	FUNC3(i2c->ltc2990_client);
	FUNC1(i2c->ltc2990_fwnode);

	FUNC2(&i2c->adapter);
}