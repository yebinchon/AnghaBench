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
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_HTP_SKL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CSR_SSP_BASE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 

__attribute__((used)) static void FUNC3(struct drm_i915_private *dev_priv)
{
	FUNC2(!FUNC1(FUNC0(0)),
		  "CSR program storage start is NULL\n");
	FUNC2(!FUNC1(CSR_SSP_BASE), "CSR SSP Base Not fine\n");
	FUNC2(!FUNC1(CSR_HTP_SKL), "CSR HTP Not fine\n");
}