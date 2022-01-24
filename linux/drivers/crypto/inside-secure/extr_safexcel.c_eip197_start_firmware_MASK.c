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
struct TYPE_2__ {int pes; } ;
struct safexcel_crypto_priv {TYPE_1__ config; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct safexcel_crypto_priv*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int EIP197_PE_ICE_UENG_DEBUG_RESET ; 
 int EIP197_PE_ICE_UENG_INIT_ALIGN_MASK ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct safexcel_crypto_priv*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static bool FUNC7(struct safexcel_crypto_priv *priv,
				  int ipuesz, int ifppsz, int minifw)
{
	int pe;
	u32 val;

	for (pe = 0; pe < priv->config.pes; pe++) {
		/* Disable access to all program memory */
		FUNC6(0, FUNC0(priv) + FUNC3(pe));

		/* Start IFPP microengines */
		if (minifw)
			val = 0;
		else
			val = FUNC4((ifppsz - 1) &
					EIP197_PE_ICE_UENG_INIT_ALIGN_MASK) |
				EIP197_PE_ICE_UENG_DEBUG_RESET;
		FUNC6(val, FUNC0(priv) + FUNC1(pe));

		/* Start IPUE microengines */
		if (minifw)
			val = 0;
		else
			val = FUNC4((ipuesz - 1) &
					EIP197_PE_ICE_UENG_INIT_ALIGN_MASK) |
				EIP197_PE_ICE_UENG_DEBUG_RESET;
		FUNC6(val, FUNC0(priv) + FUNC2(pe));
	}

	/* For miniFW startup, there is no initialization, so always succeed */
	if (minifw)
		return true;

	/* Wait until all the firmwares have properly started up */
	if (!FUNC5(priv, 1))
		return false;
	if (!FUNC5(priv, 0))
		return false;

	return true;
}