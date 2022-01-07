; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm75.c_lm75_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm75.c_lm75_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.i2c_client = type { i32, i32, %struct.device }
%struct.device = type { i64 }
%struct.i2c_device_id = type { i32 }
%struct.lm75_data = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, %struct.device*, %struct.i2c_client* }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lm75_regmap_config = common dso_local global i32 0, align 4
@device_params = common dso_local global %struct.TYPE_2__* null, align 8
@LM75_REG_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Can't read config? %d\0A\00", align 1
@lm75_remove = common dso_local global i32 0, align 4
@lm75_chip_info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"%s: sensor '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lm75_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm75_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.lm75_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 2
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 2
  %22 = call i64 @of_device_get_match_data(%struct.device* %21)
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %11, align 4
  br label %28

24:                                               ; preds = %2
  %25 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %26 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %24, %19
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %33 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @i2c_check_functionality(i32 %31, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %156

40:                                               ; preds = %28
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.lm75_data* @devm_kzalloc(%struct.device* %41, i32 48, i32 %42)
  store %struct.lm75_data* %43, %struct.lm75_data** %8, align 8
  %44 = load %struct.lm75_data*, %struct.lm75_data** %8, align 8
  %45 = icmp ne %struct.lm75_data* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %156

49:                                               ; preds = %40
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = load %struct.lm75_data*, %struct.lm75_data** %8, align 8
  %52 = getelementptr inbounds %struct.lm75_data, %struct.lm75_data* %51, i32 0, i32 7
  store %struct.i2c_client* %50, %struct.i2c_client** %52, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.lm75_data*, %struct.lm75_data** %8, align 8
  %55 = getelementptr inbounds %struct.lm75_data, %struct.lm75_data* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = call %struct.device* @devm_regmap_init_i2c(%struct.i2c_client* %56, i32* @lm75_regmap_config)
  %58 = load %struct.lm75_data*, %struct.lm75_data** %8, align 8
  %59 = getelementptr inbounds %struct.lm75_data, %struct.lm75_data* %58, i32 0, i32 6
  store %struct.device* %57, %struct.device** %59, align 8
  %60 = load %struct.lm75_data*, %struct.lm75_data** %8, align 8
  %61 = getelementptr inbounds %struct.lm75_data, %struct.lm75_data* %60, i32 0, i32 6
  %62 = load %struct.device*, %struct.device** %61, align 8
  %63 = call i64 @IS_ERR(%struct.device* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %49
  %66 = load %struct.lm75_data*, %struct.lm75_data** %8, align 8
  %67 = getelementptr inbounds %struct.lm75_data, %struct.lm75_data* %66, i32 0, i32 6
  %68 = load %struct.device*, %struct.device** %67, align 8
  %69 = call i32 @PTR_ERR(%struct.device* %68)
  store i32 %69, i32* %3, align 4
  br label %156

70:                                               ; preds = %49
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @device_params, align 8
  %72 = load %struct.lm75_data*, %struct.lm75_data** %8, align 8
  %73 = getelementptr inbounds %struct.lm75_data, %struct.lm75_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %75
  %77 = load %struct.lm75_data*, %struct.lm75_data** %8, align 8
  %78 = getelementptr inbounds %struct.lm75_data, %struct.lm75_data* %77, i32 0, i32 3
  store %struct.TYPE_2__* %76, %struct.TYPE_2__** %78, align 8
  %79 = load %struct.lm75_data*, %struct.lm75_data** %8, align 8
  %80 = getelementptr inbounds %struct.lm75_data, %struct.lm75_data* %79, i32 0, i32 3
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.lm75_data*, %struct.lm75_data** %8, align 8
  %85 = getelementptr inbounds %struct.lm75_data, %struct.lm75_data* %84, i32 0, i32 5
  store i32 %83, i32* %85, align 4
  %86 = load %struct.lm75_data*, %struct.lm75_data** %8, align 8
  %87 = getelementptr inbounds %struct.lm75_data, %struct.lm75_data* %86, i32 0, i32 3
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.lm75_data*, %struct.lm75_data** %8, align 8
  %92 = getelementptr inbounds %struct.lm75_data, %struct.lm75_data* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 8
  %93 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %94 = load i32, i32* @LM75_REG_CONF, align 4
  %95 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %93, i32 %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %70
  %99 = load %struct.device*, %struct.device** %6, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @dev_dbg(%struct.device* %99, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %3, align 4
  br label %156

103:                                              ; preds = %70
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.lm75_data*, %struct.lm75_data** %8, align 8
  %106 = getelementptr inbounds %struct.lm75_data, %struct.lm75_data* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.lm75_data*, %struct.lm75_data** %8, align 8
  %109 = getelementptr inbounds %struct.lm75_data, %struct.lm75_data* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  %110 = load %struct.lm75_data*, %struct.lm75_data** %8, align 8
  %111 = load %struct.lm75_data*, %struct.lm75_data** %8, align 8
  %112 = getelementptr inbounds %struct.lm75_data, %struct.lm75_data* %111, i32 0, i32 3
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.lm75_data*, %struct.lm75_data** %8, align 8
  %117 = getelementptr inbounds %struct.lm75_data, %struct.lm75_data* %116, i32 0, i32 3
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @lm75_write_config(%struct.lm75_data* %110, i32 %115, i32 %120)
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %10, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %103
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %3, align 4
  br label %156

126:                                              ; preds = %103
  %127 = load %struct.device*, %struct.device** %6, align 8
  %128 = load i32, i32* @lm75_remove, align 4
  %129 = load %struct.lm75_data*, %struct.lm75_data** %8, align 8
  %130 = call i32 @devm_add_action_or_reset(%struct.device* %127, i32 %128, %struct.lm75_data* %129)
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %126
  %134 = load i32, i32* %10, align 4
  store i32 %134, i32* %3, align 4
  br label %156

135:                                              ; preds = %126
  %136 = load %struct.device*, %struct.device** %6, align 8
  %137 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %138 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.lm75_data*, %struct.lm75_data** %8, align 8
  %141 = call %struct.device* @devm_hwmon_device_register_with_info(%struct.device* %136, i32 %139, %struct.lm75_data* %140, i32* @lm75_chip_info, i32* null)
  store %struct.device* %141, %struct.device** %7, align 8
  %142 = load %struct.device*, %struct.device** %7, align 8
  %143 = call i64 @IS_ERR(%struct.device* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %135
  %146 = load %struct.device*, %struct.device** %7, align 8
  %147 = call i32 @PTR_ERR(%struct.device* %146)
  store i32 %147, i32* %3, align 4
  br label %156

148:                                              ; preds = %135
  %149 = load %struct.device*, %struct.device** %6, align 8
  %150 = load %struct.device*, %struct.device** %7, align 8
  %151 = call i32 @dev_name(%struct.device* %150)
  %152 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %153 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @dev_info(%struct.device* %149, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %151, i32 %154)
  store i32 0, i32* %3, align 4
  br label %156

156:                                              ; preds = %148, %145, %133, %124, %98, %65, %46, %37
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i64 @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.lm75_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.device* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @lm75_write_config(%struct.lm75_data*, i32, i32) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, %struct.lm75_data*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_info(%struct.device*, i32, %struct.lm75_data*, i32*, i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
