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
struct ide_port_info {int host_flags; } ;
struct ide_hw {int dummy; } ;
typedef  int /*<<< orphan*/  hw ;

/* Variables and functions */
 int ENOENT ; 
 int IDE_HFLAG_QD_2ND_PORT ; 
 int IDE_HFLAG_SINGLE ; 
 int FUNC0 (struct ide_port_info const*,struct ide_hw**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ide_hw**,struct ide_hw*,int,struct ide_port_info const*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct ide_hw**,int /*<<< orphan*/ ,int) ; 

int FUNC3(const struct ide_port_info *d, unsigned long config)
{
	struct ide_hw hw[2], *hws[] = { NULL, NULL };

	FUNC2(&hw, 0, sizeof(hw));

	if ((d->host_flags & IDE_HFLAG_QD_2ND_PORT) == 0)
		FUNC1(hws, &hw[0], 0, d, config);
	FUNC1(hws, &hw[1], 1, d, config);

	if (hws[0] == NULL && hws[1] == NULL &&
	    (d->host_flags & IDE_HFLAG_SINGLE))
		return -ENOENT;

	return FUNC0(d, hws, 2, NULL);
}