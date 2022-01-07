; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_tmp102.c_tmp102_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_tmp102.c_tmp102_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.tmp102 = type { i32, i64, %struct.device* }

@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"adapter doesn't support SMBus word transactions\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tmp102_regmap_config = common dso_local global i32 0, align 4
@TMP102_CONF_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"error reading config register\0A\00", align 1
@TMP102_CONFREG_MASK = common dso_local global i32 0, align 4
@TMP102_CONF_R0 = common dso_local global i32 0, align 4
@TMP102_CONF_R1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"unexpected config register value\0A\00", align 1
@tmp102_restore_config = common dso_local global i32 0, align 4
@TMP102_CONFIG_CLEAR = common dso_local global i32 0, align 4
@TMP102_CONFIG_SET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"error writing config register\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@CONVERSION_TIME_MS = common dso_local global i32 0, align 4
@tmp102_chip_info = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"unable to register hwmon device\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tmp102_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmp102_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.tmp102*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 2
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %17 = call i32 @i2c_check_functionality(i32 %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = call i32 @dev_err(%struct.device* %20, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %133

24:                                               ; preds = %2
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.tmp102* @devm_kzalloc(%struct.device* %25, i32 24, i32 %26)
  store %struct.tmp102* %27, %struct.tmp102** %8, align 8
  %28 = load %struct.tmp102*, %struct.tmp102** %8, align 8
  %29 = icmp ne %struct.tmp102* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %133

33:                                               ; preds = %24
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = load %struct.tmp102*, %struct.tmp102** %8, align 8
  %36 = call i32 @i2c_set_clientdata(%struct.i2c_client* %34, %struct.tmp102* %35)
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = call %struct.device* @devm_regmap_init_i2c(%struct.i2c_client* %37, i32* @tmp102_regmap_config)
  %39 = load %struct.tmp102*, %struct.tmp102** %8, align 8
  %40 = getelementptr inbounds %struct.tmp102, %struct.tmp102* %39, i32 0, i32 2
  store %struct.device* %38, %struct.device** %40, align 8
  %41 = load %struct.tmp102*, %struct.tmp102** %8, align 8
  %42 = getelementptr inbounds %struct.tmp102, %struct.tmp102* %41, i32 0, i32 2
  %43 = load %struct.device*, %struct.device** %42, align 8
  %44 = call i64 @IS_ERR(%struct.device* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %33
  %47 = load %struct.tmp102*, %struct.tmp102** %8, align 8
  %48 = getelementptr inbounds %struct.tmp102, %struct.tmp102* %47, i32 0, i32 2
  %49 = load %struct.device*, %struct.device** %48, align 8
  %50 = call i32 @PTR_ERR(%struct.device* %49)
  store i32 %50, i32* %3, align 4
  br label %133

51:                                               ; preds = %33
  %52 = load %struct.tmp102*, %struct.tmp102** %8, align 8
  %53 = getelementptr inbounds %struct.tmp102, %struct.tmp102* %52, i32 0, i32 2
  %54 = load %struct.device*, %struct.device** %53, align 8
  %55 = load i32, i32* @TMP102_CONF_REG, align 4
  %56 = call i32 @regmap_read(%struct.device* %54, i32 %55, i32* %9)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load %struct.device*, %struct.device** %6, align 8
  %61 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %3, align 4
  br label %133

63:                                               ; preds = %51
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @TMP102_CONFREG_MASK, align 4
  %66 = xor i32 %65, -1
  %67 = and i32 %64, %66
  %68 = load i32, i32* @TMP102_CONF_R0, align 4
  %69 = load i32, i32* @TMP102_CONF_R1, align 4
  %70 = or i32 %68, %69
  %71 = icmp ne i32 %67, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %63
  %73 = load %struct.device*, %struct.device** %6, align 8
  %74 = call i32 @dev_err(%struct.device* %73, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32, i32* @ENODEV, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %133

77:                                               ; preds = %63
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.tmp102*, %struct.tmp102** %8, align 8
  %80 = getelementptr inbounds %struct.tmp102, %struct.tmp102* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.device*, %struct.device** %6, align 8
  %82 = load i32, i32* @tmp102_restore_config, align 4
  %83 = load %struct.tmp102*, %struct.tmp102** %8, align 8
  %84 = call i32 @devm_add_action_or_reset(%struct.device* %81, i32 %82, %struct.tmp102* %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %77
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %3, align 4
  br label %133

89:                                               ; preds = %77
  %90 = load i32, i32* @TMP102_CONFIG_CLEAR, align 4
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %9, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* @TMP102_CONFIG_SET, align 4
  %95 = load i32, i32* %9, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %9, align 4
  %97 = load %struct.tmp102*, %struct.tmp102** %8, align 8
  %98 = getelementptr inbounds %struct.tmp102, %struct.tmp102* %97, i32 0, i32 2
  %99 = load %struct.device*, %struct.device** %98, align 8
  %100 = load i32, i32* @TMP102_CONF_REG, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @regmap_write(%struct.device* %99, i32 %100, i32 %101)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %89
  %106 = load %struct.device*, %struct.device** %6, align 8
  %107 = call i32 @dev_err(%struct.device* %106, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %108 = load i32, i32* %10, align 4
  store i32 %108, i32* %3, align 4
  br label %133

109:                                              ; preds = %89
  %110 = load i64, i64* @jiffies, align 8
  %111 = load i32, i32* @CONVERSION_TIME_MS, align 4
  %112 = call i64 @msecs_to_jiffies(i32 %111)
  %113 = add nsw i64 %110, %112
  %114 = load %struct.tmp102*, %struct.tmp102** %8, align 8
  %115 = getelementptr inbounds %struct.tmp102, %struct.tmp102* %114, i32 0, i32 1
  store i64 %113, i64* %115, align 8
  %116 = load %struct.device*, %struct.device** %6, align 8
  %117 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %118 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.tmp102*, %struct.tmp102** %8, align 8
  %121 = call %struct.device* @devm_hwmon_device_register_with_info(%struct.device* %116, i32 %119, %struct.tmp102* %120, i32* @tmp102_chip_info, i32* null)
  store %struct.device* %121, %struct.device** %7, align 8
  %122 = load %struct.device*, %struct.device** %7, align 8
  %123 = call i64 @IS_ERR(%struct.device* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %109
  %126 = load %struct.device*, %struct.device** %6, align 8
  %127 = call i32 @dev_dbg(%struct.device* %126, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %128 = load %struct.device*, %struct.device** %7, align 8
  %129 = call i32 @PTR_ERR(%struct.device* %128)
  store i32 %129, i32* %3, align 4
  br label %133

130:                                              ; preds = %109
  %131 = load %struct.device*, %struct.device** %6, align 8
  %132 = call i32 @dev_info(%struct.device* %131, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %133

133:                                              ; preds = %130, %125, %105, %87, %72, %59, %46, %30, %19
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.tmp102* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.tmp102*) #1

declare dso_local %struct.device* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local i32 @regmap_read(%struct.device*, i32, i32*) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, %struct.tmp102*) #1

declare dso_local i32 @regmap_write(%struct.device*, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_info(%struct.device*, i32, %struct.tmp102*, i32*, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
