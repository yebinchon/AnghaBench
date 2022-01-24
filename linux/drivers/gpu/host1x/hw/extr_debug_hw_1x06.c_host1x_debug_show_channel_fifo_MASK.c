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
typedef  int u32 ;
struct output {int dummy; } ;
struct host1x_channel {int /*<<< orphan*/  id; } ;
struct host1x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HOST1X_CHANNEL_CMDFIFO_RDATA ; 
 int /*<<< orphan*/  HOST1X_CHANNEL_CMDFIFO_STAT ; 
 int HOST1X_CHANNEL_CMDFIFO_STAT_EMPTY ; 
 int /*<<< orphan*/  HOST1X_HV_CMDFIFO_PEEK_CTRL ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int HOST1X_HV_CMDFIFO_PEEK_CTRL_ENABLE ; 
 int /*<<< orphan*/  HOST1X_HV_CMDFIFO_PEEK_PTRS ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  HOST1X_HV_CMDFIFO_PEEK_READ ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  HOST1X_HV_ICG_EN_OVERRIDE ; 
 int INVALID_PAYLOAD ; 
 int FUNC7 (struct host1x_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct output*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct output*,char*,...) ; 
 int FUNC10 (struct host1x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct host1x*,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC12 (struct output*,int,int*) ; 

__attribute__((used)) static void FUNC13(struct host1x *host,
					   struct host1x_channel *ch,
					   struct output *o)
{
#if HOST1X_HW <= 6
	u32 rd_ptr, wr_ptr, start, end;
	u32 payload = INVALID_PAYLOAD;
	unsigned int data_count = 0;
#endif
	u32 val;

	FUNC9(o, "%u: fifo:\n", ch->id);

	val = FUNC7(ch, HOST1X_CHANNEL_CMDFIFO_STAT);
	FUNC9(o, "CMDFIFO_STAT %08x\n", val);
	if (val & HOST1X_CHANNEL_CMDFIFO_STAT_EMPTY) {
		FUNC9(o, "[empty]\n");
		return;
	}

	val = FUNC7(ch, HOST1X_CHANNEL_CMDFIFO_RDATA);
	FUNC9(o, "CMDFIFO_RDATA %08x\n", val);

#if HOST1X_HW <= 6
	/* Peek pointer values are invalid during SLCG, so disable it */
	FUNC11(host, 0x1, HOST1X_HV_ICG_EN_OVERRIDE);

	val = 0;
	val |= HOST1X_HV_CMDFIFO_PEEK_CTRL_ENABLE;
	val |= FUNC1(ch->id);
	FUNC11(host, val, HOST1X_HV_CMDFIFO_PEEK_CTRL);

	val = FUNC10(host, HOST1X_HV_CMDFIFO_PEEK_PTRS);
	rd_ptr = FUNC2(val);
	wr_ptr = FUNC3(val);

	val = FUNC10(host, FUNC4(ch->id));
	start = FUNC5(val);
	end = FUNC6(val);

	do {
		val = 0;
		val |= HOST1X_HV_CMDFIFO_PEEK_CTRL_ENABLE;
		val |= FUNC1(ch->id);
		val |= FUNC0(rd_ptr);
		FUNC11(host, val,
					 HOST1X_HV_CMDFIFO_PEEK_CTRL);

		val = FUNC10(host,
					      HOST1X_HV_CMDFIFO_PEEK_READ);

		if (!data_count) {
			FUNC9(o, "%03x 0x%08x: ",
					    rd_ptr - start, val);
			data_count = FUNC12(o, val, &payload);
		} else {
			FUNC8(o, "%08x%s", val,
					  data_count > 1 ? ", " : "])\n");
			data_count--;
		}

		if (rd_ptr == end)
			rd_ptr = start;
		else
			rd_ptr++;
	} while (rd_ptr != wr_ptr);

	if (data_count)
		FUNC8(o, ", ...])\n");
	FUNC9(o, "\n");

	FUNC11(host, 0x0, HOST1X_HV_CMDFIFO_PEEK_CTRL);
	FUNC11(host, 0x0, HOST1X_HV_ICG_EN_OVERRIDE);
#endif
}