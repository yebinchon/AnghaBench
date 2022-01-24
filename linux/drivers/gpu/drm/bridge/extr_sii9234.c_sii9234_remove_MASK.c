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
struct sii9234 {int /*<<< orphan*/  bridge; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct sii9234* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct sii9234*) ; 
 int /*<<< orphan*/  FUNC3 (struct sii9234*) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client)
{
	struct sii9234 *ctx = FUNC1(client);

	FUNC2(ctx);
	FUNC0(&ctx->bridge);
	FUNC3(ctx);

	return 0;
}