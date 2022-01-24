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
 int FUNC0 (int,int,int,int) ; 

__attribute__((used)) static inline u32 FUNC1(u32 mode, u32 llc_ctl)
{
	u32 ctl;

	ctl = FUNC0(mode, 4, 28, 28) |
	      FUNC0(mode, 8, 16, 20) |
	      FUNC0(mode, 4, 8, 16) |
	      FUNC0(mode, 6, 0, 10) |
	      FUNC0(llc_ctl, 2, 10, 8) |
	      FUNC0(llc_ctl, 2, 8, 6);

	return ctl;
}