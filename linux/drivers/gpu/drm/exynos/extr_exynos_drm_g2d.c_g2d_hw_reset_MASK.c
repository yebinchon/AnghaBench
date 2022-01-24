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
struct g2d_data {int /*<<< orphan*/  flags; scalar_t__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  G2D_BIT_ENGINE_BUSY ; 
 int G2D_R ; 
 int G2D_SFRCLEAR ; 
 scalar_t__ G2D_SOFT_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static inline void FUNC2(struct g2d_data *g2d)
{
	FUNC1(G2D_R | G2D_SFRCLEAR, g2d->regs + G2D_SOFT_RESET);
	FUNC0(G2D_BIT_ENGINE_BUSY, &g2d->flags);
}