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
struct i915_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i915_request const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static inline u32 FUNC3(const struct i915_request *rq)
{
	u32 seqno;

	FUNC1(); /* the HWSP may be freed at runtime */
	seqno = FUNC0(rq);
	FUNC2();

	return seqno;
}