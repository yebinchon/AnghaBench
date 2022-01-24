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
struct TYPE_2__ {int mode_size; int data_size; int btn_rec_size; int num_btns; } ;
struct cyttsp4_sysinfo {void* btn_rec_data; TYPE_1__ si_ofs; void* xy_data; void* xy_mode; } ;
struct cyttsp4 {struct cyttsp4_sysinfo sysinfo; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int __GFP_ZERO ; 
 void* FUNC0 (void*,int,int) ; 

__attribute__((used)) static int FUNC1(struct cyttsp4 *cd)
{
	struct cyttsp4_sysinfo *si = &cd->sysinfo;
	void *p;

	p = FUNC0(si->xy_mode, si->si_ofs.mode_size, GFP_KERNEL|__GFP_ZERO);
	if (p == NULL)
		return -ENOMEM;
	si->xy_mode = p;

	p = FUNC0(si->xy_data, si->si_ofs.data_size, GFP_KERNEL|__GFP_ZERO);
	if (p == NULL)
		return -ENOMEM;
	si->xy_data = p;

	p = FUNC0(si->btn_rec_data,
			si->si_ofs.btn_rec_size * si->si_ofs.num_btns,
			GFP_KERNEL|__GFP_ZERO);
	if (p == NULL)
		return -ENOMEM;
	si->btn_rec_data = p;

	return 0;
}