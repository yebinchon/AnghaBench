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
typedef  int /*<<< orphan*/  u16 ;
struct dibx000_bandwidth_config {int internal; int ifreq; int /*<<< orphan*/  sad_cfg; } ;
struct dib7000m_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dib7000m_state*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct dib7000m_state *state, const struct dibx000_bandwidth_config *bw)
{
	FUNC0(state, 18, (u16) (((bw->internal*1000) >> 16) & 0xffff));
	FUNC0(state, 19, (u16) ( (bw->internal*1000)        & 0xffff));
	FUNC0(state, 21, (u16) ( (bw->ifreq          >> 16) & 0xffff));
	FUNC0(state, 22, (u16) (  bw->ifreq                 & 0xffff));

	FUNC0(state, 928, bw->sad_cfg);
}