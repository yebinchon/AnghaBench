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
typedef  int /*<<< orphan*/  word ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct socket {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  pd_len; } ;
struct mpa_rr {TYPE_1__ params; } ;
struct TYPE_4__ {int bytes_rcvd; char* pdata; struct mpa_rr hdr; } ;
struct siw_cep {TYPE_2__ mpa; struct socket* sock; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ECONNABORTED ; 
 int ENOMEM ; 
 int EPIPE ; 
 int EPROTO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ MPA_MAX_PRIVDATA ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct socket*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct siw_cep*,char*,...) ; 

__attribute__((used)) static int FUNC4(struct siw_cep *cep)
{
	struct mpa_rr *hdr = &cep->mpa.hdr;
	struct socket *s = cep->sock;
	u16 pd_len;
	int rcvd, to_rcv;

	if (cep->mpa.bytes_rcvd < sizeof(struct mpa_rr)) {
		rcvd = FUNC2(s, (char *)hdr + cep->mpa.bytes_rcvd,
				  sizeof(struct mpa_rr) - cep->mpa.bytes_rcvd,
				  0);
		if (rcvd <= 0)
			return -ECONNABORTED;

		cep->mpa.bytes_rcvd += rcvd;

		if (cep->mpa.bytes_rcvd < sizeof(struct mpa_rr))
			return -EAGAIN;

		if (FUNC0(hdr->params.pd_len) > MPA_MAX_PRIVDATA)
			return -EPROTO;
	}
	pd_len = FUNC0(hdr->params.pd_len);

	/*
	 * At least the MPA Request/Reply header (frame not including
	 * private data) has been received.
	 * Receive (or continue receiving) any private data.
	 */
	to_rcv = pd_len - (cep->mpa.bytes_rcvd - sizeof(struct mpa_rr));

	if (!to_rcv) {
		/*
		 * We must have hdr->params.pd_len == 0 and thus received a
		 * complete MPA Request/Reply frame.
		 * Check against peer protocol violation.
		 */
		u32 word;

		rcvd = FUNC2(s, (char *)&word, sizeof(word), MSG_DONTWAIT);
		if (rcvd == -EAGAIN)
			return 0;

		if (rcvd == 0) {
			FUNC3(cep, "peer EOF\n");
			return -EPIPE;
		}
		if (rcvd < 0) {
			FUNC3(cep, "error: %d\n", rcvd);
			return rcvd;
		}
		FUNC3(cep, "peer sent extra data: %d\n", rcvd);

		return -EPROTO;
	}

	/*
	 * At this point, we must have hdr->params.pd_len != 0.
	 * A private data buffer gets allocated if hdr->params.pd_len != 0.
	 */
	if (!cep->mpa.pdata) {
		cep->mpa.pdata = FUNC1(pd_len + 4, GFP_KERNEL);
		if (!cep->mpa.pdata)
			return -ENOMEM;
	}
	rcvd = FUNC2(
		s, cep->mpa.pdata + cep->mpa.bytes_rcvd - sizeof(struct mpa_rr),
		to_rcv + 4, MSG_DONTWAIT);

	if (rcvd < 0)
		return rcvd;

	if (rcvd > to_rcv)
		return -EPROTO;

	cep->mpa.bytes_rcvd += rcvd;

	if (to_rcv == rcvd) {
		FUNC3(cep, "%d bytes private data received\n", pd_len);
		return 0;
	}
	return -EAGAIN;
}