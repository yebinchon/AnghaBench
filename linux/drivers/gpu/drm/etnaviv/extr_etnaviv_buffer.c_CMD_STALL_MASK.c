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
typedef  int /*<<< orphan*/  u32 ;
struct etnaviv_cmdbuf {int /*<<< orphan*/  user_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct etnaviv_cmdbuf*,int) ; 
 int VIV_FE_STALL_HEADER_OP_STALL ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct etnaviv_cmdbuf *buffer,
	u32 from, u32 to)
{
	buffer->user_size = FUNC0(buffer->user_size, 8);

	FUNC1(buffer, VIV_FE_STALL_HEADER_OP_STALL);
	FUNC1(buffer, FUNC2(from) | FUNC3(to));
}