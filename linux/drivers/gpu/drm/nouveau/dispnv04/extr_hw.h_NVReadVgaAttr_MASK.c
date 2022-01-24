#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct nvif_object {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_4__ {struct nvif_object object; } ;
struct TYPE_5__ {TYPE_1__ device; } ;
struct TYPE_6__ {TYPE_2__ client; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_device*,int) ; 
 scalar_t__ NV_PRMCIO_ARX ; 
 scalar_t__ NV_PRMCIO_AR__READ ; 
 scalar_t__ NV_PRMCIO_INP0__COLOR ; 
 int NV_PRMCIO_SIZE ; 
 TYPE_3__* FUNC1 (struct drm_device*) ; 
 int FUNC2 (struct nvif_object*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct nvif_object*,scalar_t__,int) ; 

__attribute__((used)) static inline uint8_t FUNC4(struct drm_device *dev,
					int head, uint8_t index)
{
	struct nvif_object *device = &FUNC1(dev)->client.device.object;
	uint8_t val;
	if (FUNC0(dev, head))
		index &= ~0x20;
	else
		index |= 0x20;

	FUNC2(device, NV_PRMCIO_INP0__COLOR + head * NV_PRMCIO_SIZE);
	FUNC3(device, NV_PRMCIO_ARX + head * NV_PRMCIO_SIZE, index);
	val = FUNC2(device, NV_PRMCIO_AR__READ + head * NV_PRMCIO_SIZE);
	return val;
}