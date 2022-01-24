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
typedef  void* u8 ;
struct TYPE_2__ {int valid; int layer; int in_tx; void* ecode; void* etype; } ;
struct siw_qp {TYPE_1__ term_info; } ;
typedef  enum term_elayer { ____Placeholder_term_elayer } term_elayer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct siw_qp*,char*,int,void*,void*,char*) ; 

void FUNC2(struct siw_qp *qp, enum term_elayer layer, u8 etype,
			u8 ecode, int in_tx)
{
	if (!qp->term_info.valid) {
		FUNC0(&qp->term_info, 0, sizeof(qp->term_info));
		qp->term_info.layer = layer;
		qp->term_info.etype = etype;
		qp->term_info.ecode = ecode;
		qp->term_info.in_tx = in_tx;
		qp->term_info.valid = 1;
	}
	FUNC1(qp, "init TERM: layer %d, type %d, code %d, in tx %s\n",
		   layer, etype, ecode, in_tx ? "yes" : "no");
}