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
struct etnaviv_cmdbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct etnaviv_cmdbuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  VIVS_GL_SEMAPHORE_TOKEN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct etnaviv_cmdbuf *buffer, u32 from, u32 to)
{
	FUNC0(buffer, VIVS_GL_SEMAPHORE_TOKEN,
		       FUNC1(from) |
		       FUNC2(to));
}