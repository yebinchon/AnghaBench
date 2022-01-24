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
struct scatterlist {int /*<<< orphan*/  length; } ;
struct atmel_aes_dma {int nents; scalar_t__ remainder; struct scatterlist* sg; } ;

/* Variables and functions */
 struct scatterlist* FUNC0 (struct scatterlist*) ; 

__attribute__((used)) static inline void FUNC1(const struct atmel_aes_dma *dma)
{
	struct scatterlist *sg = dma->sg;
	int nents = dma->nents;

	if (!dma->remainder)
		return;

	while (--nents > 0 && sg)
		sg = FUNC0(sg);

	if (!sg)
		return;

	sg->length += dma->remainder;
}