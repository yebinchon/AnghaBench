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
struct nvkm_devinit {int dummy; } ;
struct nv50_devinit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nv50_devinit*,int) ; 
 struct nv50_devinit* FUNC1 (struct nvkm_devinit*) ; 

__attribute__((used)) static int
FUNC2(struct nvkm_devinit *base, bool post)
{
	struct nv50_devinit *init = FUNC1(base);
	FUNC0(init, post);
	return 0;
}