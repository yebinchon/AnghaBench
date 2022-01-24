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
typedef  int /*<<< orphan*/  u32 ;
struct reloc_cache {int rq_size; int /*<<< orphan*/ * rq_cmd; int /*<<< orphan*/  rq; } ;
struct i915_vma {int dummy; } ;
struct i915_execbuffer {int /*<<< orphan*/  engine; struct reloc_cache reloc_cache; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int EWOULDBLOCK ; 
 int PAGE_SIZE ; 
 int FUNC1 (struct i915_execbuffer*,struct i915_vma*,unsigned int) ; 
 scalar_t__ FUNC2 (struct i915_execbuffer*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct reloc_cache*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static u32 *FUNC6(struct i915_execbuffer *eb,
		      struct i915_vma *vma,
		      unsigned int len)
{
	struct reloc_cache *cache = &eb->reloc_cache;
	u32 *cmd;

	if (cache->rq_size > PAGE_SIZE/sizeof(u32) - (len + 1))
		FUNC4(cache);

	if (FUNC5(!cache->rq)) {
		int err;

		/* If we need to copy for the cmdparser, we will stall anyway */
		if (FUNC2(eb))
			return FUNC0(-EWOULDBLOCK);

		if (!FUNC3(eb->engine))
			return FUNC0(-ENODEV);

		err = FUNC1(eb, vma, len);
		if (FUNC5(err))
			return FUNC0(err);
	}

	cmd = cache->rq_cmd + cache->rq_size;
	cache->rq_size += len;

	return cmd;
}