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
struct vc4_dpi_encoder {struct vc4_dpi* dpi; } ;
struct vc4_dpi {int /*<<< orphan*/  pixel_clock; } ;
struct drm_encoder {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct vc4_dpi_encoder* FUNC1 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC2(struct drm_encoder *encoder)
{
	struct vc4_dpi_encoder *vc4_encoder = FUNC1(encoder);
	struct vc4_dpi *dpi = vc4_encoder->dpi;

	FUNC0(dpi->pixel_clock);
}