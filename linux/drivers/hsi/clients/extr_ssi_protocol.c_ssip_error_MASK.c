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
struct ssi_protocol {int dummy; } ;
struct hsi_msg {int /*<<< orphan*/  complete; } ;
struct hsi_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hsi_client*,struct hsi_msg*) ; 
 struct ssi_protocol* FUNC1 (struct hsi_client*) ; 
 struct hsi_msg* FUNC2 (struct ssi_protocol*) ; 
 int /*<<< orphan*/  FUNC3 (struct hsi_client*) ; 
 int /*<<< orphan*/  FUNC4 (struct hsi_client*) ; 
 int /*<<< orphan*/  ssip_rxcmd_complete ; 

__attribute__((used)) static void FUNC5(struct hsi_client *cl)
{
	struct ssi_protocol *ssi = FUNC1(cl);
	struct hsi_msg *msg;

	FUNC3(cl);
	FUNC4(cl);
	msg = FUNC2(ssi);
	msg->complete = ssip_rxcmd_complete;
	FUNC0(cl, msg);
}