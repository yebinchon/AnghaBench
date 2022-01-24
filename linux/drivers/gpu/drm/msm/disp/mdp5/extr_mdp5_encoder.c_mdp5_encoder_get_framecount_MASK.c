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
typedef  int /*<<< orphan*/  u32 ;
struct mdp5_kms {int dummy; } ;
struct mdp5_encoder {TYPE_1__* intf; } ;
struct drm_encoder {int dummy; } ;
struct TYPE_2__ {int num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct mdp5_kms* FUNC1 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC2 (struct mdp5_kms*,int /*<<< orphan*/ ) ; 
 struct mdp5_encoder* FUNC3 (struct drm_encoder*) ; 

u32 FUNC4(struct drm_encoder *encoder)
{
	struct mdp5_encoder *mdp5_encoder = FUNC3(encoder);
	struct mdp5_kms *mdp5_kms = FUNC1(encoder);
	int intf = mdp5_encoder->intf->num;

	return FUNC2(mdp5_kms, FUNC0(intf));
}