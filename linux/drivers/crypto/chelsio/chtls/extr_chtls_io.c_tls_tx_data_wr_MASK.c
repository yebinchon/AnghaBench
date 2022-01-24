#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct tls_scmd {int seqno_numivs; int ivgen_hdrlen; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct fw_tlstx_data_wr {scalar_t__ r10; int /*<<< orphan*/  pdusinplenmax_pkd; void* expinplenmax_pkd; void* adjustedplen_pkd; void* mfs; void* plen; void* ctxloc_to_exp; void* lsodisable_to_flags; void* flowid_len16; void* op_to_immdlen; } ;
struct cpl_tx_tls_sfo {int /*<<< orphan*/  scmd1; void* ivgen_hdrlen; void* seqno_numivs; scalar_t__ r1_lo; void* type_protover; void* pld_len; void* op_to_seg_len; } ;
struct chtls_hws {int mfs; int keylen; struct tls_scmd scmd; int /*<<< orphan*/  pdus; int /*<<< orphan*/  expansion; int /*<<< orphan*/  adjustlen; } ;
struct chtls_sock {int /*<<< orphan*/  txq; int /*<<< orphan*/  tid; struct chtls_hws tlshws; struct net_device* egress_dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  tls_pdu_tx; } ;
struct adapter {TYPE_1__ chcr_stats; } ;
struct TYPE_7__ {int /*<<< orphan*/  type; } ;
struct TYPE_8__ {TYPE_2__ tls; } ;
struct TYPE_10__ {TYPE_3__ ulp; } ;
struct TYPE_9__ {int nonagle; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHTLS_KEY_CONTEXT_DDR ; 
 int /*<<< orphan*/  CPL_TX_TLS_SFO ; 
 int FUNC0 (int) ; 
 int FUNC1 (unsigned char) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 unsigned char CPL_TX_TLS_SFO_TYPE_HEARTBEAT ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CSK_TX_MORE_DATA ; 
 unsigned int FW_OFLD_TX_DATA_WR_ALIGNPLD_F ; 
 unsigned int FW_OFLD_TX_DATA_WR_SHOVE_F ; 
 int /*<<< orphan*/  FW_TLSTX_DATA_WR ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int) ; 
 int FUNC13 (int) ; 
 int FUNC14 (int) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (int) ; 
 unsigned int T6_TX_FORCE_F ; 
 int TCP_NAGLE_OFF ; 
 int /*<<< orphan*/  TLS_HDR_TYPE_HEARTBEAT ; 
 unsigned int FUNC20 (int) ; 
 unsigned int FUNC21 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ULP_MODE_TLS ; 
 TYPE_5__* FUNC23 (struct sk_buff*) ; 
 scalar_t__ FUNC24 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 void* FUNC26 (int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct sock*,int /*<<< orphan*/ ) ; 
 void* FUNC29 (int) ; 
 void* FUNC30 (int) ; 
 scalar_t__ FUNC31 (struct sk_buff*) ; 
 struct adapter* FUNC32 (struct net_device*) ; 
 struct chtls_sock* FUNC33 (struct sock*) ; 
 scalar_t__ FUNC34 (int /*<<< orphan*/ *) ; 
 int FUNC35 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC36 (struct sk_buff*) ; 
 TYPE_4__* FUNC37 (struct sock*) ; 
 unsigned char FUNC38 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (struct chtls_hws*) ; 

