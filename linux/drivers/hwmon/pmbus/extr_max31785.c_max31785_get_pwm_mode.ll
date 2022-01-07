; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_max31785.c_max31785_get_pwm_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_max31785.c_max31785_get_pwm_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@PMBUS_FAN_CONFIG_12 = common dso_local global i32 0, align 4
@PMBUS_FAN_COMMAND_1 = common dso_local global i32 0, align 4
@PB_FAN_1_RPM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32)* @max31785_get_pwm_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max31785_get_pwm_mode(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @PMBUS_FAN_CONFIG_12, align 4
  %11 = call i32 @pmbus_read_byte_data(%struct.i2c_client* %8, i32 %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %45

16:                                               ; preds = %2
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @PMBUS_FAN_COMMAND_1, align 4
  %20 = call i32 @pmbus_read_word_data(%struct.i2c_client* %17, i32 %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %45

25:                                               ; preds = %16
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @PB_FAN_1_RPM, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i32, i32* %7, align 4
  %32 = icmp sge i32 %31, 32768
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 3, i32 2
  store i32 %34, i32* %3, align 4
  br label %45

35:                                               ; preds = %25
  %36 = load i32, i32* %7, align 4
  %37 = icmp sge i32 %36, 32768
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 3, i32* %3, align 4
  br label %45

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = icmp sge i32 %40, 10001
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %45

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %42, %38, %30, %23, %14
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @pmbus_read_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @pmbus_read_word_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
