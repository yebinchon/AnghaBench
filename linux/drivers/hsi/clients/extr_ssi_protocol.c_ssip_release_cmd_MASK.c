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
struct ssi_protocol {int /*<<< orphan*/  lock; int /*<<< orphan*/  cmdqueue; } ;
struct hsi_msg {int /*<<< orphan*/  link; TYPE_1__* cl; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct ssi_protocol* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct hsi_msg*) ; 

__attribute__((used)) static inline void FUNC6(struct hsi_msg *msg)
{
	struct ssi_protocol *ssi = FUNC1(msg->cl);

	FUNC0(&msg->cl->device, "Release cmd 0x%08x\n", FUNC5(msg));
	FUNC3(&ssi->lock);
	FUNC2(&msg->link, &ssi->cmdqueue);
	FUNC4(&ssi->lock);
}