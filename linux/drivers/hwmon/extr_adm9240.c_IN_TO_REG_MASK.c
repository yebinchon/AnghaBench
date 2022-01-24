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
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,int,int) ; 
 unsigned long FUNC1 (unsigned long,int /*<<< orphan*/ ,int) ; 
 int* nom_mv ; 

__attribute__((used)) static inline u8 FUNC2(unsigned long val, int n)
{
	val = FUNC1(val, 0, nom_mv[n] * 255 / 192);
	return FUNC0(val, 192, nom_mv[n]);
}