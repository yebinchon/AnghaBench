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
struct mutex {int dummy; } ;
struct i915_request {int dummy; } ;
struct i915_active_request {int /*<<< orphan*/  request; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mutex*) ; 
 struct i915_request* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct i915_request *
FUNC2(const struct i915_active_request *active,
			struct mutex *mutex)
{
	return FUNC1(active->request,
					 FUNC0(mutex));
}