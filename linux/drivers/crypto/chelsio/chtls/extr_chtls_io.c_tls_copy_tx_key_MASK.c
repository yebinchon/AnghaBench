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
typedef  int u32 ;
struct ulptx_sc_memrd {void* addr; void* cmd_to_len; } ;
struct ulptx_idata {void* len; void* cmd_more; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct chtls_hws {int keylen; int /*<<< orphan*/  txkey; } ;
struct chtls_sock {struct chtls_dev* cdev; struct chtls_hws tlshws; } ;
struct TYPE_2__ {int /*<<< orphan*/  start; } ;
struct chtls_dev {TYPE_1__ kmap; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  ULP_TX_SC_MEMRD ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  ULP_TX_SC_NOOP ; 
 scalar_t__ FUNC3 (struct sk_buff*,int) ; 
 void* FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct chtls_sock* FUNC6 (struct sock*) ; 

__attribute__((used)) static void FUNC7(struct sock *sk, struct sk_buff *skb)
{
	struct ulptx_sc_memrd *sc_memrd;
	struct chtls_sock *csk;
	struct chtls_dev *cdev;
	struct ulptx_idata *sc;
	struct chtls_hws *hws;
	u32 immdlen;
	int kaddr;

	csk = FUNC6(sk);
	hws = &csk->tlshws;
	cdev = csk->cdev;

	immdlen = sizeof(*sc) + sizeof(*sc_memrd);
	kaddr = FUNC5(cdev->kmap.start, hws->txkey);
	sc = (struct ulptx_idata *)FUNC3(skb, immdlen);
	if (sc) {
		sc->cmd_more = FUNC4(FUNC0(ULP_TX_SC_NOOP));
		sc->len = FUNC4(0);
		sc_memrd = (struct ulptx_sc_memrd *)(sc + 1);
		sc_memrd->cmd_to_len =
				FUNC4(FUNC0(ULP_TX_SC_MEMRD) |
				FUNC2(1) |
				FUNC1(hws->keylen >> 4));
		sc_memrd->addr = FUNC4(kaddr);
	}
}