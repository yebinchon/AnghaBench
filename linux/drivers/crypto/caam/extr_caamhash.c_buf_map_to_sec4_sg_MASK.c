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
struct sec4_sg_entry {int dummy; } ;
struct device {int dummy; } ;
struct caam_hash_state {scalar_t__ buf_dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct caam_hash_state*) ; 
 int* FUNC1 (struct caam_hash_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 scalar_t__ FUNC3 (struct device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sec4_sg_entry*,scalar_t__,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC6(struct device *jrdev,
				     struct sec4_sg_entry *sec4_sg,
				     struct caam_hash_state *state)
{
	int buflen = *FUNC1(state);

	if (!buflen)
		return 0;

	state->buf_dma = FUNC3(jrdev, FUNC0(state), buflen,
					DMA_TO_DEVICE);
	if (FUNC4(jrdev, state->buf_dma)) {
		FUNC2(jrdev, "unable to map buf\n");
		state->buf_dma = 0;
		return -ENOMEM;
	}

	FUNC5(sec4_sg, state->buf_dma, buflen, 0);

	return 0;
}