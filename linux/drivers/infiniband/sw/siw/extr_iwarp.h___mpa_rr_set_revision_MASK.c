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
typedef  int /*<<< orphan*/  u8 ;
typedef  int __be16 ;

/* Variables and functions */
 int MPA_RR_MASK_REVISION ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(__be16 *bits, u8 rev)
{
	*bits = (*bits & ~MPA_RR_MASK_REVISION) |
		(FUNC0(rev) & MPA_RR_MASK_REVISION);
}