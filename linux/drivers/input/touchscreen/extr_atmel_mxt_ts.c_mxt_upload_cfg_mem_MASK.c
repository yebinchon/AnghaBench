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
struct mxt_data {TYPE_1__* client; } ;
struct mxt_cfg {unsigned int mem_size; scalar_t__ mem; scalar_t__ start_ofs; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int MXT_MAX_BLOCK_WRITE ; 
 int FUNC0 (TYPE_1__*,scalar_t__,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int FUNC2(struct mxt_data *data, struct mxt_cfg *cfg)
{
	unsigned int byte_offset = 0;
	int error;

	/* Write configuration as blocks */
	while (byte_offset < cfg->mem_size) {
		unsigned int size = cfg->mem_size - byte_offset;

		if (size > MXT_MAX_BLOCK_WRITE)
			size = MXT_MAX_BLOCK_WRITE;

		error = FUNC0(data->client,
					cfg->start_ofs + byte_offset,
					size, cfg->mem + byte_offset);
		if (error) {
			FUNC1(&data->client->dev,
				"Config write error, ret=%d\n", error);
			return error;
		}

		byte_offset += size;
	}

	return 0;
}