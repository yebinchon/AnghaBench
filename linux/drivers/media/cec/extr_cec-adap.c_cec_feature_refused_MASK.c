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
struct cec_msg {int dummy; } ;
struct cec_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEC_OP_ABORT_REFUSED ; 
 int FUNC0 (struct cec_adapter*,struct cec_msg*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct cec_adapter *adap, struct cec_msg *msg)
{
	return FUNC0(adap, msg,
					CEC_OP_ABORT_REFUSED);
}