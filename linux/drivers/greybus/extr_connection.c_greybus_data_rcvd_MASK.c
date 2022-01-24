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
typedef  int /*<<< orphan*/  u16 ;
struct gb_host_device {int /*<<< orphan*/  dev; } ;
struct gb_connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,size_t) ; 
 struct gb_connection* FUNC1 (struct gb_host_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC3 (struct gb_connection*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct gb_host_device*) ; 

void FUNC5(struct gb_host_device *hd, u16 cport_id,
		       u8 *data, size_t length)
{
	struct gb_connection *connection;

	FUNC4(hd);

	connection = FUNC1(hd, cport_id);
	if (!connection) {
		FUNC0(&hd->dev,
			"nonexistent connection (%zu bytes dropped)\n", length);
		return;
	}
	FUNC3(connection, data, length);
	FUNC2(connection);
}