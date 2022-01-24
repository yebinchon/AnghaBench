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
struct stripe_head {int /*<<< orphan*/  hash; scalar_t__ sector; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long long) ; 

__attribute__((used)) static inline void FUNC2(struct stripe_head *sh)
{
	FUNC1("remove_hash(), stripe %llu\n",
		(unsigned long long)sh->sector);

	FUNC0(&sh->hash);
}