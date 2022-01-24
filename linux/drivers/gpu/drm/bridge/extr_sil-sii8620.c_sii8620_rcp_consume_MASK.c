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
typedef  int u8 ;
struct sii8620 {int /*<<< orphan*/  rc_dev; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int MHL_RCP_KEY_ID_MASK ; 
 int MHL_RCP_KEY_RELEASED_MASK ; 
 int /*<<< orphan*/  RC_PROTO_CEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct sii8620 *ctx, u8 scancode)
{
	bool pressed = !(scancode & MHL_RCP_KEY_RELEASED_MASK);

	scancode &= MHL_RCP_KEY_ID_MASK;

	if (!ctx->rc_dev) {
		FUNC0(ctx->dev, "RCP input device not initialized\n");
		return false;
	}

	if (pressed)
		FUNC1(ctx->rc_dev, RC_PROTO_CEC, scancode, 0);
	else
		FUNC2(ctx->rc_dev);

	return true;
}