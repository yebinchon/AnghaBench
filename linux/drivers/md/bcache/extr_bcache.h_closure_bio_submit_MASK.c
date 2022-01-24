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
struct closure {int dummy; } ;
struct cache_set {int /*<<< orphan*/  flags; } ;
struct bio {int /*<<< orphan*/  bi_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  CACHE_SET_IO_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct closure*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC5(struct cache_set *c,
				      struct bio *bio,
				      struct closure *cl)
{
	FUNC1(cl);
	if (FUNC4(FUNC3(CACHE_SET_IO_DISABLE, &c->flags))) {
		bio->bi_status = BLK_STS_IOERR;
		FUNC0(bio);
		return;
	}
	FUNC2(bio);
}