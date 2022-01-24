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
struct scatterlist {scalar_t__ dma_address; size_t length; size_t offset; } ;
struct i915_gpu_state {int /*<<< orphan*/  fit; struct scatterlist* sgl; } ;
typedef  int ssize_t ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct scatterlist* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scatterlist*) ; 
 int FUNC3 (struct i915_gpu_state*) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,size_t) ; 
 size_t FUNC5 (size_t,size_t) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 struct scatterlist* FUNC7 (struct scatterlist*) ; 
 int FUNC8 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct scatterlist*) ; 

ssize_t FUNC11(struct i915_gpu_state *error,
				      char *buf, loff_t off, size_t rem)
{
	struct scatterlist *sg;
	size_t count;
	loff_t pos;
	int err;

	if (!error || !rem)
		return 0;

	err = FUNC3(error);
	if (err)
		return err;

	sg = FUNC1(error->fit);
	if (!sg || off < sg->dma_address)
		sg = error->sgl;
	if (!sg)
		return 0;

	pos = sg->dma_address;
	count = 0;
	do {
		size_t len, start;

		if (FUNC8(sg)) {
			sg = FUNC7(sg);
			FUNC0(FUNC8(sg));
		}

		len = sg->length;
		if (pos + len <= off) {
			pos += len;
			continue;
		}

		start = sg->offset;
		if (pos < off) {
			FUNC0(off - pos > len);
			len -= off - pos;
			start += off - pos;
			pos = off;
		}

		len = FUNC5(len, rem);
		FUNC0(!len || len > sg->length);

		FUNC4(buf, FUNC6(FUNC10(sg)) + start, len);

		count += len;
		pos += len;

		buf += len;
		rem -= len;
		if (!rem) {
			FUNC2(error->fit, sg);
			break;
		}
	} while (!FUNC9(sg++));

	return count;
}