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
struct stv {int dummy; } ;
struct dtv_frontend_properties {int /*<<< orphan*/  scrambling_sequence_index; int /*<<< orphan*/  stream_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct stv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct stv *state,
			     struct dtv_frontend_properties *p)
{
	FUNC0(state, p->stream_id);
	FUNC1(state, p->scrambling_sequence_index);
}