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
struct ib_wc {scalar_t__ status; int /*<<< orphan*/  vendor_err; } ;

/* Variables and functions */
 scalar_t__ IB_WC_WR_FLUSH_ERR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct ib_wc *wc, const char *type)
{
	if (wc->status != IB_WC_WR_FLUSH_ERR)
		FUNC2("%s failure: %s (%d) vend_err %x\n", type,
			  FUNC0(wc->status), wc->status,
			  wc->vendor_err);
	else
		FUNC1("%s failure: %s (%d)\n", type,
			  FUNC0(wc->status), wc->status);
}