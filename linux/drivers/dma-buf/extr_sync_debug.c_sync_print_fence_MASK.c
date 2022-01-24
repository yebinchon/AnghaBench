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
typedef  int /*<<< orphan*/  value ;
struct timespec64 {int /*<<< orphan*/  tv_nsec; scalar_t__ tv_sec; } ;
struct sync_timeline {char* name; } ;
struct seq_file {int dummy; } ;
struct dma_fence {TYPE_1__* ops; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  s64 ;
struct TYPE_2__ {int /*<<< orphan*/  (* timeline_value_str ) (struct dma_fence*,char*,int) ;int /*<<< orphan*/  (* fence_value_str ) (struct dma_fence*,char*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FENCE_FLAG_TIMESTAMP_BIT ; 
 int FUNC0 (struct dma_fence*) ; 
 struct sync_timeline* FUNC1 (struct dma_fence*) ; 
 struct timespec64 FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct dma_fence*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct dma_fence*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct seq_file *s,
			     struct dma_fence *fence, bool show)
{
	struct sync_timeline *parent = FUNC1(fence);
	int status;

	status = FUNC0(fence);

	FUNC3(s, "  %s%sfence %s",
		   show ? parent->name : "",
		   show ? "_" : "",
		   FUNC8(status));

	if (FUNC9(DMA_FENCE_FLAG_TIMESTAMP_BIT, &fence->flags)) {
		struct timespec64 ts64 =
			FUNC2(fence->timestamp);

		FUNC3(s, "@%lld.%09ld", (s64)ts64.tv_sec, ts64.tv_nsec);
	}

	if (fence->ops->timeline_value_str &&
		fence->ops->fence_value_str) {
		char value[64];
		bool success;

		fence->ops->fence_value_str(fence, value, sizeof(value));
		success = FUNC5(value);

		if (success) {
			FUNC3(s, ": %s", value);

			fence->ops->timeline_value_str(fence, value,
						       sizeof(value));

			if (FUNC5(value))
				FUNC3(s, " / %s", value);
		}
	}

	FUNC4(s, '\n');
}