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
typedef  int /*<<< orphan*/  u32 ;
struct scatterlist {size_t offset; size_t length; } ;
struct atmel_aes_dma {int nents; size_t remainder; } ;
struct atmel_aes_dev {TYPE_1__* ctx; } ;
struct TYPE_2__ {int block_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,int) ; 
 struct scatterlist* FUNC1 (struct scatterlist*) ; 

__attribute__((used)) static bool FUNC2(struct atmel_aes_dev *dd,
				    struct scatterlist *sg,
				    size_t len,
				    struct atmel_aes_dma *dma)
{
	int nents;

	if (!FUNC0(len, dd->ctx->block_size))
		return false;

	for (nents = 0; sg; sg = FUNC1(sg), ++nents) {
		if (!FUNC0(sg->offset, sizeof(u32)))
			return false;

		if (len <= sg->length) {
			if (!FUNC0(len, dd->ctx->block_size))
				return false;

			dma->nents = nents+1;
			dma->remainder = sg->length - len;
			sg->length = len;
			return true;
		}

		if (!FUNC0(sg->length, dd->ctx->block_size))
			return false;

		len -= sg->length;
	}

	return false;
}