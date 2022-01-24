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
typedef  int u32 ;
struct nvkm_object {int dummy; } ;
struct nv20_gr_chan {int chid; int /*<<< orphan*/  inst; struct nv20_gr* gr; } ;
struct nv20_gr {int /*<<< orphan*/  ctxtab; } ;

/* Variables and functions */
 struct nv20_gr_chan* FUNC0 (struct nvkm_object*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 

int
FUNC5(struct nvkm_object *object)
{
	struct nv20_gr_chan *chan = FUNC0(object);
	struct nv20_gr *gr = chan->gr;
	u32 inst = FUNC3(chan->inst);

	FUNC2(gr->ctxtab);
	FUNC4(gr->ctxtab, chan->chid * 4, inst >> 4);
	FUNC1(gr->ctxtab);
	return 0;
}