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
struct r5conf {int dummy; } ;
struct hlist_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct hlist_head*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long long) ; 
 struct hlist_head* FUNC2 (struct r5conf*,scalar_t__) ; 

__attribute__((used)) static inline void FUNC3(struct r5conf *conf, struct stripe_head *sh)
{
	struct hlist_head *hp = FUNC2(conf, sh->sector);

	FUNC1("insert_hash(), stripe %llu\n",
		(unsigned long long)sh->sector);

	FUNC0(&sh->hash, hp);
}