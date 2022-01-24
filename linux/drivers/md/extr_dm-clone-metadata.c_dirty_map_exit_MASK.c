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
struct dm_clone_metadata {TYPE_1__* dmap; } ;
struct TYPE_2__ {int /*<<< orphan*/  dirty_words; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct dm_clone_metadata *cmd)
{
	FUNC0(cmd->dmap[0].dirty_words);
	FUNC0(cmd->dmap[1].dirty_words);
}