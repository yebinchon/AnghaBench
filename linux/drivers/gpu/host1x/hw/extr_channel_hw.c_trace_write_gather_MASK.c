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
typedef  int u32 ;
struct host1x_cdma {int dummy; } ;
struct host1x_bo {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;

/* Variables and functions */
 scalar_t__ TRACE_MAX_LENGTH ; 
 TYPE_1__* FUNC0 (struct host1x_cdma*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 void* FUNC2 (struct host1x_bo*) ; 
 int /*<<< orphan*/  FUNC3 (struct host1x_bo*,void*) ; 
 scalar_t__ host1x_debug_trace_cmdbuf ; 
 int FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct host1x_bo*,int,int,void*) ; 

__attribute__((used)) static void FUNC6(struct host1x_cdma *cdma, struct host1x_bo *bo,
			       u32 offset, u32 words)
{
	struct device *dev = FUNC0(cdma)->dev;
	void *mem = NULL;

	if (host1x_debug_trace_cmdbuf)
		mem = FUNC2(bo);

	if (mem) {
		u32 i;
		/*
		 * Write in batches of 128 as there seems to be a limit
		 * of how much you can output to ftrace at once.
		 */
		for (i = 0; i < words; i += TRACE_MAX_LENGTH) {
			u32 num_words = FUNC4(words - i, TRACE_MAX_LENGTH);

			offset += i * sizeof(u32);

			FUNC5(FUNC1(dev), bo,
						      num_words, offset,
						      mem);
		}

		FUNC3(bo, mem);
	}
}