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
 char FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static void FUNC2 (char b, char c)
{
	int i;

	for(i = 0; i < 3; ++i) {
		FUNC0(0x3f6);
		FUNC1(b,0xb0);
		FUNC0(0x3f6);
		FUNC1(c,0xb4);
		FUNC0(0x3f6);
		if(FUNC0(0xb4) == c) {
			FUNC1(7,0xb0);
			FUNC0(0x3f6);
			return;	/* success */
		}
	}
}