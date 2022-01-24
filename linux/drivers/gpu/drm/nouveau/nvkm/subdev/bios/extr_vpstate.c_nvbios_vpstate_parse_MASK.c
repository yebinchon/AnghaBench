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
struct nvkm_bios {int dummy; } ;
struct nvbios_vpstate_header {int version; int hlen; int boost_id; int tdp_id; scalar_t__ offset; void* base_id; void* ecount; void* scount; void* slen; void* elen; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 void* FUNC0 (struct nvkm_bios*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct nvkm_bios*) ; 

int
FUNC2(struct nvkm_bios *b, struct nvbios_vpstate_header *h)
{
	if (!h)
		return -EINVAL;

	h->offset = FUNC1(b);
	if (!h->offset)
		return -ENODEV;

	h->version = FUNC0(b, h->offset);
	switch (h->version) {
	case 0x10:
		h->hlen     = FUNC0(b, h->offset + 0x1);
		h->elen     = FUNC0(b, h->offset + 0x2);
		h->slen     = FUNC0(b, h->offset + 0x3);
		h->scount   = FUNC0(b, h->offset + 0x4);
		h->ecount   = FUNC0(b, h->offset + 0x5);

		h->base_id  = FUNC0(b, h->offset + 0x0f);
		if (h->hlen > 0x10)
			h->boost_id = FUNC0(b, h->offset + 0x10);
		else
			h->boost_id = 0xff;
		if (h->hlen > 0x11)
			h->tdp_id = FUNC0(b, h->offset + 0x11);
		else
			h->tdp_id = 0xff;
		return 0;
	default:
		return -EINVAL;
	}
}