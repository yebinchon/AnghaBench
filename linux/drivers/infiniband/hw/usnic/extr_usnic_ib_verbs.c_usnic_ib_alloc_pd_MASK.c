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
struct usnic_ib_pd {void* umem_pd; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 struct usnic_ib_pd* FUNC2 (struct ib_pd*) ; 
 void* FUNC3 () ; 

int FUNC4(struct ib_pd *ibpd, struct ib_udata *udata)
{
	struct usnic_ib_pd *pd = FUNC2(ibpd);
	void *umem_pd;

	umem_pd = pd->umem_pd = FUNC3();
	if (FUNC0(umem_pd)) {
		return umem_pd ? FUNC1(umem_pd) : -ENOMEM;
	}

	return 0;
}