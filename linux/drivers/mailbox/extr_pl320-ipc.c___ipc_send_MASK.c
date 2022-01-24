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
typedef  int u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ ipc_base ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(int mbox, u32 *data)
{
	int i;
	for (i = 0; i < 7; i++)
		FUNC2(data[i], ipc_base + FUNC0(mbox, i));
	FUNC2(0x1, ipc_base + FUNC1(mbox));
}