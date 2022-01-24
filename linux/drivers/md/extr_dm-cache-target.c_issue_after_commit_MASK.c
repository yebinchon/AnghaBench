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
struct bio {int dummy; } ;
struct batcher {int commit_scheduled; int /*<<< orphan*/  lock; int /*<<< orphan*/  bios; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct batcher*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct batcher *b, struct bio *bio)
{
       unsigned long flags;
       bool commit_scheduled;

       FUNC2(&b->lock, flags);
       commit_scheduled = b->commit_scheduled;
       FUNC1(&b->bios, bio);
       FUNC3(&b->lock, flags);

       if (commit_scheduled)
	       FUNC0(b);
}