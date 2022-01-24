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
struct lima_ip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LIMA_PP_PERF_CNT_0_LIMIT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct lima_ip *ip)
{
	FUNC1(LIMA_PP_PERF_CNT_0_LIMIT, 0xC01A0000);
	return FUNC0(LIMA_PP_PERF_CNT_0_LIMIT) == 0xC01A0000;
}