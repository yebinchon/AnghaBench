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
struct sync_file {int /*<<< orphan*/  fence; } ;
struct seq_file {int dummy; } ;
struct dma_fence_array {int num_fences; int /*<<< orphan*/ * fences; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,struct sync_file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sync_file*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct dma_fence_array* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct seq_file *s,
				  struct sync_file *sync_file)
{
	char buf[128];
	int i;

	FUNC2(s, "[%p] %s: %s\n", sync_file,
		   FUNC3(sync_file, buf, sizeof(buf)),
		   FUNC5(FUNC0(sync_file->fence)));

	if (FUNC1(sync_file->fence)) {
		struct dma_fence_array *array = FUNC6(sync_file->fence);

		for (i = 0; i < array->num_fences; ++i)
			FUNC4(s, array->fences[i], true);
	} else {
		FUNC4(s, sync_file->fence, true);
	}
}