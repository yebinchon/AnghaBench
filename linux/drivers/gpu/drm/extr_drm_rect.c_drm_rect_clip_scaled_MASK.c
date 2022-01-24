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
typedef  int u32 ;
struct drm_rect {int x1; int x2; int y1; int y2; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  INT_MIN ; 
 void* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_rect*) ; 
 int FUNC3 (struct drm_rect*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_rect*) ; 
 int /*<<< orphan*/  int64_t ; 

bool FUNC5(struct drm_rect *src, struct drm_rect *dst,
			  const struct drm_rect *clip)
{
	int diff;

	diff = clip->x1 - dst->x1;
	if (diff > 0) {
		u32 new_src_w = FUNC1(FUNC4(src),
					    FUNC4(dst), diff);

		src->x1 = FUNC0(int64_t, src->x2 - new_src_w, INT_MIN, INT_MAX);
		dst->x1 = clip->x1;
	}
	diff = clip->y1 - dst->y1;
	if (diff > 0) {
		u32 new_src_h = FUNC1(FUNC2(src),
					    FUNC2(dst), diff);

		src->y1 = FUNC0(int64_t, src->y2 - new_src_h, INT_MIN, INT_MAX);
		dst->y1 = clip->y1;
	}
	diff = dst->x2 - clip->x2;
	if (diff > 0) {
		u32 new_src_w = FUNC1(FUNC4(src),
					    FUNC4(dst), diff);

		src->x2 = FUNC0(int64_t, src->x1 + new_src_w, INT_MIN, INT_MAX);
		dst->x2 = clip->x2;
	}
	diff = dst->y2 - clip->y2;
	if (diff > 0) {
		u32 new_src_h = FUNC1(FUNC2(src),
					    FUNC2(dst), diff);

		src->y2 = FUNC0(int64_t, src->y1 + new_src_h, INT_MIN, INT_MAX);
		dst->y2 = clip->y2;
	}

	return FUNC3(dst);
}