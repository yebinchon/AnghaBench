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
struct TYPE_2__ {int /*<<< orphan*/  state; } ;
struct vc4_dev {TYPE_1__ ctm_manager; } ;
struct vc4_ctm_state {scalar_t__ fifo; struct drm_color_ctm* ctm; } ;
struct drm_color_ctm {int /*<<< orphan*/ * matrix; } ;
struct drm_atomic_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SCALER_OLEDCOEF0 ; 
 int /*<<< orphan*/  SCALER_OLEDCOEF0_B_TO_B ; 
 int /*<<< orphan*/  SCALER_OLEDCOEF0_B_TO_G ; 
 int /*<<< orphan*/  SCALER_OLEDCOEF0_B_TO_R ; 
 int /*<<< orphan*/  SCALER_OLEDCOEF1 ; 
 int /*<<< orphan*/  SCALER_OLEDCOEF1_G_TO_B ; 
 int /*<<< orphan*/  SCALER_OLEDCOEF1_G_TO_G ; 
 int /*<<< orphan*/  SCALER_OLEDCOEF1_G_TO_R ; 
 int /*<<< orphan*/  SCALER_OLEDCOEF2 ; 
 int /*<<< orphan*/  SCALER_OLEDCOEF2_R_TO_B ; 
 int /*<<< orphan*/  SCALER_OLEDCOEF2_R_TO_G ; 
 int /*<<< orphan*/  SCALER_OLEDCOEF2_R_TO_R ; 
 int /*<<< orphan*/  SCALER_OLEDOFFS ; 
 int /*<<< orphan*/  SCALER_OLEDOFFS_DISPFIFO ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct vc4_ctm_state* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct vc4_dev *vc4, struct drm_atomic_state *state)
{
	struct vc4_ctm_state *ctm_state = FUNC2(vc4->ctm_manager.state);
	struct drm_color_ctm *ctm = ctm_state->ctm;

	if (ctm_state->fifo) {
		FUNC0(SCALER_OLEDCOEF2,
			  FUNC1(FUNC3(ctm->matrix[0]),
					SCALER_OLEDCOEF2_R_TO_R) |
			  FUNC1(FUNC3(ctm->matrix[3]),
					SCALER_OLEDCOEF2_R_TO_G) |
			  FUNC1(FUNC3(ctm->matrix[6]),
					SCALER_OLEDCOEF2_R_TO_B));
		FUNC0(SCALER_OLEDCOEF1,
			  FUNC1(FUNC3(ctm->matrix[1]),
					SCALER_OLEDCOEF1_G_TO_R) |
			  FUNC1(FUNC3(ctm->matrix[4]),
					SCALER_OLEDCOEF1_G_TO_G) |
			  FUNC1(FUNC3(ctm->matrix[7]),
					SCALER_OLEDCOEF1_G_TO_B));
		FUNC0(SCALER_OLEDCOEF0,
			  FUNC1(FUNC3(ctm->matrix[2]),
					SCALER_OLEDCOEF0_B_TO_R) |
			  FUNC1(FUNC3(ctm->matrix[5]),
					SCALER_OLEDCOEF0_B_TO_G) |
			  FUNC1(FUNC3(ctm->matrix[8]),
					SCALER_OLEDCOEF0_B_TO_B));
	}

	FUNC0(SCALER_OLEDOFFS,
		  FUNC1(ctm_state->fifo, SCALER_OLEDOFFS_DISPFIFO));
}