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
struct fritzcard {scalar_t__ addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AVM_ISAC_FIFO ; 
 scalar_t__ CHIP_INDEX ; 
 scalar_t__ CHIP_WINDOW ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC2(void *p, u8 off, u8 *data, int size)
{
	struct fritzcard *fc = p;

	FUNC1(AVM_ISAC_FIFO, fc->addr + CHIP_INDEX);
	FUNC0(fc->addr + CHIP_WINDOW, data, size);
}