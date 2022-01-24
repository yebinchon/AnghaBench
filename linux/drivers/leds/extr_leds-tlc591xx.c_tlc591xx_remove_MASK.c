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
struct tlc591xx_priv {int dummy; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TLC591XX_MAX_LEDS ; 
 struct tlc591xx_priv* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct tlc591xx_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct i2c_client *client)
{
	struct tlc591xx_priv *priv = FUNC0(client);

	FUNC1(priv, TLC591XX_MAX_LEDS);

	return 0;
}