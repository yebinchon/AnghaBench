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
typedef  int u32 ;
typedef  int u16 ;
struct intel_link_m_n {int tu; int /*<<< orphan*/  link_n; int /*<<< orphan*/  link_m; int /*<<< orphan*/  gmch_n; int /*<<< orphan*/  gmch_m; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int) ; 

void
FUNC2(u16 bits_per_pixel, int nlanes,
		       int pixel_clock, int link_clock,
		       struct intel_link_m_n *m_n,
		       bool constant_n, bool fec_enable)
{
	u32 data_clock = bits_per_pixel * pixel_clock;

	if (fec_enable)
		data_clock = FUNC1(data_clock);

	m_n->tu = 64;
	FUNC0(data_clock,
		    link_clock * nlanes * 8,
		    &m_n->gmch_m, &m_n->gmch_n,
		    constant_n);

	FUNC0(pixel_clock, link_clock,
		    &m_n->link_m, &m_n->link_n,
		    constant_n);
}