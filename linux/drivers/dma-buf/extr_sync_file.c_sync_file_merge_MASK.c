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
struct sync_file {int /*<<< orphan*/  file; int /*<<< orphan*/  user_name; } ;
struct dma_fence {scalar_t__ context; int /*<<< orphan*/  ops; int /*<<< orphan*/  seqno; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int INT_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_fence**,int*,struct dma_fence*) ; 
 struct dma_fence* FUNC2 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct dma_fence** FUNC4 (struct sync_file*,int*) ; 
 struct dma_fence** FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dma_fence**) ; 
 struct dma_fence** FUNC7 (struct dma_fence**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*,int) ; 
 struct sync_file* FUNC9 () ; 
 scalar_t__ FUNC10 (struct sync_file*,struct dma_fence**,int) ; 

__attribute__((used)) static struct sync_file *FUNC11(const char *name, struct sync_file *a,
					 struct sync_file *b)
{
	struct sync_file *sync_file;
	struct dma_fence **fences, **nfences, **a_fences, **b_fences;
	int i, i_a, i_b, num_fences, a_num_fences, b_num_fences;

	sync_file = FUNC9();
	if (!sync_file)
		return NULL;

	a_fences = FUNC4(a, &a_num_fences);
	b_fences = FUNC4(b, &b_num_fences);
	if (a_num_fences > INT_MAX - b_num_fences)
		return NULL;

	num_fences = a_num_fences + b_num_fences;

	fences = FUNC5(num_fences, sizeof(*fences), GFP_KERNEL);
	if (!fences)
		goto err;

	/*
	 * Assume sync_file a and b are both ordered and have no
	 * duplicates with the same context.
	 *
	 * If a sync_file can only be created with sync_file_merge
	 * and sync_file_create, this is a reasonable assumption.
	 */
	for (i = i_a = i_b = 0; i_a < a_num_fences && i_b < b_num_fences; ) {
		struct dma_fence *pt_a = a_fences[i_a];
		struct dma_fence *pt_b = b_fences[i_b];

		if (pt_a->context < pt_b->context) {
			FUNC1(fences, &i, pt_a);

			i_a++;
		} else if (pt_a->context > pt_b->context) {
			FUNC1(fences, &i, pt_b);

			i_b++;
		} else {
			if (FUNC0(pt_a->seqno, pt_b->seqno,
						 pt_a->ops))
				FUNC1(fences, &i, pt_a);
			else
				FUNC1(fences, &i, pt_b);

			i_a++;
			i_b++;
		}
	}

	for (; i_a < a_num_fences; i_a++)
		FUNC1(fences, &i, a_fences[i_a]);

	for (; i_b < b_num_fences; i_b++)
		FUNC1(fences, &i, b_fences[i_b]);

	if (i == 0)
		fences[i++] = FUNC2(a_fences[0]);

	if (num_fences > i) {
		nfences = FUNC7(fences, i * sizeof(*fences),
				  GFP_KERNEL);
		if (!nfences)
			goto err;

		fences = nfences;
	}

	if (FUNC10(sync_file, fences, i) < 0) {
		FUNC6(fences);
		goto err;
	}

	FUNC8(sync_file->user_name, name, sizeof(sync_file->user_name));
	return sync_file;

err:
	FUNC3(sync_file->file);
	return NULL;

}