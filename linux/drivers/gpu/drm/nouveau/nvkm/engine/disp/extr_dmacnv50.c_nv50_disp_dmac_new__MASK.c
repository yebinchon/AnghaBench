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
typedef  int /*<<< orphan*/  u64 ;
struct nvkm_oclass {struct nvkm_client* client; } ;
struct nvkm_object {int dummy; } ;
struct nvkm_client {int dummy; } ;
struct nv50_disp_chan_mthd {int dummy; } ;
struct nv50_disp_chan_func {int dummy; } ;
struct nv50_disp_chan {int push; int /*<<< orphan*/  memory; } ;
struct nv50_disp {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
#define  NVKM_MEM_TARGET_HOST 130 
#define  NVKM_MEM_TARGET_NCOH 129 
#define  NVKM_MEM_TARGET_VRAM 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct nv50_disp_chan* FUNC2 (struct nvkm_object*) ; 
 int FUNC3 (struct nv50_disp_chan_func const*,struct nv50_disp_chan_mthd const*,struct nv50_disp*,int,int,int,struct nvkm_oclass const*,struct nvkm_object**) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nvkm_client*,int /*<<< orphan*/ ) ; 

int
FUNC8(const struct nv50_disp_chan_func *func,
		    const struct nv50_disp_chan_mthd *mthd,
		    struct nv50_disp *disp, int chid, int head, u64 push,
		    const struct nvkm_oclass *oclass,
		    struct nvkm_object **pobject)
{
	struct nvkm_client *client = oclass->client;
	struct nv50_disp_chan *chan;
	int ret;

	ret = FUNC3(func, mthd, disp, chid, chid, head, oclass,
				  pobject);
	chan = FUNC2(*pobject);
	if (ret)
		return ret;

	chan->memory = FUNC7(client, push);
	if (FUNC0(chan->memory))
		return FUNC1(chan->memory);

	if (FUNC5(chan->memory) < 0x1000)
		return -EINVAL;

	switch (FUNC6(chan->memory)) {
	case NVKM_MEM_TARGET_VRAM: chan->push = 0x00000001; break;
	case NVKM_MEM_TARGET_NCOH: chan->push = 0x00000002; break;
	case NVKM_MEM_TARGET_HOST: chan->push = 0x00000003; break;
	default:
		return -EINVAL;
	}

	chan->push |= FUNC4(chan->memory) >> 8;
	return 0;
}