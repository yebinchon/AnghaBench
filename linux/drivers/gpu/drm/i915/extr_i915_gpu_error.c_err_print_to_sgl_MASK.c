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
struct i915_gpu_state {int /*<<< orphan*/  sgl; int /*<<< orphan*/  i915; } ;
struct drm_i915_error_state_buf {scalar_t__ cur; scalar_t__ end; int err; scalar_t__ sgl; int /*<<< orphan*/ * buf; scalar_t__ bytes; int /*<<< orphan*/  iter; int /*<<< orphan*/  i915; } ;
typedef  int /*<<< orphan*/  m ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct i915_gpu_state*) ; 
 int FUNC2 (struct i915_gpu_state*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_error_state_buf*,struct i915_gpu_state*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_error_state_buf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct i915_gpu_state *error)
{
	struct drm_i915_error_state_buf m;

	if (FUNC1(error))
		return FUNC2(error);

	if (FUNC3(error->sgl))
		return 0;

	FUNC8(&m, 0, sizeof(m));
	m.i915 = error->i915;

	FUNC4(&m, error);

	if (m.buf) {
		FUNC5(m.cur++, m.buf, m.bytes, m.iter);
		m.bytes = 0;
		m.buf = NULL;
	}
	if (m.cur) {
		FUNC0(m.end < m.cur);
		FUNC9(m.cur - 1);
	}
	FUNC0(m.sgl && !m.cur);

	if (m.err) {
		FUNC7(m.sgl);
		return m.err;
	}

	if (FUNC6(&error->sgl, NULL, m.sgl))
		FUNC7(m.sgl);

	return 0;
}