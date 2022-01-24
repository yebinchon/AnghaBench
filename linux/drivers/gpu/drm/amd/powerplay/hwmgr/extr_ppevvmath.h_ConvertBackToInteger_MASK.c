#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int full; } ;
typedef  TYPE_1__ fInt ;

/* Variables and functions */
 int FUNC0 (TYPE_1__) ; 
 scalar_t__ PRECISION ; 
 TYPE_1__ FUNC1 (TYPE_1__,TYPE_1__) ; 
 int FUNC2 (TYPE_1__) ; 
 int FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4 (fInt A) /*THIS is the function that will be used to check with the Golden settings table*/
{
	fInt fullNumber, scaledDecimal, scaledReal;

	scaledReal.full = FUNC0(A) * FUNC3(10, PRECISION-1); /* DOUBLE CHECK THISSSS!!! */

	scaledDecimal.full = FUNC2(A);

	fullNumber = FUNC1(scaledDecimal,scaledReal);

	return fullNumber.full;
}