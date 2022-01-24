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
typedef  int u8 ;
struct fritzcard {scalar_t__ addr; } ;

/* Variables and functions */
 scalar_t__ AVM_ISACX_DATA ; 
 scalar_t__ AVM_ISACX_INDEX ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static u8
FUNC2(void *p, u8 offset)
{
	struct fritzcard *fc = p;

	FUNC1(offset, fc->addr + AVM_ISACX_INDEX);
	return 0xff & FUNC0(fc->addr + AVM_ISACX_DATA);
}