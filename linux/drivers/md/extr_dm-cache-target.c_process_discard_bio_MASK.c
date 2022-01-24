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
struct TYPE_2__ {scalar_t__ discard_passdown; } ;
struct cache {TYPE_1__ features; } ;
struct bio {int dummy; } ;
typedef  scalar_t__ dm_dblock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct cache*,struct bio*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct cache*,struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct cache*,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 

__attribute__((used)) static bool FUNC7(struct cache *cache, struct bio *bio)
{
	dm_dblock_t b, e;

	// FIXME: do we need to lock the region?  Or can we just assume the
	// user wont be so foolish as to issue discard concurrently with
	// other IO?
	FUNC1(cache, bio, &b, &e);
	while (b != e) {
		FUNC5(cache, b);
		b = FUNC6(FUNC2(b) + 1);
	}

	if (cache->features.discard_passdown) {
		FUNC4(cache, bio);
		FUNC3(bio);
	} else
		FUNC0(bio);

	return false;
}