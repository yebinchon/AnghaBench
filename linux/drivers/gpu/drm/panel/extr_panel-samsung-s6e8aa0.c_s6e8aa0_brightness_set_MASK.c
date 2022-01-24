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
typedef  int /*<<< orphan*/  u8 ;
struct s6e8aa0 {size_t brightness; int version; TYPE_1__* variant; scalar_t__ error; } ;
struct TYPE_2__ {int /*<<< orphan*/ ** gamma_tables; } ;

/* Variables and functions */
 int /*<<< orphan*/  GAMMA_TABLE_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct s6e8aa0*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct s6e8aa0*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct s6e8aa0*) ; 

__attribute__((used)) static void FUNC3(struct s6e8aa0 *ctx)
{
	const u8 *gamma;

	if (ctx->error)
		return;

	gamma = ctx->variant->gamma_tables[ctx->brightness];

	if (ctx->version >= 142)
		FUNC2(ctx);

	FUNC0(ctx, gamma, GAMMA_TABLE_LEN);

	/* update gamma table. */
	FUNC1(ctx, 0xf7, 0x03);
}