#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct lg4573 {TYPE_1__ panel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct lg4573*,int const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct lg4573 *ctx)
{
	static const u16 gamma_settings[] = {
		0x70D0, 0x7203, 0x7207, 0x7273,
		0x7235, 0x7200, 0x7201, 0x7220,
		0x7200, 0x7203, 0x70D1, 0x7203,
		0x7207, 0x7273, 0x7235, 0x7200,
		0x7201, 0x7220, 0x7200, 0x7203,
		0x70D2, 0x7203, 0x7207, 0x7273,
		0x7235, 0x7200, 0x7201, 0x7220,
		0x7200, 0x7203, 0x70D3, 0x7203,
		0x7207, 0x7273, 0x7235, 0x7200,
		0x7201, 0x7220, 0x7200, 0x7203,
		0x70D4, 0x7203, 0x7207, 0x7273,
		0x7235, 0x7200, 0x7201, 0x7220,
		0x7200, 0x7203, 0x70D5, 0x7203,
		0x7207, 0x7273, 0x7235, 0x7200,
		0x7201, 0x7220, 0x7200, 0x7203,
	};

	FUNC1(ctx->panel.dev, "transfer gamma settings\n");
	return FUNC2(ctx, gamma_settings,
					  FUNC0(gamma_settings));
}