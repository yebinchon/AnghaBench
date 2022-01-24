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
struct ssi_protocol {int /*<<< orphan*/  lock; } ;
struct hsi_msg {struct hsi_msg* context; struct hsi_client* cl; } ;
struct hsi_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SENDING ; 
 int /*<<< orphan*/  FUNC0 (struct hsi_client*,struct hsi_msg*) ; 
 struct ssi_protocol* FUNC1 (struct hsi_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct hsi_msg*) ; 
 int /*<<< orphan*/  FUNC5 (struct ssi_protocol*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct hsi_msg *msg)
{
	struct hsi_client *cl = msg->cl;
	struct ssi_protocol *ssi = FUNC1(cl);
	struct hsi_msg *data;

	data = msg->context;
	FUNC4(msg);
	FUNC2(&ssi->lock);
	FUNC5(ssi, SENDING);
	FUNC3(&ssi->lock);
	FUNC0(cl, data);
}