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
struct sii8620 {scalar_t__ cable_state; int /*<<< orphan*/  bridge; int /*<<< orphan*/  extcon_wq; int /*<<< orphan*/  extcon_nb; scalar_t__ extcon; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXTCON_DISP_MHL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct sii8620* FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (struct sii8620*) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	struct sii8620 *ctx = FUNC3(client);

	if (ctx->extcon) {
		FUNC1(ctx->extcon, EXTCON_DISP_MHL,
					   &ctx->extcon_nb);
		FUNC2(&ctx->extcon_wq);
		if (ctx->cable_state > 0)
			FUNC4(ctx);
	} else {
		FUNC4(ctx);
	}
	FUNC0(&ctx->bridge);

	return 0;
}