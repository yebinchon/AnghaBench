#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct boundary   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u64 ;
struct drm_mm_node {int dummy; } ;
struct drm_mm {int dummy; } ;
struct boundary {unsigned int start; unsigned int size; char const* name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__ const*) ; 
 TYPE_1__ const FUNC1 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_mm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char const*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_mm_node*,unsigned int,unsigned int) ; 

__attribute__((used)) static bool FUNC5(struct drm_mm *mm,
				     unsigned int count,
				     u64 size)
{
	const struct boundary {
		u64 start, size;
		const char *name;
	} boundaries[] = {
#define B(st, sz) { (st), (sz), "{ " #st ", " #sz "}" }
		B(0, 0),
		B(-size, 0),
		B(size, 0),
		B(size * count, 0),
		B(-size, size),
		B(-size, -size),
		B(-size, 2*size),
		B(0, -size),
		B(size, -size),
		B(count*size, size),
		B(count*size, -size),
		B(count*size, count*size),
		B(count*size, -count*size),
		B(count*size, -(count+1)*size),
		B((count+1)*size, size),
		B((count+1)*size, -size),
		B((count+1)*size, -2*size),
#undef B
	};
	struct drm_mm_node tmp = {};
	int n;

	for (n = 0; n < FUNC0(boundaries); n++) {
		if (!FUNC2(mm,
					 FUNC4(&tmp,
						  boundaries[n].start,
						  boundaries[n].size))) {
			FUNC3("boundary[%d:%s] failed, count=%u, size=%lld\n",
			       n, boundaries[n].name, count, size);
			return false;
		}
	}

	return true;
}