__attribute__((used)) static void FUNC40(struct sock *sk, struct sk_buff *skb,
			   int dlen, int tls_immd, u32 credits,
			   int expn, int pdus)
{
	struct fw_tlstx_data_wr *req_wr;
	struct cpl_tx_tls_sfo *req_cpl;
	unsigned int wr_ulp_mode_force;
	struct tls_scmd *updated_scmd;
	unsigned char data_type;
	struct chtls_sock *csk;
	struct net_device *dev;
	struct chtls_hws *hws;
	struct tls_scmd *scmd;
	struct adapter *adap;
	unsigned char *req;
	int immd_len;
	int iv_imm;
	int len;

	csk = FUNC33(sk);
	iv_imm = FUNC35(skb);
	dev = csk->egress_dev;
	adap = FUNC32(dev);
	hws = &csk->tlshws;
	scmd = &hws->scmd;
	len = dlen + expn;

	dlen = (dlen < hws->mfs) ? dlen : hws->mfs;
	FUNC25(&adap->chcr_stats.tls_pdu_tx);

	updated_scmd = scmd;
	updated_scmd->seqno_numivs &= 0xffffff80;
	updated_scmd->seqno_numivs |= FUNC19(pdus);
	hws->scmd = *updated_scmd;

	req = (unsigned char *)FUNC24(skb, sizeof(struct cpl_tx_tls_sfo));
	req_cpl = (struct cpl_tx_tls_sfo *)req;
	req = (unsigned char *)FUNC24(skb, (sizeof(struct
				fw_tlstx_data_wr)));

	req_wr = (struct fw_tlstx_data_wr *)req;
	immd_len = (tls_immd ? dlen : 0);
	req_wr->op_to_immdlen =
		FUNC29(FUNC18(FW_TLSTX_DATA_WR) |
		FUNC7(1) |
		FUNC12(immd_len));
	req_wr->flowid_len16 = FUNC29(FUNC11(csk->tid) |
				     FUNC15(credits));
	wr_ulp_mode_force = FUNC21(ULP_MODE_TLS);

	if (FUNC31(skb))
		wr_ulp_mode_force |= FW_OFLD_TX_DATA_WR_ALIGNPLD_F |
			((FUNC37(sk)->nonagle & TCP_NAGLE_OFF) ? 0 :
			FW_OFLD_TX_DATA_WR_SHOVE_F);

	req_wr->lsodisable_to_flags =
			FUNC29(FUNC21(ULP_MODE_TLS) |
			      FUNC22(FUNC36(skb)) |
			      T6_TX_FORCE_F | wr_ulp_mode_force |
			      FUNC20((!FUNC28(sk, CSK_TX_MORE_DATA)) &&
					 FUNC34(&csk->txq)));

	req_wr->ctxloc_to_exp =
			FUNC29(FUNC16(pdus) |
			      FUNC10(expn) |
			      FUNC8(CHTLS_KEY_CONTEXT_DDR) |
			      FUNC13(!iv_imm) |
			      FUNC14(hws->keylen >> 4));

	/* Fill in the length */
	req_wr->plen = FUNC29(len);
	req_wr->mfs = FUNC30(hws->mfs);
	req_wr->adjustedplen_pkd =
		FUNC30(FUNC6(hws->adjustlen));
	req_wr->expinplenmax_pkd =
		FUNC30(FUNC9(hws->expansion));
	req_wr->pdusinplenmax_pkd =
		FUNC17(hws->pdus);
	req_wr->r10 = 0;

	data_type = FUNC38(FUNC23(skb)->ulp.tls.type);
	req_cpl->op_to_seg_len = FUNC29(FUNC2(CPL_TX_TLS_SFO) |
				       FUNC1(data_type) |
				       FUNC0(2) |
				       FUNC4(dlen));
	req_cpl->pld_len = FUNC29(len - expn);

	req_cpl->type_protover = FUNC29(FUNC5
		((data_type == CPL_TX_TLS_SFO_TYPE_HEARTBEAT) ?
		TLS_HDR_TYPE_HEARTBEAT : 0) |
		FUNC3(0));

	/* create the s-command */
	req_cpl->r1_lo = 0;
	req_cpl->seqno_numivs  = FUNC26(hws->scmd.seqno_numivs);
	req_cpl->ivgen_hdrlen = FUNC26(hws->scmd.ivgen_hdrlen);
	req_cpl->scmd1 = FUNC27(FUNC39(hws));
}