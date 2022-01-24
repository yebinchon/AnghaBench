#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_5__ {scalar_t__ dma_low; scalar_t__ dma_high; scalar_t__ dma_ptr; } ;
typedef  TYPE_1__ drm_via_private_t ;

/* Variables and functions */
 int CMDBUF_ALIGNMENT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,unsigned int) ; 

__attribute__((used)) static inline uint32_t *FUNC2(drm_via_private_t * dev_priv,
				      unsigned int size)
{
	if ((dev_priv->dma_low + size + 4 * CMDBUF_ALIGNMENT_SIZE) >
	    dev_priv->dma_high) {
		FUNC0(dev_priv);
	}
	if (FUNC1(dev_priv, size) != 0)
		return NULL;

	return (uint32_t *) (dev_priv->dma_ptr + dev_priv->dma_low);
}