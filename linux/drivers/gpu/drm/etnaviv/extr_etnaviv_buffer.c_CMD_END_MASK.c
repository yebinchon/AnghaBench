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
struct etnaviv_cmdbuf {int /*<<< orphan*/  user_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct etnaviv_cmdbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VIV_FE_END_HEADER_OP_END ; 

__attribute__((used)) static inline void FUNC2(struct etnaviv_cmdbuf *buffer)
{
	buffer->user_size = FUNC0(buffer->user_size, 8);

	FUNC1(buffer, VIV_FE_END_HEADER_OP_END);
}