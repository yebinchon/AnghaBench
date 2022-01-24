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
struct yld_ctl_packet {int size; int /*<<< orphan*/ * data; int /*<<< orphan*/  offset; int /*<<< orphan*/  cmd; } ;
struct yealink_dev {struct yld_ctl_packet* ctl_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_RING_NOTE ; 
 int /*<<< orphan*/  CMD_RING_VOLUME ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct yld_ctl_packet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct yealink_dev*,struct yld_ctl_packet*) ; 

__attribute__((used)) static int FUNC4(struct yealink_dev *yld, u8 *buf, size_t size)
{
	struct yld_ctl_packet *p = yld->ctl_data;
	int	ix, len;

	if (size <= 0)
		return -EINVAL;

	/* Set the ringtone volume */
	FUNC2(yld->ctl_data, 0, sizeof(*(yld->ctl_data)));
	yld->ctl_data->cmd	= CMD_RING_VOLUME;
	yld->ctl_data->size	= 1;
	yld->ctl_data->data[0]	= buf[0];
	FUNC3(yld, p);

	buf++;
	size--;

	p->cmd = CMD_RING_NOTE;
	ix = 0;
	while (size != ix) {
		len = size - ix;
		if (len > sizeof(p->data))
			len = sizeof(p->data);
		p->size	  = len;
		p->offset = FUNC0(ix);
		FUNC1(p->data, &buf[ix], len);
		FUNC3(yld, p);
		ix += len;
	}
	return 0;
}