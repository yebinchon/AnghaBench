#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct opa_vnic_skb_mdata {scalar_t__ flags; int /*<<< orphan*/  entropy; int /*<<< orphan*/  vl; } ;
struct TYPE_4__ {int /*<<< orphan*/  pkey; int /*<<< orphan*/  vesw_id; } ;
struct TYPE_3__ {int /*<<< orphan*/  encap_slid; } ;
struct __opa_veswport_info {TYPE_2__ vesw; TYPE_1__ vport; } ;
struct opa_vnic_adapter {struct __opa_veswport_info info; } ;

/* Variables and functions */
 int OPA_VNIC_HDR_LEN ; 
 int /*<<< orphan*/  OPA_VNIC_L4_ETHR ; 
 scalar_t__ OPA_VNIC_SKB_MDATA_ENCAP_ERR ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct opa_vnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct opa_vnic_adapter*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct __opa_veswport_info*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct __opa_veswport_info*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct opa_vnic_adapter*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 void* FUNC8 (struct sk_buff*,int) ; 
 scalar_t__ FUNC9 (int) ; 

void FUNC10(struct opa_vnic_adapter *adapter, struct sk_buff *skb)
{
	struct __opa_veswport_info *info = &adapter->info;
	struct opa_vnic_skb_mdata *mdata;
	u8 def_port, sc, rc, entropy, *hdr;
	u16 len, l4_hdr;
	u32 dlid;

	hdr = FUNC8(skb, OPA_VNIC_HDR_LEN);

	entropy = FUNC0(skb);
	def_port = FUNC1(adapter, entropy);
	len = FUNC7(skb);
	dlid = FUNC2(adapter, skb, def_port);
	sc = FUNC4(info, skb);
	rc = FUNC3(info, skb);
	l4_hdr = info->vesw.vesw_id;

	mdata = FUNC8(skb, sizeof(*mdata));
	mdata->vl = FUNC5(adapter, skb);
	mdata->entropy = entropy;
	mdata->flags = 0;
	if (FUNC9(!dlid)) {
		mdata->flags = OPA_VNIC_SKB_MDATA_ENCAP_ERR;
		return;
	}

	FUNC6(hdr, info->vport.encap_slid, dlid, len,
			     info->vesw.pkey, entropy, sc, rc,
			     OPA_VNIC_L4_ETHR, l4_hdr);
}