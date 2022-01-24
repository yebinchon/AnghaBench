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
struct i40iw_sc_vsi {struct i40iw_puda_rsrc* ilq; } ;
struct i40iw_puda_rsrc {int dummy; } ;
struct i40iw_puda_buf {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct i40iw_puda_rsrc*,struct i40iw_puda_buf*) ; 

void FUNC2(struct i40iw_sc_vsi *vsi, void *bufp)
{
	struct i40iw_puda_buf *buf = (struct i40iw_puda_buf *)bufp;
	struct i40iw_puda_rsrc *ilq = vsi->ilq;

	if (!FUNC0(&buf->refcount))
		FUNC1(ilq, buf);
}