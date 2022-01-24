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
typedef  int u8 ;
typedef  int u64 ;
typedef  int u32 ;
struct nvif_object {int dummy; } ;
struct nouveau_svm_fault_buffer {size_t fault_nr; struct nouveau_svm_fault** fault; struct nvif_object object; } ;
struct nouveau_svm_fault {int inst; int addr; int time; int engine; int gpc; int hub; int access; int client; int fault; } ;
struct nouveau_svm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct nouveau_svm*,char*,int,int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 struct nouveau_svm_fault* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_svm*,int const,int const,int const,int const) ; 
 int /*<<< orphan*/  FUNC4 (struct nvif_object*,int,int,int) ; 
 int FUNC5 (struct nvif_object*,int) ; 

__attribute__((used)) static void
FUNC6(struct nouveau_svm *svm,
			struct nouveau_svm_fault_buffer *buffer, u32 offset)
{
	struct nvif_object *memory = &buffer->object;
	const u32 instlo = FUNC5(memory, offset + 0x00);
	const u32 insthi = FUNC5(memory, offset + 0x04);
	const u32 addrlo = FUNC5(memory, offset + 0x08);
	const u32 addrhi = FUNC5(memory, offset + 0x0c);
	const u32 timelo = FUNC5(memory, offset + 0x10);
	const u32 timehi = FUNC5(memory, offset + 0x14);
	const u32 engine = FUNC5(memory, offset + 0x18);
	const u32   info = FUNC5(memory, offset + 0x1c);
	const u64   inst = (u64)insthi << 32 | instlo;
	const u8     gpc = (info & 0x1f000000) >> 24;
	const u8     hub = (info & 0x00100000) >> 20;
	const u8  client = (info & 0x00007f00) >> 8;
	struct nouveau_svm_fault *fault;

	//XXX: i think we're supposed to spin waiting */
	if (FUNC1(!(info & 0x80000000)))
		return;

	FUNC4(memory, offset + 0x1c, 0x80000000, 0x00000000);

	if (!buffer->fault[buffer->fault_nr]) {
		fault = FUNC2(sizeof(*fault), GFP_KERNEL);
		if (FUNC1(!fault)) {
			FUNC3(svm, inst, hub, gpc, client);
			return;
		}
		buffer->fault[buffer->fault_nr] = fault;
	}

	fault = buffer->fault[buffer->fault_nr++];
	fault->inst   = inst;
	fault->addr   = (u64)addrhi << 32 | addrlo;
	fault->time   = (u64)timehi << 32 | timelo;
	fault->engine = engine;
	fault->gpc    = gpc;
	fault->hub    = hub;
	fault->access = (info & 0x000f0000) >> 16;
	fault->client = client;
	fault->fault  = (info & 0x0000001f);

	FUNC0(svm, "fault %016llx %016llx %02x",
		fault->inst, fault->addr, fault->access);
}