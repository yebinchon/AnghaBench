#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct thermal_zone_device {int dummy; } ;
struct TYPE_9__ {int class; int /*<<< orphan*/  sensor_id; } ;
struct TYPE_8__ {int mode; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {TYPE_3__ attr; int /*<<< orphan*/  show; } ;
struct TYPE_6__ {TYPE_3__ attr; int /*<<< orphan*/  show; } ;
struct sensor_data {TYPE_4__ info; TYPE_2__ dev_attr_label; TYPE_1__ dev_attr_input; int /*<<< orphan*/  label; int /*<<< orphan*/  input; int /*<<< orphan*/  scale; } ;
struct scpi_thermal_zone {int sensor_id; struct scpi_sensors* scpi_sensors; } ;
struct TYPE_10__ {TYPE_3__** attrs; } ;
struct scpi_sensors {struct sensor_data* data; int /*<<< orphan*/  thermal_zones; TYPE_5__** groups; TYPE_5__ group; TYPE_3__** attrs; struct scpi_ops* scpi_ops; } ;
struct scpi_ops {int (* sensor_get_capability ) (int*) ;int (* sensor_get_info ) (int,TYPE_4__*) ;} ;
struct platform_device {struct thermal_zone_device dev; } ;
struct of_device_id {int /*<<< orphan*/ * data; } ;
typedef  struct thermal_zone_device device ;

/* Variables and functions */
#define  CURRENT 132 
#define  ENERGY 131 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct thermal_zone_device*) ; 
#define  POWER 130 
 int FUNC2 (struct thermal_zone_device*) ; 
#define  TEMPERATURE 129 
#define  VOLTAGE 128 
 int /*<<< orphan*/  FUNC3 (struct thermal_zone_device*,char*) ; 
 struct thermal_zone_device* FUNC4 (struct thermal_zone_device*,char*,struct scpi_sensors*,TYPE_5__**) ; 
 void* FUNC5 (struct thermal_zone_device*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct thermal_zone_device*,struct scpi_thermal_zone*) ; 
 void* FUNC7 (struct thermal_zone_device*,int,int /*<<< orphan*/ ) ; 
 struct thermal_zone_device* FUNC8 (struct thermal_zone_device*,int /*<<< orphan*/ ,struct scpi_thermal_zone*,int /*<<< orphan*/ *) ; 
 struct scpi_ops* FUNC9 () ; 
 struct of_device_id* FUNC10 (int /*<<< orphan*/ ,struct thermal_zone_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct scpi_sensors*) ; 
 int /*<<< orphan*/  scpi_of_match ; 
 int /*<<< orphan*/  scpi_sensor_ops ; 
 int /*<<< orphan*/  scpi_show_label ; 
 int /*<<< orphan*/  scpi_show_sensor ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,char*,int) ; 
 int FUNC13 (int*) ; 
 int FUNC14 (int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	u16 nr_sensors, i;
	const u32 *scale;
	int num_temp = 0, num_volt = 0, num_current = 0, num_power = 0;
	int num_energy = 0;
	struct scpi_ops *scpi_ops;
	struct device *hwdev, *dev = &pdev->dev;
	struct scpi_sensors *scpi_sensors;
	const struct of_device_id *of_id;
	int idx, ret;

	scpi_ops = FUNC9();
	if (!scpi_ops)
		return -EPROBE_DEFER;

	ret = scpi_ops->sensor_get_capability(&nr_sensors);
	if (ret)
		return ret;

	if (!nr_sensors)
		return -ENODEV;

	scpi_sensors = FUNC7(dev, sizeof(*scpi_sensors), GFP_KERNEL);
	if (!scpi_sensors)
		return -ENOMEM;

	scpi_sensors->data = FUNC5(dev, nr_sensors,
				   sizeof(*scpi_sensors->data), GFP_KERNEL);
	if (!scpi_sensors->data)
		return -ENOMEM;

	scpi_sensors->attrs = FUNC5(dev, (nr_sensors * 2) + 1,
				   sizeof(*scpi_sensors->attrs), GFP_KERNEL);
	if (!scpi_sensors->attrs)
		return -ENOMEM;

	scpi_sensors->scpi_ops = scpi_ops;

	of_id = FUNC10(scpi_of_match, &pdev->dev);
	if (!of_id) {
		FUNC3(&pdev->dev, "Unable to initialize scpi-hwmon data\n");
		return -ENODEV;
	}
	scale = of_id->data;

	for (i = 0, idx = 0; i < nr_sensors; i++) {
		struct sensor_data *sensor = &scpi_sensors->data[idx];

		ret = scpi_ops->sensor_get_info(i, &sensor->info);
		if (ret)
			return ret;

		switch (sensor->info.class) {
		case TEMPERATURE:
			FUNC12(sensor->input, sizeof(sensor->input),
				 "temp%d_input", num_temp + 1);
			FUNC12(sensor->label, sizeof(sensor->input),
				 "temp%d_label", num_temp + 1);
			num_temp++;
			break;
		case VOLTAGE:
			FUNC12(sensor->input, sizeof(sensor->input),
				 "in%d_input", num_volt);
			FUNC12(sensor->label, sizeof(sensor->input),
				 "in%d_label", num_volt);
			num_volt++;
			break;
		case CURRENT:
			FUNC12(sensor->input, sizeof(sensor->input),
				 "curr%d_input", num_current + 1);
			FUNC12(sensor->label, sizeof(sensor->input),
				 "curr%d_label", num_current + 1);
			num_current++;
			break;
		case POWER:
			FUNC12(sensor->input, sizeof(sensor->input),
				 "power%d_input", num_power + 1);
			FUNC12(sensor->label, sizeof(sensor->input),
				 "power%d_label", num_power + 1);
			num_power++;
			break;
		case ENERGY:
			FUNC12(sensor->input, sizeof(sensor->input),
				 "energy%d_input", num_energy + 1);
			FUNC12(sensor->label, sizeof(sensor->input),
				 "energy%d_label", num_energy + 1);
			num_energy++;
			break;
		default:
			continue;
		}

		sensor->scale = scale[sensor->info.class];

		sensor->dev_attr_input.attr.mode = 0444;
		sensor->dev_attr_input.show = scpi_show_sensor;
		sensor->dev_attr_input.attr.name = sensor->input;

		sensor->dev_attr_label.attr.mode = 0444;
		sensor->dev_attr_label.show = scpi_show_label;
		sensor->dev_attr_label.attr.name = sensor->label;

		scpi_sensors->attrs[idx << 1] = &sensor->dev_attr_input.attr;
		scpi_sensors->attrs[(idx << 1) + 1] = &sensor->dev_attr_label.attr;

		FUNC15(scpi_sensors->attrs[idx << 1]);
		FUNC15(scpi_sensors->attrs[(idx << 1) + 1]);
		idx++;
	}

	scpi_sensors->group.attrs = scpi_sensors->attrs;
	scpi_sensors->groups[0] = &scpi_sensors->group;

	FUNC11(pdev, scpi_sensors);

	hwdev = FUNC4(dev,
			"scpi_sensors", scpi_sensors, scpi_sensors->groups);

	if (FUNC1(hwdev))
		return FUNC2(hwdev);

	/*
	 * Register the temperature sensors with the thermal framework
	 * to allow their usage in setting up the thermal zones from
	 * device tree.
	 *
	 * NOTE: Not all temperature sensors maybe used for thermal
	 * control
	 */
	FUNC0(&scpi_sensors->thermal_zones);
	for (i = 0; i < nr_sensors; i++) {
		struct sensor_data *sensor = &scpi_sensors->data[i];
		struct thermal_zone_device *z;
		struct scpi_thermal_zone *zone;

		if (sensor->info.class != TEMPERATURE)
			continue;

		zone = FUNC7(dev, sizeof(*zone), GFP_KERNEL);
		if (!zone)
			return -ENOMEM;

		zone->sensor_id = i;
		zone->scpi_sensors = scpi_sensors;
		z = FUNC8(dev,
							 sensor->info.sensor_id,
							 zone,
							 &scpi_sensor_ops);
		/*
		 * The call to thermal_zone_of_sensor_register returns
		 * an error for sensors that are not associated with
		 * any thermal zones or if the thermal subsystem is
		 * not configured.
		 */
		if (FUNC1(z))
			FUNC6(dev, zone);
	}

	return 0;
}