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
typedef  int u32 ;
struct TYPE_9__ {void* len; void* cmd_more; } ;
struct TYPE_8__ {void* lock_addr; void* dlen; void* len16; void* cmd; } ;
struct TYPE_7__ {int reneg_to_write_rx; int /*<<< orphan*/  mfs; scalar_t__ protocol; void* flowid_len16; void* op_to_compl; } ;
struct tls_key_req {TYPE_4__ sc_imm; TYPE_3__ req; TYPE_2__ wr; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_10__ {int rxkey; int txkey; scalar_t__ tx_seq_no; int /*<<< orphan*/  txqid; } ;
struct chtls_sock {int tid; int wr_credits; int wr_unacked; TYPE_5__ tlshws; int /*<<< orphan*/  egress_dev; int /*<<< orphan*/  txq; struct sock* sk; struct chtls_dev* cdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  start; } ;
struct chtls_dev {TYPE_1__ kmap; } ;
struct _key_ctx {int dummy; } ;

/* Variables and functions */
 int AEAD_H_SIZE ; 
 int /*<<< orphan*/  CPL_PRIORITY_DATA ; 
 int FUNC0 (int,int) ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FW_ULPTX_WR ; 
 int FUNC1 (unsigned int) ; 
 int FW_WR_COMPL_F ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int TCB_ULP_RAW_M ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  TLS_MFS ; 
 int TLS_RX ; 
 int TLS_TX ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int) ; 
 int FUNC14 (int) ; 
 int /*<<< orphan*/  ULP_TX_MEM_WRITE ; 
 int /*<<< orphan*/  ULP_TX_SC_IMM ; 
 scalar_t__ FUNC15 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC16 (int,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct chtls_sock*,struct _key_ctx*,int,int) ; 
 int /*<<< orphan*/  FUNC18 (struct chtls_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct chtls_sock*) ; 
 int FUNC20 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC21 (struct sock*,int) ; 
 int FUNC22 (struct sock*,int /*<<< orphan*/ ) ; 
 int FUNC23 (struct sock*) ; 
 void* FUNC24 (int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC26 (struct chtls_sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC27 (struct sock*) ; 
 int FUNC28 (struct chtls_sock*,int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int FUNC30 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC31 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC32 (struct sock*) ; 
 int /*<<< orphan*/  FUNC33 (struct sock*) ; 
 int FUNC34 (int,int) ; 
 int /*<<< orphan*/  FUNC35 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC36 (int /*<<< orphan*/ *) ; 

int FUNC37(struct chtls_sock *csk, u32 keylen, u32 optname)
{
	struct tls_key_req *kwr;
	struct chtls_dev *cdev;
	struct _key_ctx *kctx;
	int wrlen, klen, len;
	struct sk_buff *skb;
	struct sock *sk;
	int keyid;
	int kaddr;
	int ret;

	cdev = csk->cdev;
	sk = csk->sk;

	klen = FUNC34((keylen + AEAD_H_SIZE) + sizeof(*kctx), 32);
	wrlen = FUNC34(sizeof(*kwr), 16);
	len = klen + wrlen;

	/* Flush out-standing data before new key takes effect */
	if (optname == TLS_TX) {
		FUNC32(sk);
		if (FUNC36(&csk->txq))
			FUNC18(csk, 0);
		FUNC33(sk);
	}

	skb = FUNC16(len, GFP_KERNEL);
	if (!skb)
		return -ENOMEM;

	keyid = FUNC28(csk, optname);
	if (keyid < 0) {
		ret = -ENOSPC;
		goto out_nokey;
	}

	kaddr = FUNC30(cdev->kmap.start, keyid);
	kwr = (struct tls_key_req *)FUNC15(skb, len);
	kwr->wr.op_to_compl =
		FUNC24(FUNC4(FW_ULPTX_WR) | FW_WR_COMPL_F |
		      FUNC1(1U));
	kwr->wr.flowid_len16 =
		FUNC24(FUNC3(FUNC0(len, 16) |
			    FUNC2(csk->tid)));
	kwr->wr.protocol = 0;
	kwr->wr.mfs = FUNC29(TLS_MFS);
	kwr->wr.reneg_to_write_rx = optname;

	/* ulptx command */
	kwr->req.cmd = FUNC24(FUNC12(ULP_TX_MEM_WRITE) |
			    FUNC6(1) |
			    FUNC5(1));
	kwr->req.len16 = FUNC24((csk->tid << 8) |
			      FUNC0(len - sizeof(kwr->wr), 16));
	kwr->req.dlen = FUNC24(FUNC14(klen >> 5));
	kwr->req.lock_addr = FUNC24(FUNC13(kaddr));

	/* sub command */
	kwr->sc_imm.cmd_more = FUNC24(FUNC12(ULP_TX_SC_IMM));
	kwr->sc_imm.len = FUNC24(klen);

	/* key info */
	kctx = (struct _key_ctx *)(kwr + 1);
	ret = FUNC17(csk, kctx, keylen, optname);
	if (ret)
		goto out_notcb;

	FUNC35(skb, CPL_PRIORITY_DATA, csk->tlshws.txqid);
	csk->wr_credits -= FUNC0(len, 16);
	csk->wr_unacked += FUNC0(len, 16);
	FUNC26(csk, skb);
	FUNC25(csk->egress_dev, skb);

	FUNC19(csk);
	/* Clear quiesce for Rx key */
	if (optname == TLS_RX) {
		ret = FUNC21(sk, keyid);
		if (ret)
			goto out_notcb;
		ret = FUNC20(sk, 0,
					  FUNC7(TCB_ULP_RAW_M),
					  FUNC7((FUNC11(1) |
					  FUNC9(1) |
					  FUNC8(1) |
					  FUNC10(1))));
		if (ret)
			goto out_notcb;
		ret = FUNC23(sk);
		if (ret)
			goto out_notcb;
		ret = FUNC22(sk, 0);
		if (ret)
			goto out_notcb;
		csk->tlshws.rxkey = keyid;
	} else {
		csk->tlshws.tx_seq_no = 0;
		csk->tlshws.txkey = keyid;
	}

	return ret;
out_notcb:
	FUNC27(sk);
out_nokey:
	FUNC31(skb);
	return ret;
}