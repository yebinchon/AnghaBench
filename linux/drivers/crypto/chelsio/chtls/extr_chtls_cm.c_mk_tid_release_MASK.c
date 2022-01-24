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
struct sk_buff {int dummy; } ;
struct cpl_tid_release {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPL_PRIORITY_SETUP ; 
 int /*<<< orphan*/  CPL_TID_RELEASE ; 
 int /*<<< orphan*/  FUNC0 (struct cpl_tid_release*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC1 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct cpl_tid_release*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static  void FUNC5(struct sk_buff *skb,
			    unsigned int chan, unsigned int tid)
{
	struct cpl_tid_release *req;
	unsigned int len;

	len = FUNC3(sizeof(struct cpl_tid_release), 16);
	req = (struct cpl_tid_release *)FUNC1(skb, len);
	FUNC2(req, 0, len);
	FUNC4(skb, CPL_PRIORITY_SETUP, chan);
	FUNC0(req, CPL_TID_RELEASE, tid);
}