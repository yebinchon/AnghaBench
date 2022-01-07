; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_sht3x.c_heater_enable_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_sht3x.c_heater_enable_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sht3x_data = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@sht3x_cmd_heater_on = common dso_local global i32 0, align 4
@SHT3X_CMD_LENGTH = common dso_local global i32 0, align 4
@sht3x_cmd_heater_off = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @heater_enable_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @heater_enable_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sht3x_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.sht3x_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.sht3x_data* %15, %struct.sht3x_data** %10, align 8
  %16 = load %struct.sht3x_data*, %struct.sht3x_data** %10, align 8
  %17 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %16, i32 0, i32 1
  %18 = load %struct.i2c_client*, %struct.i2c_client** %17, align 8
  store %struct.i2c_client* %18, %struct.i2c_client** %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @kstrtobool(i8* %19, i32* %13)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %5, align 4
  br label %44

25:                                               ; preds = %4
  %26 = load %struct.sht3x_data*, %struct.sht3x_data** %10, align 8
  %27 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %33 = load i32, i32* @SHT3X_CMD_LENGTH, align 4
  %34 = call i32 @i2c_master_send(%struct.i2c_client* %32, i8* bitcast (i32* @sht3x_cmd_heater_on to i8*), i32 %33)
  store i32 %34, i32* %12, align 4
  br label %39

35:                                               ; preds = %25
  %36 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %37 = load i32, i32* @SHT3X_CMD_LENGTH, align 4
  %38 = call i32 @i2c_master_send(%struct.i2c_client* %36, i8* bitcast (i32* @sht3x_cmd_heater_off to i8*), i32 %37)
  store i32 %38, i32* %12, align 4
  br label %39

39:                                               ; preds = %35, %31
  %40 = load %struct.sht3x_data*, %struct.sht3x_data** %10, align 8
  %41 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %39, %23
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local %struct.sht3x_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtobool(i8*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
