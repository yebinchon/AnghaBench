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
struct smsdvb_client_t {int fe_status; scalar_t__ legacy_ber; int /*<<< orphan*/  coredev; } ;

/* Variables and functions */
 int FE_HAS_LOCK ; 
 int /*<<< orphan*/  SMS_LED_HI ; 
 int /*<<< orphan*/  SMS_LED_LO ; 
 int /*<<< orphan*/  SMS_LED_OFF ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(struct smsdvb_client_t *client)
{
	if (!(client->fe_status & FE_HAS_LOCK))
		return FUNC0(client->coredev, SMS_LED_OFF);

	return FUNC0(client->coredev,
				     (client->legacy_ber == 0) ?
				     SMS_LED_HI : SMS_LED_LO);
}