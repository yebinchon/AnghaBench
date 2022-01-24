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
struct s6e8aa0 {int version; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (struct s6e8aa0*,int const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct s6e8aa0 *ctx)
{
	static const u8 pent32[] = {
		0xb6, 0x0c, 0x02, 0x03, 0x32, 0xc0, 0x44, 0x44, 0xc0, 0x00
	};

	static const u8 pent142[] = {
		0xb6, 0x0c, 0x02, 0x03, 0x32, 0xff, 0x44, 0x44, 0xc0, 0x00
	};

	if (ctx->version < 142)
		FUNC1(ctx, pent32, FUNC0(pent32));
	else
		FUNC1(ctx, pent142, FUNC0(pent142));
}