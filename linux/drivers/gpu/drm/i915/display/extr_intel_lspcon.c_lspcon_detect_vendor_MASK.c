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
typedef  int u32 ;
struct intel_lspcon {int /*<<< orphan*/  vendor; } ;
struct drm_dp_dpcd_ident {int* oui; } ;
struct TYPE_2__ {struct drm_dp_dpcd_ident ident; } ;
struct intel_dp {TYPE_1__ desc; int /*<<< orphan*/  dpcd; int /*<<< orphan*/  aux; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  LSPCON_VENDOR_MCA ; 
#define  LSPCON_VENDOR_MCA_OUI 129 
 int /*<<< orphan*/  LSPCON_VENDOR_PARADE ; 
#define  LSPCON_VENDOR_PARADE_OUI 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct intel_dp* FUNC4 (struct intel_lspcon*) ; 

__attribute__((used)) static bool FUNC5(struct intel_lspcon *lspcon)
{
	struct intel_dp *dp = FUNC4(lspcon);
	struct drm_dp_dpcd_ident *ident;
	u32 vendor_oui;

	if (FUNC3(&dp->aux, &dp->desc, FUNC2(dp->dpcd))) {
		FUNC1("Can't read description\n");
		return false;
	}

	ident = &dp->desc.ident;
	vendor_oui = (ident->oui[0] << 16) | (ident->oui[1] << 8) |
		      ident->oui[2];

	switch (vendor_oui) {
	case LSPCON_VENDOR_MCA_OUI:
		lspcon->vendor = LSPCON_VENDOR_MCA;
		FUNC0("Vendor: Mega Chips\n");
		break;

	case LSPCON_VENDOR_PARADE_OUI:
		lspcon->vendor = LSPCON_VENDOR_PARADE;
		FUNC0("Vendor: Parade Tech\n");
		break;

	default:
		FUNC1("Invalid/Unknown vendor OUI\n");
		return false;
	}

	return true;
}