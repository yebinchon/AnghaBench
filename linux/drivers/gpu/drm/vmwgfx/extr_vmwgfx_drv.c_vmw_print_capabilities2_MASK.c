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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int SVGA_CAP2_GROW_OTABLE ; 
 int SVGA_CAP2_INTRA_SURFACE_COPY ; 

__attribute__((used)) static void FUNC1(uint32_t capabilities2)
{
	FUNC0("Capabilities2:\n");
	if (capabilities2 & SVGA_CAP2_GROW_OTABLE)
		FUNC0("  Grow oTable.\n");
	if (capabilities2 & SVGA_CAP2_INTRA_SURFACE_COPY)
		FUNC0("  IntraSurface copy.\n");
}