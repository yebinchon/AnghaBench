#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct mxt_object {int dummy; } ;
struct mxt_info {int dummy; } ;
struct mxt_data {scalar_t__ info_crc; scalar_t__ config_crc; scalar_t__ mem_size; scalar_t__ T71_address; scalar_t__ T7_address; TYPE_3__* info; TYPE_1__* client; } ;
struct TYPE_5__ {scalar_t__ family_id; scalar_t__ variant_id; } ;
struct mxt_cfg {scalar_t__ start_ofs; scalar_t__ mem_size; scalar_t__ raw; scalar_t__ mem; scalar_t__ raw_pos; TYPE_2__ info; int /*<<< orphan*/  raw_size; } ;
struct firmware {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct device {int dummy; } ;
struct TYPE_6__ {scalar_t__ family_id; scalar_t__ variant_id; int object_num; } ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MXT_BACKUP_VALUE ; 
 int /*<<< orphan*/  MXT_CFG_MAGIC ; 
 int /*<<< orphan*/  MXT_COMMAND_BACKUPNV ; 
 int /*<<< orphan*/  MXT_COMMAND_REPORTALL ; 
 scalar_t__ MXT_INFO_CHECKSUM_SIZE ; 
 scalar_t__ MXT_OBJECT_START ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct mxt_data*) ; 
 int FUNC9 (struct mxt_data*,struct mxt_cfg*) ; 
 int FUNC10 (struct mxt_data*) ; 
 int /*<<< orphan*/  FUNC11 (struct mxt_data*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (struct mxt_data*,struct mxt_cfg*) ; 
 int FUNC13 (scalar_t__,char*,...) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC16(struct mxt_data *data, const struct firmware *fw)
{
	struct device *dev = &data->client->dev;
	struct mxt_cfg cfg;
	int ret;
	int offset;
	int i;
	u32 info_crc, config_crc, calculated_crc;
	u16 crc_start = 0;

	/* Make zero terminated copy of the OBP_RAW file */
	cfg.raw = FUNC5(fw->data, fw->size, GFP_KERNEL);
	if (!cfg.raw)
		return -ENOMEM;

	cfg.raw_size = fw->size;

	FUNC11(data, MXT_COMMAND_REPORTALL, 1);

	if (FUNC15(cfg.raw, MXT_CFG_MAGIC, FUNC14(MXT_CFG_MAGIC))) {
		FUNC1(dev, "Unrecognised config file\n");
		ret = -EINVAL;
		goto release_raw;
	}

	cfg.raw_pos = FUNC14(MXT_CFG_MAGIC);

	/* Load information block and check */
	for (i = 0; i < sizeof(struct mxt_info); i++) {
		ret = FUNC13(cfg.raw + cfg.raw_pos, "%hhx%n",
			     (unsigned char *)&cfg.info + i,
			     &offset);
		if (ret != 1) {
			FUNC1(dev, "Bad format\n");
			ret = -EINVAL;
			goto release_raw;
		}

		cfg.raw_pos += offset;
	}

	if (cfg.info.family_id != data->info->family_id) {
		FUNC1(dev, "Family ID mismatch!\n");
		ret = -EINVAL;
		goto release_raw;
	}

	if (cfg.info.variant_id != data->info->variant_id) {
		FUNC1(dev, "Variant ID mismatch!\n");
		ret = -EINVAL;
		goto release_raw;
	}

	/* Read CRCs */
	ret = FUNC13(cfg.raw + cfg.raw_pos, "%x%n", &info_crc, &offset);
	if (ret != 1) {
		FUNC1(dev, "Bad format: failed to parse Info CRC\n");
		ret = -EINVAL;
		goto release_raw;
	}
	cfg.raw_pos += offset;

	ret = FUNC13(cfg.raw + cfg.raw_pos, "%x%n", &config_crc, &offset);
	if (ret != 1) {
		FUNC1(dev, "Bad format: failed to parse Config CRC\n");
		ret = -EINVAL;
		goto release_raw;
	}
	cfg.raw_pos += offset;

	/*
	 * The Info Block CRC is calculated over mxt_info and the object
	 * table. If it does not match then we are trying to load the
	 * configuration from a different chip or firmware version, so
	 * the configuration CRC is invalid anyway.
	 */
	if (info_crc == data->info_crc) {
		if (config_crc == 0 || data->config_crc == 0) {
			FUNC2(dev, "CRC zero, attempting to apply config\n");
		} else if (config_crc == data->config_crc) {
			FUNC0(dev, "Config CRC 0x%06X: OK\n",
				 data->config_crc);
			ret = 0;
			goto release_raw;
		} else {
			FUNC2(dev, "Config CRC 0x%06X: does not match file 0x%06X\n",
				 data->config_crc, config_crc);
		}
	} else {
		FUNC3(dev,
			 "Warning: Info CRC error - device=0x%06X file=0x%06X\n",
			 data->info_crc, info_crc);
	}

	/* Malloc memory to store configuration */
	cfg.start_ofs = MXT_OBJECT_START +
			data->info->object_num * sizeof(struct mxt_object) +
			MXT_INFO_CHECKSUM_SIZE;
	cfg.mem_size = data->mem_size - cfg.start_ofs;
	cfg.mem = FUNC6(cfg.mem_size, GFP_KERNEL);
	if (!cfg.mem) {
		ret = -ENOMEM;
		goto release_raw;
	}

	ret = FUNC9(data, &cfg);
	if (ret)
		goto release_mem;

	/* Calculate crc of the received configs (not the raw config file) */
	if (data->T71_address)
		crc_start = data->T71_address;
	else if (data->T7_address)
		crc_start = data->T7_address;
	else
		FUNC3(dev, "Could not find CRC start\n");

	if (crc_start > cfg.start_ofs) {
		calculated_crc = FUNC7(cfg.mem,
						   crc_start - cfg.start_ofs,
						   cfg.mem_size);

		if (config_crc > 0 && config_crc != calculated_crc)
			FUNC3(dev, "Config CRC in file inconsistent, calculated=%06X, file=%06X\n",
				 calculated_crc, config_crc);
	}

	ret = FUNC12(data, &cfg);
	if (ret)
		goto release_mem;

	FUNC11(data, MXT_COMMAND_BACKUPNV, MXT_BACKUP_VALUE);

	ret = FUNC10(data);
	if (ret)
		goto release_mem;

	FUNC2(dev, "Config successfully updated\n");

	/* T7 config may have changed */
	FUNC8(data);

release_mem:
	FUNC4(cfg.mem);
release_raw:
	FUNC4(cfg.raw);
	return ret;
}