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
struct mn88443x_priv {int /*<<< orphan*/  client_t; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct mn88443x_priv* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mn88443x_priv*) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client)
{
	struct mn88443x_priv *chip = FUNC0(client);

	FUNC2(chip);

	FUNC1(chip->client_t);

	return 0;
}