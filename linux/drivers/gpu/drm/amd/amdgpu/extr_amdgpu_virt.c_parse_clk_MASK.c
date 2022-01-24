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
typedef  int uint32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int,int*) ; 
 char* FUNC1 (char*,char) ; 

__attribute__((used)) static uint32_t FUNC2(char *buf, bool min)
{
        char *ptr = buf;
        uint32_t clk = 0;

        do {
                ptr = FUNC1(ptr, ':');
                if (!ptr)
                        break;
                ptr+=2;
		if (FUNC0(ptr, 10, &clk))
			return 0;
        } while (!min);

        return clk * 100;
}