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
struct sunxi_engine {int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SUN8I_MIXER_GLOBAL_DBUFF ; 
 int /*<<< orphan*/  SUN8I_MIXER_GLOBAL_DBUFF_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct sunxi_engine *engine)
{
	FUNC0("Committing changes\n");

	FUNC1(engine->regs, SUN8I_MIXER_GLOBAL_DBUFF,
		     SUN8I_MIXER_GLOBAL_DBUFF_ENABLE);
}