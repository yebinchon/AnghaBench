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

/* Variables and functions */
 float FUNC0 (float,float) ; 
 float FUNC1 (float,float,float) ; 

float FUNC2(float v1, float v2, float v3, float v4, float v5)
{
	return FUNC1(v1, v2, v3) > FUNC0(v4, v5) ? FUNC1(v1, v2, v3) : FUNC0(v4, v5);
}