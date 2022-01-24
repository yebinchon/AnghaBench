#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct psmouse {unsigned char* packet; struct alps_data* private; } ;
struct TYPE_2__ {unsigned char x; unsigned char y; } ;
struct alps_fields {int left; int right; unsigned char pressure; int x_map; int y_map; int /*<<< orphan*/  fingers; TYPE_1__ st; } ;
struct alps_data {int multi_packet; unsigned char* multi_data; struct alps_fields f; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct alps_data*,struct alps_fields*) ; 
 int /*<<< orphan*/  FUNC2 (struct psmouse*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct psmouse *psmouse)
{
	struct alps_data *priv = psmouse->private;
	unsigned char *packet = psmouse->packet;
	struct alps_fields *f = &priv->f;
	int offset;

	/*
	 * v4 has a 6-byte encoding for bitmap data, but this data is
	 * broken up between 3 normal packets. Use priv->multi_packet to
	 * track our position in the bitmap packet.
	 */
	if (packet[6] & 0x40) {
		/* sync, reset position */
		priv->multi_packet = 0;
	}

	if (FUNC0(priv->multi_packet > 2))
		return;

	offset = 2 * priv->multi_packet;
	priv->multi_data[offset] = packet[6];
	priv->multi_data[offset + 1] = packet[7];

	f->left = !!(packet[4] & 0x01);
	f->right = !!(packet[4] & 0x02);

	f->st.x = ((packet[1] & 0x7f) << 4) | ((packet[3] & 0x30) >> 2) |
		  ((packet[0] & 0x30) >> 4);
	f->st.y = ((packet[2] & 0x7f) << 4) | (packet[3] & 0x0f);
	f->pressure = packet[5] & 0x7f;

	if (++priv->multi_packet > 2) {
		priv->multi_packet = 0;

		f->x_map = ((priv->multi_data[2] & 0x1f) << 10) |
			   ((priv->multi_data[3] & 0x60) << 3) |
			   ((priv->multi_data[0] & 0x3f) << 2) |
			   ((priv->multi_data[1] & 0x60) >> 5);
		f->y_map = ((priv->multi_data[5] & 0x01) << 10) |
			   ((priv->multi_data[3] & 0x1f) << 5) |
			    (priv->multi_data[1] & 0x1f);

		f->fingers = FUNC1(priv, f);
	}

	FUNC2(psmouse, f->fingers);
}