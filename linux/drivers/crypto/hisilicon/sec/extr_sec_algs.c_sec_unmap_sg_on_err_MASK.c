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
typedef  int /*<<< orphan*/ **** scatterlist ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ *****,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 

__attribute__((used)) static void FUNC2(struct scatterlist *sgl, int steps,
				struct scatterlist **splits, int *splits_nents,
				int sgl_len_in, struct device *dev)
{
	int i;

	for (i = 0; i < steps; i++)
		FUNC1(splits[i]);
	FUNC1(splits_nents);
	FUNC1(splits);

	FUNC0(dev, sgl, sgl_len_in, DMA_BIDIRECTIONAL);
}