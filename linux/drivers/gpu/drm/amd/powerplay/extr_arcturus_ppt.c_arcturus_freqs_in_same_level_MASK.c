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
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ EPSILON ; 
 scalar_t__ FUNC0 (scalar_t__) ; 

__attribute__((used)) static int FUNC1(int32_t frequency1,
					int32_t frequency2)
{
	return (FUNC0(frequency1 - frequency2) <= EPSILON);
}