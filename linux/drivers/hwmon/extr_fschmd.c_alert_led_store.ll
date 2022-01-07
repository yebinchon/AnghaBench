; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_fschmd.c_alert_led_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_fschmd.c_alert_led_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fschmd_data = type { i32, i32 }

@FSCHMD_REG_CONTROL = common dso_local global i32 0, align 4
@FSCHMD_CONTROL_ALERT_LED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @alert_led_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alert_led_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fschmd_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.fschmd_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.fschmd_data* %15, %struct.fschmd_data** %11, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @kstrtoul(i8* %16, i32 10, i64* %12)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %13, align 4
  store i32 %21, i32* %5, align 4
  br label %55

22:                                               ; preds = %4
  %23 = load %struct.fschmd_data*, %struct.fschmd_data** %11, align 8
  %24 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = call i32 @to_i2c_client(%struct.device* %26)
  %28 = load i32, i32* @FSCHMD_REG_CONTROL, align 4
  %29 = call i32 @i2c_smbus_read_byte_data(i32 %27, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i64, i64* %12, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  %33 = load i32, i32* @FSCHMD_CONTROL_ALERT_LED, align 4
  %34 = load i32, i32* %10, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %10, align 4
  br label %41

36:                                               ; preds = %22
  %37 = load i32, i32* @FSCHMD_CONTROL_ALERT_LED, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %36, %32
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = call i32 @to_i2c_client(%struct.device* %42)
  %44 = load i32, i32* @FSCHMD_REG_CONTROL, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @i2c_smbus_write_byte_data(i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.fschmd_data*, %struct.fschmd_data** %11, align 8
  %49 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.fschmd_data*, %struct.fschmd_data** %11, align 8
  %51 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i64, i64* %9, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %41, %20
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local %struct.fschmd_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @to_i2c_client(%struct.device*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
