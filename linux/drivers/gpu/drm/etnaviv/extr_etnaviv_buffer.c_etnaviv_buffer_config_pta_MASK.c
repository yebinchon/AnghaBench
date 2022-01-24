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
typedef  int u16 ;
struct etnaviv_cmdbuf {int user_size; } ;
struct etnaviv_gpu {int /*<<< orphan*/  lock; struct etnaviv_cmdbuf buffer; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct etnaviv_cmdbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct etnaviv_cmdbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VIVS_MMUv2_PTA_CONFIG ; 
 int /*<<< orphan*/  FUNC3 (unsigned short) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

u16 FUNC5(struct etnaviv_gpu *gpu, unsigned short id)
{
	struct etnaviv_cmdbuf *buffer = &gpu->buffer;

	FUNC4(&gpu->lock);

	buffer->user_size = 0;

	FUNC2(buffer, VIVS_MMUv2_PTA_CONFIG,
		       FUNC3(id));

	FUNC1(buffer);

	buffer->user_size = FUNC0(buffer->user_size, 8);

	return buffer->user_size / 8;
}