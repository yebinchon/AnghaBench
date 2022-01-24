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
typedef  int /*<<< orphan*/  u8 ;
struct cyapa {int dummy; } ;

/* Variables and functions */
 int CYAPA_CMD_LEN ; 
 int FUNC0 (struct cyapa*,int /*<<< orphan*/ ,size_t,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static int FUNC2(struct cyapa *cyapa,
		const u8 *buf, size_t len)
{
	int error;
	size_t i;
	unsigned char cmd[CYAPA_CMD_LEN + 1];
	size_t cmd_len;

	for (i = 0; i < len; i += CYAPA_CMD_LEN) {
		const u8 *payload = &buf[i];

		cmd_len = (len - i >= CYAPA_CMD_LEN) ? CYAPA_CMD_LEN : len - i;
		cmd[0] = i;
		FUNC1(&cmd[1], payload, cmd_len);

		error = FUNC0(cyapa, 0, cmd_len + 1, cmd);
		if (error)
			return error;
	}
	return 0;
}