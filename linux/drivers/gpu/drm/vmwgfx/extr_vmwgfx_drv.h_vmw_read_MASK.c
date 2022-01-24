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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u32 ;
struct vmw_private {int /*<<< orphan*/  hw_lock; scalar_t__ io_start; } ;

/* Variables and functions */
 scalar_t__ VMWGFX_INDEX_PORT ; 
 scalar_t__ VMWGFX_VALUE_PORT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline uint32_t FUNC4(struct vmw_private *dev_priv,
				unsigned int offset)
{
	u32 val;

	FUNC2(&dev_priv->hw_lock);
	FUNC1(offset, dev_priv->io_start + VMWGFX_INDEX_PORT);
	val = FUNC0(dev_priv->io_start + VMWGFX_VALUE_PORT);
	FUNC3(&dev_priv->hw_lock);

	return val;
}