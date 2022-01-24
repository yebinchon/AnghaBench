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
typedef  scalar_t__ u32 ;
struct s5p_aes_dev {scalar_t__ io_hash_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static inline void FUNC1(struct s5p_aes_dev *dd,
				  u32 offset, u32 value)
{
	FUNC0(value, dd->io_hash_base + offset);
}