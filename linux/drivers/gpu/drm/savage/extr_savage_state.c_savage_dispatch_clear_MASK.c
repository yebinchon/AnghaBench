#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct drm_clip_rect {unsigned int x1; unsigned int y1; unsigned int x2; unsigned int y2; } ;
struct TYPE_10__ {int front_offset; int front_bd; int back_offset; int back_bd; int depth_offset; int depth_bd; } ;
typedef  TYPE_3__ drm_savage_private_t ;
struct TYPE_9__ {int mask; int value; } ;
struct TYPE_8__ {unsigned int flags; } ;
struct TYPE_11__ {TYPE_2__ clear1; TYPE_1__ clear0; } ;
typedef  TYPE_4__ drm_savage_cmd_header_t ;

/* Variables and functions */
 unsigned int BCI_CMD_DEST_PBD_NEW ; 
 unsigned int BCI_CMD_RECT ; 
 unsigned int BCI_CMD_RECT_XP ; 
 unsigned int BCI_CMD_RECT_YP ; 
 unsigned int BCI_CMD_SEND_COLOR ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int) ; 
 int FUNC1 (unsigned int,unsigned int) ; 
 int FUNC2 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  DMA_LOCALS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
#define  SAVAGE_BACK 130 
 int /*<<< orphan*/  SAVAGE_BITPLANEWTMASK ; 
#define  SAVAGE_DEPTH 129 
#define  SAVAGE_FRONT 128 

__attribute__((used)) static int FUNC7(drm_savage_private_t * dev_priv,
				 const drm_savage_cmd_header_t * cmd_header,
				 const drm_savage_cmd_header_t *data,
				 unsigned int nbox,
				 const struct drm_clip_rect *boxes)
{
	unsigned int flags = cmd_header->clear0.flags;
	unsigned int clear_cmd;
	unsigned int i, nbufs;
	DMA_LOCALS;

	if (nbox == 0)
		return 0;

	clear_cmd = BCI_CMD_RECT | BCI_CMD_RECT_XP | BCI_CMD_RECT_YP |
	    BCI_CMD_SEND_COLOR | BCI_CMD_DEST_PBD_NEW;
	FUNC0(clear_cmd, 0xCC);

	nbufs = ((flags & SAVAGE_FRONT) ? 1 : 0) +
	    ((flags & SAVAGE_BACK) ? 1 : 0) + ((flags & SAVAGE_DEPTH) ? 1 : 0);
	if (nbufs == 0)
		return 0;

	if (data->clear1.mask != 0xffffffff) {
		/* set mask */
		FUNC3(2);
		FUNC5(SAVAGE_BITPLANEWTMASK, 1);
		FUNC6(data->clear1.mask);
		FUNC4();
	}
	for (i = 0; i < nbox; ++i) {
		unsigned int x, y, w, h;
		unsigned int buf;
		x = boxes[i].x1, y = boxes[i].y1;
		w = boxes[i].x2 - boxes[i].x1;
		h = boxes[i].y2 - boxes[i].y1;
		FUNC3(nbufs * 6);
		for (buf = SAVAGE_FRONT; buf <= SAVAGE_DEPTH; buf <<= 1) {
			if (!(flags & buf))
				continue;
			FUNC6(clear_cmd);
			switch (buf) {
			case SAVAGE_FRONT:
				FUNC6(dev_priv->front_offset);
				FUNC6(dev_priv->front_bd);
				break;
			case SAVAGE_BACK:
				FUNC6(dev_priv->back_offset);
				FUNC6(dev_priv->back_bd);
				break;
			case SAVAGE_DEPTH:
				FUNC6(dev_priv->depth_offset);
				FUNC6(dev_priv->depth_bd);
				break;
			}
			FUNC6(data->clear1.value);
			FUNC6(FUNC2(x, y));
			FUNC6(FUNC1(w, h));
		}
		FUNC4();
	}
	if (data->clear1.mask != 0xffffffff) {
		/* reset mask */
		FUNC3(2);
		FUNC5(SAVAGE_BITPLANEWTMASK, 1);
		FUNC6(0xffffffff);
		FUNC4();
	}

	return 0;
}