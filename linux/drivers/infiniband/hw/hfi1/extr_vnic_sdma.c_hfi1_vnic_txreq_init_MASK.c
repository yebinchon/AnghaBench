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
struct vnic_txreq {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  txreq_cache; } ;
struct hfi1_devdata {int unit; TYPE_1__ vnic; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int ENOMEM ; 
 int HFI1_VNIC_TXREQ_NAME_LEN ; 
 int /*<<< orphan*/  SLAB_HWCACHE_ALIGN ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int) ; 

int FUNC2(struct hfi1_devdata *dd)
{
	char buf[HFI1_VNIC_TXREQ_NAME_LEN];

	FUNC1(buf, sizeof(buf), "hfi1_%u_vnic_txreq_cache", dd->unit);
	dd->vnic.txreq_cache = FUNC0(buf,
						 sizeof(struct vnic_txreq),
						 0, SLAB_HWCACHE_ALIGN,
						 NULL);
	if (!dd->vnic.txreq_cache)
		return -ENOMEM;
	return 0;
}