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
struct writeset {int dummy; } ;
struct era_metadata {int /*<<< orphan*/  current_writeset; } ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 struct writeset* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct writeset*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct era_metadata *md, dm_block_t block)
{
	bool r;
	struct writeset *ws;

	FUNC1();
	ws = FUNC0(md->current_writeset);
	r = FUNC3(ws, block);
	FUNC2();

	return r;
}