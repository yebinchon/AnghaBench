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
struct bw_fixed {int value; } ;
typedef  int int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int,int) ; 

struct bw_fixed FUNC3(
	const struct bw_fixed arg,
	const struct bw_fixed significance)
{
	struct bw_fixed result;
	int64_t multiplicand;

	multiplicand = FUNC2(arg.value, FUNC1(significance.value));
	result.value = FUNC1(significance.value) * multiplicand;
	FUNC0(FUNC1(result.value) <= FUNC1(arg.value));
	return result;
}