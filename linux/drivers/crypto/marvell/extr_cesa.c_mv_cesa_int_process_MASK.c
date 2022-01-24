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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {scalar_t__ last; scalar_t__ first; } ;
struct mv_cesa_engine {TYPE_1__ chain; } ;

/* Variables and functions */
 int FUNC0 (struct mv_cesa_engine*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mv_cesa_engine*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct mv_cesa_engine *engine, u32 status)
{
	if (engine->chain.first && engine->chain.last)
		return FUNC1(engine, status);

	return FUNC0(engine, status);
}