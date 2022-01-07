; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6650.c_max6650_set_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6650.c_max6650_set_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max6650_data = type { i32, i32, i32 }

@MAX6650_CFG_MODE_OFF = common dso_local global i32 0, align 4
@FAN_RPM_MIN = common dso_local global i32 0, align 4
@FAN_RPM_MAX = common dso_local global i32 0, align 4
@clock = common dso_local global i32 0, align 4
@MAX6650_REG_SPEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max6650_data*, i64)* @max6650_set_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max6650_set_target(%struct.max6650_data* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max6650_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.max6650_data* %0, %struct.max6650_data** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.max6650_data*, %struct.max6650_data** %4, align 8
  %12 = load i32, i32* @MAX6650_CFG_MODE_OFF, align 4
  %13 = call i32 @max6650_set_operating_mode(%struct.max6650_data* %11, i32 %12)
  store i32 %13, i32* %3, align 4
  br label %52

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = load i32, i32* @FAN_RPM_MIN, align 4
  %17 = load i32, i32* @FAN_RPM_MAX, align 4
  %18 = call i64 @clamp_val(i64 %15, i32 %16, i32 %17)
  store i64 %18, i64* %5, align 8
  %19 = load %struct.max6650_data*, %struct.max6650_data** %4, align 8
  %20 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @DIV_FROM_REG(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @clock, align 4
  %24 = load i32, i32* %6, align 4
  %25 = mul nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %5, align 8
  %28 = mul i64 256, %27
  %29 = udiv i64 %28, 60
  %30 = udiv i64 %26, %29
  %31 = sub i64 %30, 1
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %14
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %35, %14
  %37 = load i32, i32* %7, align 4
  %38 = icmp sgt i32 %37, 255
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 255, i32* %7, align 4
  br label %40

40:                                               ; preds = %39, %36
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.max6650_data*, %struct.max6650_data** %4, align 8
  %43 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.max6650_data*, %struct.max6650_data** %4, align 8
  %45 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MAX6650_REG_SPEED, align 4
  %48 = load %struct.max6650_data*, %struct.max6650_data** %4, align 8
  %49 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @i2c_smbus_write_byte_data(i32 %46, i32 %47, i32 %50)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %40, %10
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @max6650_set_operating_mode(%struct.max6650_data*, i32) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @DIV_FROM_REG(i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
