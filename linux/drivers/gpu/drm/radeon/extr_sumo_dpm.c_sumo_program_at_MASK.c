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
typedef  int u32 ;
struct sumo_ps {int num_levels; int flags; TYPE_1__* levels; } ;
struct TYPE_4__ {int sclk; } ;
struct sumo_power_info {int pasi; int asi; TYPE_2__ boost_pl; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;
struct TYPE_3__ {int sclk; } ;

/* Variables and functions */
 int BOOST_DPM_LEVEL ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int SUMO_L_DFLT0 ; 
 int SUMO_L_DFLT1 ; 
 int SUMO_L_DFLT2 ; 
 int SUMO_L_DFLT3 ; 
 int SUMO_L_DFLT4 ; 
 int SUMO_MAX_HARDWARE_POWERLEVELS ; 
 int SUMO_POWERSTATE_FLAGS_BOOST_STATE ; 
 int SUMO_R_DFLT0 ; 
 int SUMO_R_DFLT1 ; 
 int SUMO_R_DFLT2 ; 
 int SUMO_R_DFLT3 ; 
 int SUMO_R_DFLT4 ; 
 struct sumo_power_info* FUNC2 (struct radeon_device*) ; 
 struct sumo_ps* FUNC3 (struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,int,int) ; 

__attribute__((used)) static void FUNC5(struct radeon_device *rdev,
			    struct radeon_ps *rps)
{
	struct sumo_power_info *pi = FUNC2(rdev);
	struct sumo_ps *ps = FUNC3(rps);
	u32 asi;
	u32 i;
	u32 m_a;
	u32 a_t;
	u32 r[SUMO_MAX_HARDWARE_POWERLEVELS];
	u32 l[SUMO_MAX_HARDWARE_POWERLEVELS];

	r[0] = SUMO_R_DFLT0;
	r[1] = SUMO_R_DFLT1;
	r[2] = SUMO_R_DFLT2;
	r[3] = SUMO_R_DFLT3;
	r[4] = SUMO_R_DFLT4;

	l[0] = SUMO_L_DFLT0;
	l[1] = SUMO_L_DFLT1;
	l[2] = SUMO_L_DFLT2;
	l[3] = SUMO_L_DFLT3;
	l[4] = SUMO_L_DFLT4;

	for (i = 0; i < ps->num_levels; i++) {
		asi = (i == ps->num_levels - 1) ? pi->pasi : pi->asi;

		m_a = asi * ps->levels[i].sclk / 100;

		a_t = FUNC1(m_a * r[i] / 100) | FUNC0(m_a * l[i] / 100);

		FUNC4(rdev, i, a_t);
	}

	if (ps->flags & SUMO_POWERSTATE_FLAGS_BOOST_STATE) {
		asi = pi->pasi;

		m_a = asi * pi->boost_pl.sclk / 100;

		a_t = FUNC1(m_a * r[ps->num_levels - 1] / 100) |
			FUNC0(m_a * l[ps->num_levels - 1] / 100);

		FUNC4(rdev, BOOST_DPM_LEVEL, a_t);
	}
}