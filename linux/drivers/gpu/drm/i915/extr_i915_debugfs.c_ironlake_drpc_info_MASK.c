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
struct seq_file {int /*<<< orphan*/  private; } ;
struct intel_uncore {int dummy; } ;
struct drm_i915_private {struct intel_uncore uncore; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRSTANDVID ; 
 int /*<<< orphan*/  MEMMODECTL ; 
 int MEMMODE_BOOST_EN ; 
 int MEMMODE_BOOST_FREQ_MASK ; 
 int MEMMODE_BOOST_FREQ_SHIFT ; 
 int MEMMODE_FMAX_MASK ; 
 int MEMMODE_FMAX_SHIFT ; 
 int MEMMODE_FMIN_MASK ; 
 int MEMMODE_FSTART_MASK ; 
 int MEMMODE_FSTART_SHIFT ; 
 int MEMMODE_HWIDLE_EN ; 
 int MEMMODE_RCLK_GATE ; 
 int MEMMODE_SWMODE_EN ; 
 int RCX_SW_EXIT ; 
 int /*<<< orphan*/  RSTDBYCTL ; 
 int RSX_STATUS_MASK ; 
#define  RSX_STATUS_ON 133 
#define  RSX_STATUS_RC1 132 
#define  RSX_STATUS_RC1E 131 
#define  RSX_STATUS_RS1 130 
#define  RSX_STATUS_RS2 129 
#define  RSX_STATUS_RS3 128 
 int FUNC0 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*) ; 
 int FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct seq_file *m)
{
	struct drm_i915_private *i915 = FUNC2(m->private);
	struct intel_uncore *uncore = &i915->uncore;
	u32 rgvmodectl, rstdbyctl;
	u16 crstandvid;

	rgvmodectl = FUNC0(uncore, MEMMODECTL);
	rstdbyctl = FUNC0(uncore, RSTDBYCTL);
	crstandvid = FUNC1(uncore, CRSTANDVID);

	FUNC3(m, "HD boost: %s\n", FUNC5(rgvmodectl & MEMMODE_BOOST_EN));
	FUNC3(m, "Boost freq: %d\n",
		   (rgvmodectl & MEMMODE_BOOST_FREQ_MASK) >>
		   MEMMODE_BOOST_FREQ_SHIFT);
	FUNC3(m, "HW control enabled: %s\n",
		   FUNC5(rgvmodectl & MEMMODE_HWIDLE_EN));
	FUNC3(m, "SW control enabled: %s\n",
		   FUNC5(rgvmodectl & MEMMODE_SWMODE_EN));
	FUNC3(m, "Gated voltage change: %s\n",
		   FUNC5(rgvmodectl & MEMMODE_RCLK_GATE));
	FUNC3(m, "Starting frequency: P%d\n",
		   (rgvmodectl & MEMMODE_FSTART_MASK) >> MEMMODE_FSTART_SHIFT);
	FUNC3(m, "Max P-state: P%d\n",
		   (rgvmodectl & MEMMODE_FMAX_MASK) >> MEMMODE_FMAX_SHIFT);
	FUNC3(m, "Min P-state: P%d\n", (rgvmodectl & MEMMODE_FMIN_MASK));
	FUNC3(m, "RS1 VID: %d\n", (crstandvid & 0x3f));
	FUNC3(m, "RS2 VID: %d\n", ((crstandvid >> 8) & 0x3f));
	FUNC3(m, "Render standby enabled: %s\n",
		   FUNC5(!(rstdbyctl & RCX_SW_EXIT)));
	FUNC4(m, "Current RS state: ");
	switch (rstdbyctl & RSX_STATUS_MASK) {
	case RSX_STATUS_ON:
		FUNC4(m, "on\n");
		break;
	case RSX_STATUS_RC1:
		FUNC4(m, "RC1\n");
		break;
	case RSX_STATUS_RC1E:
		FUNC4(m, "RC1E\n");
		break;
	case RSX_STATUS_RS1:
		FUNC4(m, "RS1\n");
		break;
	case RSX_STATUS_RS2:
		FUNC4(m, "RS2 (RC6)\n");
		break;
	case RSX_STATUS_RS3:
		FUNC4(m, "RC3 (RC6+)\n");
		break;
	default:
		FUNC4(m, "unknown\n");
		break;
	}

	return 0;
}