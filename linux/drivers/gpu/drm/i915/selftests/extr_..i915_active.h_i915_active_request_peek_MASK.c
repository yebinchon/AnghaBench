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
struct i915_active_request {int dummy; } ;

/* Variables and functions */
 struct i915_request* FUNC0 (struct i915_active_request const*,struct mutex*) ; 
 scalar_t__ FUNC1 (struct i915_request*) ; 

__attribute__((used)) static inline struct i915_request *
FUNC2(const struct i915_active_request *active,
			 struct mutex *mutex)
{
	struct i915_request *request;

	request = FUNC0(active, mutex);
	if (!request || FUNC1(request))
		return NULL;

	return request;
}