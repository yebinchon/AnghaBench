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
struct vas_window {int dummy; } ;
struct vas_tx_win_attr {scalar_t__ pid; scalar_t__ lpid; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;
struct nx842_coproc {int /*<<< orphan*/  ct; TYPE_1__ vas; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vas_window*) ; 
 int /*<<< orphan*/  FUNC1 (struct vas_window*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vas_tx_win_attr*,int /*<<< orphan*/ ) ; 
 struct vas_window* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vas_tx_win_attr*) ; 

__attribute__((used)) static struct vas_window *FUNC5(struct nx842_coproc *coproc)
{
	struct vas_window *txwin = NULL;
	struct vas_tx_win_attr txattr;

	/*
	 * Kernel requests will be high priority. So open send
	 * windows only for high priority RxFIFO entries.
	 */
	FUNC3(&txattr, coproc->ct);
	txattr.lpid = 0;	/* lpid is 0 for kernel requests */
	txattr.pid = 0;		/* pid is 0 for kernel requests */

	/*
	 * Open a VAS send window which is used to send request to NX.
	 */
	txwin = FUNC4(coproc->vas.id, coproc->ct, &txattr);
	if (FUNC0(txwin))
		FUNC2("ibm,nx-842: Can not open TX window: %ld\n",
				FUNC1(txwin));

	return txwin;
}