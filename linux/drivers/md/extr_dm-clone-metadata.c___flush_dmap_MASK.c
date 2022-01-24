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
struct dm_clone_metadata {unsigned long nr_words; int /*<<< orphan*/  bitmap_lock; } ;
struct dirty_map {scalar_t__ changed; int /*<<< orphan*/  dirty_words; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct dm_clone_metadata*) ; 
 int FUNC2 (struct dm_clone_metadata*,unsigned long) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct dm_clone_metadata *cmd, struct dirty_map *dmap)
{
	int r;
	unsigned long word, flags;

	word = 0;
	do {
		word = FUNC3(dmap->dirty_words, cmd->nr_words, word);

		if (word == cmd->nr_words)
			break;

		r = FUNC2(cmd, word);

		if (r)
			return r;

		FUNC0(word, dmap->dirty_words);
		word++;
	} while (word < cmd->nr_words);

	r = FUNC1(cmd);

	if (r)
		return r;

	/* Update the changed flag */
	FUNC4(&cmd->bitmap_lock, flags);
	dmap->changed = 0;
	FUNC5(&cmd->bitmap_lock, flags);

	return 0;
}