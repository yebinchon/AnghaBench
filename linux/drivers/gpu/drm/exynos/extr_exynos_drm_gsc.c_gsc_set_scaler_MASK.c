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
typedef  int /*<<< orphan*/  u32 ;
struct gsc_scaler {int /*<<< orphan*/  main_vratio; int /*<<< orphan*/  main_hratio; } ;
struct gsc_context {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GSC_MAIN_H_RATIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GSC_MAIN_V_RATIO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gsc_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gsc_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct gsc_context *ctx, struct gsc_scaler *sc)
{
	u32 cfg;

	FUNC0(ctx->dev, "main_hratio[%ld]main_vratio[%ld]\n",
			  sc->main_hratio, sc->main_vratio);

	FUNC3(ctx, sc->main_hratio);
	cfg = FUNC1(sc->main_hratio);
	FUNC5(cfg, GSC_MAIN_H_RATIO);

	FUNC4(ctx, sc->main_vratio);
	cfg = FUNC2(sc->main_vratio);
	FUNC5(cfg, GSC_MAIN_V_RATIO);
}