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
typedef  scalar_t__ u32 ;
struct output {int dummy; } ;
struct host1x_channel {int /*<<< orphan*/  id; } ;
struct host1x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HOST1X_CHANNEL_FIFOSTAT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  HOST1X_SYNC_CFPEEK_CTRL ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  HOST1X_SYNC_CFPEEK_PTRS ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  HOST1X_SYNC_CFPEEK_READ ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (struct host1x_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct output*,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (struct output*,char*,...) ; 
 scalar_t__ FUNC12 (struct host1x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct host1x*,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC14 (struct output*,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(struct host1x *host,
					   struct host1x_channel *ch,
					   struct output *o)
{
	u32 val, rd_ptr, wr_ptr, start, end;
	unsigned int data_count = 0;

	FUNC11(o, "%u: fifo:\n", ch->id);

	val = FUNC9(ch, HOST1X_CHANNEL_FIFOSTAT);
	FUNC11(o, "FIFOSTAT %08x\n", val);
	if (FUNC0(val)) {
		FUNC11(o, "[empty]\n");
		return;
	}

	FUNC13(host, 0x0, HOST1X_SYNC_CFPEEK_CTRL);
	FUNC13(host, FUNC3(1) |
			   FUNC2(ch->id),
			   HOST1X_SYNC_CFPEEK_CTRL);

	val = FUNC12(host, HOST1X_SYNC_CFPEEK_PTRS);
	rd_ptr = FUNC4(val);
	wr_ptr = FUNC5(val);

	val = FUNC12(host, FUNC6(ch->id));
	start = FUNC7(val);
	end = FUNC8(val);

	do {
		FUNC13(host, 0x0, HOST1X_SYNC_CFPEEK_CTRL);
		FUNC13(host, FUNC3(1) |
				   FUNC2(ch->id) |
				   FUNC1(rd_ptr),
				   HOST1X_SYNC_CFPEEK_CTRL);
		val = FUNC12(host, HOST1X_SYNC_CFPEEK_READ);

		if (!data_count) {
			FUNC11(o, "%08x: ", val);
			data_count = FUNC14(o, val, NULL);
		} else {
			FUNC10(o, "%08x%s", val,
					  data_count > 1 ? ", " : "])\n");
			data_count--;
		}

		if (rd_ptr == end)
			rd_ptr = start;
		else
			rd_ptr++;
	} while (rd_ptr != wr_ptr);

	if (data_count)
		FUNC10(o, ", ...])\n");
	FUNC11(o, "\n");

	FUNC13(host, 0x0, HOST1X_SYNC_CFPEEK_CTRL);
}