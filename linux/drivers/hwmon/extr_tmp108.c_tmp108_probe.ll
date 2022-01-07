; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_tmp108.c_tmp108_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_tmp108.c_tmp108_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.tmp108 = type { i32, i32, i32 }

@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"adapter doesn't support SMBus word transactions\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tmp108_regmap_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"regmap init failed: %d\00", align 1
@TMP108_REG_CONF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"error reading config register: %d\00", align 1
@TMP108_CONF_MODE_MASK = common dso_local global i32 0, align 4
@TMP108_MODE_CONTINUOUS = common dso_local global i32 0, align 4
@TMP108_CONF_TM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"error writing config register: %d\00", align 1
@jiffies = common dso_local global i32 0, align 4
@TMP108_MODE_SHUTDOWN = common dso_local global i32 0, align 4
@TMP108_CONVERSION_TIME_MS = common dso_local global i32 0, align 4
@tmp108_restore_config = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"add action or reset failed: %d\00", align 1
@tmp108_chip_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tmp108_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmp108_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.tmp108*, align 8
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
  %21 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %20, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %137

24:                                               ; preds = %2
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.tmp108* @devm_kzalloc(%struct.device* %25, i32 12, i32 %26)
  store %struct.tmp108* %27, %struct.tmp108** %8, align 8
  %28 = load %struct.tmp108*, %struct.tmp108** %8, align 8
  %29 = icmp ne %struct.tmp108* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %137

33:                                               ; preds = %24
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = load %struct.tmp108*, %struct.tmp108** %8, align 8
  %36 = call i32 @dev_set_drvdata(%struct.device* %34, %struct.tmp108* %35)
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %37, i32* @tmp108_regmap_config)
  %39 = load %struct.tmp108*, %struct.tmp108** %8, align 8
  %40 = getelementptr inbounds %struct.tmp108, %struct.tmp108* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.tmp108*, %struct.tmp108** %8, align 8
  %42 = getelementptr inbounds %struct.tmp108, %struct.tmp108* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @IS_ERR(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %33
  %47 = load %struct.tmp108*, %struct.tmp108** %8, align 8
  %48 = getelementptr inbounds %struct.tmp108, %struct.tmp108* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @PTR_ERR(i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load %struct.device*, %struct.device** %6, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %3, align 4
  br label %137

55:                                               ; preds = %33
  %56 = load %struct.tmp108*, %struct.tmp108** %8, align 8
  %57 = getelementptr inbounds %struct.tmp108, %struct.tmp108* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @TMP108_REG_CONF, align 4
  %60 = call i32 @regmap_read(i32 %58, i32 %59, i32* %10)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %55
  %64 = load %struct.device*, %struct.device** %6, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %64, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %3, align 4
  br label %137

68:                                               ; preds = %55
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.tmp108*, %struct.tmp108** %8, align 8
  %71 = getelementptr inbounds %struct.tmp108, %struct.tmp108* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @TMP108_CONF_MODE_MASK, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %10, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* @TMP108_MODE_CONTINUOUS, align 4
  %77 = load i32, i32* %10, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* @TMP108_CONF_TM, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %10, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %10, align 4
  %83 = load %struct.tmp108*, %struct.tmp108** %8, align 8
  %84 = getelementptr inbounds %struct.tmp108, %struct.tmp108* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @TMP108_REG_CONF, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @regmap_write(i32 %85, i32 %86, i32 %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %68
  %92 = load %struct.device*, %struct.device** %6, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %92, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %3, align 4
  br label %137

96:                                               ; preds = %68
  %97 = load i32, i32* @jiffies, align 4
  %98 = load %struct.tmp108*, %struct.tmp108** %8, align 8
  %99 = getelementptr inbounds %struct.tmp108, %struct.tmp108* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.tmp108*, %struct.tmp108** %8, align 8
  %101 = getelementptr inbounds %struct.tmp108, %struct.tmp108* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @TMP108_CONF_MODE_MASK, align 4
  %104 = and i32 %102, %103
  %105 = load i32, i32* @TMP108_MODE_SHUTDOWN, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %116

107:                                              ; preds = %96
  %108 = load i32, i32* @TMP108_CONVERSION_TIME_MS, align 4
  %109 = call i64 @msecs_to_jiffies(i32 %108)
  %110 = load %struct.tmp108*, %struct.tmp108** %8, align 8
  %111 = getelementptr inbounds %struct.tmp108, %struct.tmp108* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %113, %109
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %111, align 4
  br label %116

116:                                              ; preds = %107, %96
  %117 = load %struct.device*, %struct.device** %6, align 8
  %118 = load i32, i32* @tmp108_restore_config, align 4
  %119 = load %struct.tmp108*, %struct.tmp108** %8, align 8
  %120 = call i32 @devm_add_action_or_reset(%struct.device* %117, i32 %118, %struct.tmp108* %119)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %116
  %124 = load %struct.device*, %struct.device** %6, align 8
  %125 = load i32, i32* %9, align 4
  %126 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %124, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* %9, align 4
  store i32 %127, i32* %3, align 4
  br label %137

128:                                              ; preds = %116
  %129 = load %struct.device*, %struct.device** %6, align 8
  %130 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %131 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.tmp108*, %struct.tmp108** %8, align 8
  %134 = call %struct.device* @devm_hwmon_device_register_with_info(%struct.device* %129, i32 %132, %struct.tmp108* %133, i32* @tmp108_chip_info, i32* null)
  store %struct.device* %134, %struct.device** %7, align 8
  %135 = load %struct.device*, %struct.device** %7, align 8
  %136 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %135)
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %128, %123, %91, %63, %46, %30, %19
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.tmp108* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.tmp108*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, %struct.tmp108*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_info(%struct.device*, i32, %struct.tmp108*, i32*, i32*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
