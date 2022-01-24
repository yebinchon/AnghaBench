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
 int SVGA_CAP_3D ; 
 int SVGA_CAP_8BIT_EMULATION ; 
 int SVGA_CAP_ALPHA_CURSOR ; 
 int SVGA_CAP_CMD_BUFFERS_2 ; 
 int SVGA_CAP_COMMAND_BUFFERS ; 
 int SVGA_CAP_CURSOR ; 
 int SVGA_CAP_CURSOR_BYPASS ; 
 int SVGA_CAP_CURSOR_BYPASS_2 ; 
 int SVGA_CAP_DISPLAY_TOPOLOGY ; 
 int SVGA_CAP_DX ; 
 int SVGA_CAP_EXTENDED_FIFO ; 
 int SVGA_CAP_GBOBJECTS ; 
 int SVGA_CAP_GMR ; 
 int SVGA_CAP_GMR2 ; 
 int SVGA_CAP_HP_CMD_QUEUE ; 
 int SVGA_CAP_IRQMASK ; 
 int SVGA_CAP_MULTIMON ; 
 int SVGA_CAP_PITCHLOCK ; 
 int SVGA_CAP_RECT_COPY ; 
 int SVGA_CAP_SCREEN_OBJECT_2 ; 
 int SVGA_CAP_TRACES ; 

__attribute__((used)) static void FUNC1(uint32_t capabilities)
{
	FUNC0("Capabilities:\n");
	if (capabilities & SVGA_CAP_RECT_COPY)
		FUNC0("  Rect copy.\n");
	if (capabilities & SVGA_CAP_CURSOR)
		FUNC0("  Cursor.\n");
	if (capabilities & SVGA_CAP_CURSOR_BYPASS)
		FUNC0("  Cursor bypass.\n");
	if (capabilities & SVGA_CAP_CURSOR_BYPASS_2)
		FUNC0("  Cursor bypass 2.\n");
	if (capabilities & SVGA_CAP_8BIT_EMULATION)
		FUNC0("  8bit emulation.\n");
	if (capabilities & SVGA_CAP_ALPHA_CURSOR)
		FUNC0("  Alpha cursor.\n");
	if (capabilities & SVGA_CAP_3D)
		FUNC0("  3D.\n");
	if (capabilities & SVGA_CAP_EXTENDED_FIFO)
		FUNC0("  Extended Fifo.\n");
	if (capabilities & SVGA_CAP_MULTIMON)
		FUNC0("  Multimon.\n");
	if (capabilities & SVGA_CAP_PITCHLOCK)
		FUNC0("  Pitchlock.\n");
	if (capabilities & SVGA_CAP_IRQMASK)
		FUNC0("  Irq mask.\n");
	if (capabilities & SVGA_CAP_DISPLAY_TOPOLOGY)
		FUNC0("  Display Topology.\n");
	if (capabilities & SVGA_CAP_GMR)
		FUNC0("  GMR.\n");
	if (capabilities & SVGA_CAP_TRACES)
		FUNC0("  Traces.\n");
	if (capabilities & SVGA_CAP_GMR2)
		FUNC0("  GMR2.\n");
	if (capabilities & SVGA_CAP_SCREEN_OBJECT_2)
		FUNC0("  Screen Object 2.\n");
	if (capabilities & SVGA_CAP_COMMAND_BUFFERS)
		FUNC0("  Command Buffers.\n");
	if (capabilities & SVGA_CAP_CMD_BUFFERS_2)
		FUNC0("  Command Buffers 2.\n");
	if (capabilities & SVGA_CAP_GBOBJECTS)
		FUNC0("  Guest Backed Resources.\n");
	if (capabilities & SVGA_CAP_DX)
		FUNC0("  DX Features.\n");
	if (capabilities & SVGA_CAP_HP_CMD_QUEUE)
		FUNC0("  HP Command Queue.\n");
}