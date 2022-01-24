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
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int /*<<< orphan*/  VBE_DISPI_IOPORT_DATA ; 
 int /*<<< orphan*/  VBE_DISPI_IOPORT_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(u16 index, u16 data)
{
	FUNC0(index, VBE_DISPI_IOPORT_INDEX);
	FUNC0(data, VBE_DISPI_IOPORT_DATA);
}