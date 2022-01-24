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
struct intel_engine_cs {char* name; } ;
struct drm_i915_error_state_buf {int dummy; } ;
struct drm_i915_error_object {int page_count; int /*<<< orphan*/ ** pages; scalar_t__ unused; int /*<<< orphan*/  gtt_offset; } ;

/* Variables and functions */
 int ASCII85_BUFSZ ; 
 int PAGE_SIZE ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_error_state_buf*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_error_state_buf*,char*,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_error_state_buf*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct drm_i915_error_state_buf *m,
			    const struct intel_engine_cs *engine,
			    const char *name,
			    const struct drm_i915_error_object *obj)
{
	char out[ASCII85_BUFSZ];
	int page;

	if (!obj)
		return;

	if (name) {
		FUNC3(m, "%s --- %s = 0x%08x %08x\n",
			   engine ? engine->name : "global", name,
			   FUNC6(obj->gtt_offset),
			   FUNC5(obj->gtt_offset));
	}

	FUNC2(m);
	for (page = 0; page < obj->page_count; page++) {
		int i, len;

		len = PAGE_SIZE;
		if (page == obj->page_count - 1)
			len -= obj->unused;
		len = FUNC1(len);

		for (i = 0; i < len; i++)
			FUNC4(m, FUNC0(obj->pages[page][i], out));
	}
	FUNC4(m, "\n");
}