; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max31790.c_max31790_write_fan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max31790.c_max31790_write_fan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.max31790_data = type { i32*, i32*, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@FAN_RPM_MIN = common dso_local global i32 0, align 4
@FAN_RPM_MAX = common dso_local global i32 0, align 4
@MAX31790_FAN_DYN_SR_MASK = common dso_local global i32 0, align 4
@MAX31790_FAN_DYN_SR_SHIFT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i64)* @max31790_write_fan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max31790_write_fan(%struct.device* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.max31790_data*, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.max31790_data* @dev_get_drvdata(%struct.device* %15)
  store %struct.max31790_data* %16, %struct.max31790_data** %9, align 8
  %17 = load %struct.max31790_data*, %struct.max31790_data** %9, align 8
  %18 = getelementptr inbounds %struct.max31790_data, %struct.max31790_data* %17, i32 0, i32 3
  %19 = load %struct.i2c_client*, %struct.i2c_client** %18, align 8
  store %struct.i2c_client* %19, %struct.i2c_client** %10, align 8
  store i32 0, i32* %12, align 4
  %20 = load %struct.max31790_data*, %struct.max31790_data** %9, align 8
  %21 = getelementptr inbounds %struct.max31790_data, %struct.max31790_data* %20, i32 0, i32 2
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %101 [
    i32 128, label %24
  ]

24:                                               ; preds = %4
  %25 = load i64, i64* %8, align 8
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @FAN_RPM_MIN, align 4
  %28 = load i32, i32* @FAN_RPM_MAX, align 4
  %29 = call i8* @clamp_val(i32 %26, i32 %27, i32 %28)
  %30 = ptrtoint i8* %29 to i64
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @bits_for_tach_period(i64 %31)
  store i32 %32, i32* %13, align 4
  %33 = load %struct.max31790_data*, %struct.max31790_data** %9, align 8
  %34 = getelementptr inbounds %struct.max31790_data, %struct.max31790_data* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MAX31790_FAN_DYN_SR_MASK, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @MAX31790_FAN_DYN_SR_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = or i32 %42, %45
  %47 = load %struct.max31790_data*, %struct.max31790_data** %9, align 8
  %48 = getelementptr inbounds %struct.max31790_data, %struct.max31790_data* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %46, i32* %52, align 4
  %53 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @MAX31790_REG_FAN_DYNAMICS(i32 %54)
  %56 = load %struct.max31790_data*, %struct.max31790_data** %9, align 8
  %57 = getelementptr inbounds %struct.max31790_data, %struct.max31790_data* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %53, i32 %55, i32 %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %24
  br label %104

67:                                               ; preds = %24
  %68 = load %struct.max31790_data*, %struct.max31790_data** %9, align 8
  %69 = getelementptr inbounds %struct.max31790_data, %struct.max31790_data* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @get_tach_period(i32 %74)
  store i32 %75, i32* %14, align 4
  %76 = load i64, i64* %8, align 8
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @RPM_TO_REG(i64 %76, i32 %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = call i8* @clamp_val(i32 %79, i32 1, i32 2047)
  %81 = ptrtoint i8* %80 to i32
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = shl i32 %82, 5
  %84 = load %struct.max31790_data*, %struct.max31790_data** %9, align 8
  %85 = getelementptr inbounds %struct.max31790_data, %struct.max31790_data* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %83, i32* %89, align 4
  %90 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @MAX31790_REG_TARGET_COUNT(i32 %91)
  %93 = load %struct.max31790_data*, %struct.max31790_data** %9, align 8
  %94 = getelementptr inbounds %struct.max31790_data, %struct.max31790_data* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @i2c_smbus_write_word_swapped(%struct.i2c_client* %90, i32 %92, i32 %99)
  store i32 %100, i32* %12, align 4
  br label %104

101:                                              ; preds = %4
  %102 = load i32, i32* @EOPNOTSUPP, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %12, align 4
  br label %104

104:                                              ; preds = %101, %67, %66
  %105 = load %struct.max31790_data*, %struct.max31790_data** %9, align 8
  %106 = getelementptr inbounds %struct.max31790_data, %struct.max31790_data* %105, i32 0, i32 2
  %107 = call i32 @mutex_unlock(i32* %106)
  %108 = load i32, i32* %12, align 4
  ret i32 %108
}

declare dso_local %struct.max31790_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @clamp_val(i32, i32, i32) #1

declare dso_local i32 @bits_for_tach_period(i64) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @MAX31790_REG_FAN_DYNAMICS(i32) #1

declare dso_local i32 @get_tach_period(i32) #1

declare dso_local i32 @RPM_TO_REG(i64, i32) #1

declare dso_local i32 @i2c_smbus_write_word_swapped(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @MAX31790_REG_TARGET_COUNT(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
