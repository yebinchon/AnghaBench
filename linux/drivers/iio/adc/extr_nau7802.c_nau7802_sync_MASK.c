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
struct nau7802_state {int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int NAU7802_PUCTRL_CS_BIT ; 
 int /*<<< orphan*/  NAU7802_REG_PUCTRL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct nau7802_state *st)
{
	int ret;

	ret = FUNC0(st->client, NAU7802_REG_PUCTRL);
	if (ret < 0)
		return ret;
	ret = FUNC1(st->client, NAU7802_REG_PUCTRL,
				ret | NAU7802_PUCTRL_CS_BIT);

	return ret;
}