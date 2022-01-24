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
typedef  int /*<<< orphan*/  u32 ;
struct fritzcard {int type; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
#define  AVM_FRITZ_PCI 129 
#define  AVM_FRITZ_PCIV2 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32
FUNC2(struct fritzcard *fc, u32 channel)
{
	switch (fc->type) {
	case AVM_FRITZ_PCIV2:
		return FUNC1(fc->addr, channel);
	case AVM_FRITZ_PCI:
		return FUNC0(fc->addr, channel);
	}
	/* dummy */
	return 0;
}