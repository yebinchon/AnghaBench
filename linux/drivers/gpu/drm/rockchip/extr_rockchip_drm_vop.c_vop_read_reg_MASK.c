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
typedef  int uint32_t ;
struct vop_reg {int offset; int shift; int mask; } ;
struct vop {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct vop*,int) ; 

__attribute__((used)) static inline uint32_t FUNC1(struct vop *vop, uint32_t base,
				    const struct vop_reg *reg)
{
	return (FUNC0(vop, base + reg->offset) >> reg->shift) & reg->mask;
}