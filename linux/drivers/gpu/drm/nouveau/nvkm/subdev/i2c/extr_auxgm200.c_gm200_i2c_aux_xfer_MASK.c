#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct nvkm_i2c_aux {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_9__ {TYPE_3__* pad; } ;
struct gm200_i2c_aux {int ch; TYPE_4__ base; } ;
struct TYPE_8__ {TYPE_2__* i2c; } ;
struct TYPE_6__ {struct nvkm_device* device; } ;
struct TYPE_7__ {TYPE_1__ subdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,char*,...) ; 
 int EIO ; 
 int ENXIO ; 
 int ETIMEDOUT ; 
 struct gm200_i2c_aux* FUNC2 (struct nvkm_i2c_aux*) ; 
 int /*<<< orphan*/  FUNC3 (struct gm200_i2c_aux*) ; 
 int FUNC4 (struct gm200_i2c_aux*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int) ; 
 int FUNC6 (struct nvkm_device*,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct nvkm_device*,int const) ; 
 int /*<<< orphan*/  FUNC8 (struct nvkm_device*,int const,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static int
FUNC10(struct nvkm_i2c_aux *obj, bool retry,
		   u8 type, u32 addr, u8 *data, u8 *size)
{
	struct gm200_i2c_aux *aux = FUNC2(obj);
	struct nvkm_device *device = aux->base.pad->i2c->subdev.device;
	const u32 base = aux->ch * 0x50;
	u32 ctrl, stat, timeout, retries = 0;
	u32 xbuf[4] = {};
	int ret, i;

	FUNC1(&aux->base, "%d: %08x %d", type, addr, *size);

	ret = FUNC4(aux);
	if (ret < 0)
		goto out;

	stat = FUNC7(device, 0x00d958 + base);
	if (!(stat & 0x10000000)) {
		FUNC1(&aux->base, "sink not detected");
		ret = -ENXIO;
		goto out;
	}

	if (!(type & 1)) {
		FUNC5(xbuf, data, *size);
		for (i = 0; i < 16; i += 4) {
			FUNC1(&aux->base, "wr %08x", xbuf[i / 4]);
			FUNC8(device, 0x00d930 + base + i, xbuf[i / 4]);
		}
	}

	ctrl  = FUNC7(device, 0x00d954 + base);
	ctrl &= ~0x0001f1ff;
	ctrl |= type << 12;
	ctrl |= (*size ? (*size - 1) : 0x00000100);
	FUNC8(device, 0x00d950 + base, addr);

	/* (maybe) retry transaction a number of times on failure... */
	do {
		/* reset, and delay a while if this is a retry */
		FUNC8(device, 0x00d954 + base, 0x80000000 | ctrl);
		FUNC8(device, 0x00d954 + base, 0x00000000 | ctrl);
		if (retries)
			FUNC9(400);

		/* transaction request, wait up to 1ms for it to complete */
		FUNC8(device, 0x00d954 + base, 0x00010000 | ctrl);

		timeout = 1000;
		do {
			ctrl = FUNC7(device, 0x00d954 + base);
			FUNC9(1);
			if (!timeout--) {
				FUNC0(&aux->base, "timeout %08x", ctrl);
				ret = -EIO;
				goto out;
			}
		} while (ctrl & 0x00010000);
		ret = 0;

		/* read status, and check if transaction completed ok */
		stat = FUNC6(device, 0x00d958 + base, 0, 0);
		if ((stat & 0x000f0000) == 0x00080000 ||
		    (stat & 0x000f0000) == 0x00020000)
			ret = 1;
		if ((stat & 0x00000100))
			ret = -ETIMEDOUT;
		if ((stat & 0x00000e00))
			ret = -EIO;

		FUNC1(&aux->base, "%02d %08x %08x", retries, ctrl, stat);
	} while (ret && retry && retries++ < 32);

	if (type & 1) {
		for (i = 0; i < 16; i += 4) {
			xbuf[i / 4] = FUNC7(device, 0x00d940 + base + i);
			FUNC1(&aux->base, "rd %08x", xbuf[i / 4]);
		}
		FUNC5(data, xbuf, *size);
		*size = stat & 0x0000001f;
	}

out:
	FUNC3(aux);
	return ret < 0 ? ret : (stat & 0x000f0000) >> 16;
}