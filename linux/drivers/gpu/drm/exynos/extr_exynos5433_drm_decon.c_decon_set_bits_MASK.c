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
typedef  int u32 ;
struct decon_context {int addr; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static inline void FUNC2(struct decon_context *ctx, u32 reg, u32 mask,
				  u32 val)
{
	val = (val & mask) | (FUNC0(ctx->addr + reg) & ~mask);
	FUNC1(val, ctx->addr + reg);
}