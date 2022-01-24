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
struct ssi_protocol {int /*<<< orphan*/  netdev; int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_usecnt; int /*<<< orphan*/  txqueue; } ;
struct hsi_msg {struct hsi_client* cl; } ;
struct hsi_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SEND_IDLE ; 
 int /*<<< orphan*/  SEND_READY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct ssi_protocol* FUNC1 (struct hsi_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct hsi_client*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct hsi_msg*) ; 
 int /*<<< orphan*/  FUNC8 (struct ssi_protocol*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct hsi_client*) ; 

__attribute__((used)) static void FUNC10(struct hsi_msg *msg)
{
	struct hsi_client *cl = msg->cl;
	struct ssi_protocol *ssi = FUNC1(cl);

	FUNC7(msg);
	FUNC5(&ssi->lock);
	if (FUNC3(&ssi->txqueue)) {
		if (FUNC0(&ssi->tx_usecnt)) {
			FUNC8(ssi, SEND_READY);
		} else {
			FUNC8(ssi, SEND_IDLE);
			FUNC2(cl);
		}
		FUNC6(&ssi->lock);
	} else {
		FUNC6(&ssi->lock);
		FUNC9(cl);
	}
	FUNC4(ssi->netdev);
}