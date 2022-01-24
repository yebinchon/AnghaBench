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
typedef  int u32 ;
struct etnaviv_cmdbuf {int /*<<< orphan*/  user_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct etnaviv_cmdbuf*,int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int VIV_FE_LOAD_STATE_HEADER_OFFSET__SHR ; 
 int VIV_FE_LOAD_STATE_HEADER_OP_LOAD_STATE ; 

__attribute__((used)) static inline void FUNC4(struct etnaviv_cmdbuf *buffer,
	u32 reg, u32 value)
{
	u32 index = reg >> VIV_FE_LOAD_STATE_HEADER_OFFSET__SHR;

	buffer->user_size = FUNC0(buffer->user_size, 8);

	/* write a register via cmd stream */
	FUNC1(buffer, VIV_FE_LOAD_STATE_HEADER_OP_LOAD_STATE |
		    FUNC2(1) |
		    FUNC3(index));
	FUNC1(buffer, value);
}