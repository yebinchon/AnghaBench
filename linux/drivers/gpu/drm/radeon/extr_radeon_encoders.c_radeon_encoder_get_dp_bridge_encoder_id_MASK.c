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
typedef  int u16 ;
struct radeon_encoder {int encoder_id; } ;
struct drm_encoder {int dummy; } ;

/* Variables and functions */
 int ENCODER_OBJECT_ID_NONE ; 
#define  ENCODER_OBJECT_ID_NUTMEG 129 
#define  ENCODER_OBJECT_ID_TRAVIS 128 
 struct drm_encoder* FUNC0 (struct drm_encoder*) ; 
 struct radeon_encoder* FUNC1 (struct drm_encoder*) ; 

u16 FUNC2(struct drm_encoder *encoder)
{
	struct drm_encoder *other_encoder = FUNC0(encoder);

	if (other_encoder) {
		struct radeon_encoder *radeon_encoder = FUNC1(other_encoder);

		switch (radeon_encoder->encoder_id) {
		case ENCODER_OBJECT_ID_TRAVIS:
		case ENCODER_OBJECT_ID_NUTMEG:
			return radeon_encoder->encoder_id;
		default:
			return ENCODER_OBJECT_ID_NONE;
		}
	}
	return ENCODER_OBJECT_ID_NONE;
}