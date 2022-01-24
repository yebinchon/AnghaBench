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
typedef  int /*<<< orphan*/  u16 ;
struct sii8620 {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sii8620*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sii8620*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct sii8620 *ctx, u16 addr, u8 mask, u8 val)
{
	val = (val & mask) | (FUNC0(ctx, addr) & ~mask);
	FUNC1(ctx, addr, val);
}