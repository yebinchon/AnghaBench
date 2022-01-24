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
struct lima_ip {struct lima_device* dev; } ;
struct lima_device {int dlbu_dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  LIMA_DLBU_MASTER_TLLIST_PHYS_ADDR ; 
 int /*<<< orphan*/  LIMA_DLBU_MASTER_TLLIST_VADDR ; 
 int LIMA_VA_RESERVE_DLBU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

int FUNC1(struct lima_ip *ip)
{
	struct lima_device *dev = ip->dev;

	FUNC0(LIMA_DLBU_MASTER_TLLIST_PHYS_ADDR, dev->dlbu_dma | 1);
	FUNC0(LIMA_DLBU_MASTER_TLLIST_VADDR, LIMA_VA_RESERVE_DLBU);

	return 0;
}