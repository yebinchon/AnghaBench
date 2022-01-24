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
struct lima_ip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LIMA_DLBU_FB_DIM ; 
 int /*<<< orphan*/  LIMA_DLBU_START_TILE_POS ; 
 int /*<<< orphan*/  LIMA_DLBU_TLLIST_CONF ; 
 int /*<<< orphan*/  LIMA_DLBU_TLLIST_VBASEADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct lima_ip *ip, u32 *reg)
{
	FUNC0(LIMA_DLBU_TLLIST_VBASEADDR, reg[0]);
	FUNC0(LIMA_DLBU_FB_DIM, reg[1]);
	FUNC0(LIMA_DLBU_TLLIST_CONF, reg[2]);
	FUNC0(LIMA_DLBU_START_TILE_POS, reg[3]);
}