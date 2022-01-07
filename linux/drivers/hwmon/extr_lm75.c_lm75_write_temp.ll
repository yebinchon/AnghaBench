; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm75.c_lm75_write_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm75.c_lm75_write_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.lm75_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@LM75_REG_MAX = common dso_local global i32 0, align 4
@LM75_REG_HYST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LM75_TEMP_MIN = common dso_local global i32 0, align 4
@LM75_TEMP_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i64)* @lm75_write_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm75_write_temp(%struct.device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.lm75_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.lm75_data* @dev_get_drvdata(%struct.device* %11)
  store %struct.lm75_data* %12, %struct.lm75_data** %8, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %18 [
    i32 129, label %14
    i32 128, label %16
  ]

14:                                               ; preds = %3
  %15 = load i32, i32* @LM75_REG_MAX, align 4
  store i32 %15, i32* %10, align 4
  br label %21

16:                                               ; preds = %3
  %17 = load i32, i32* @LM75_REG_HYST, align 4
  store i32 %17, i32* %10, align 4
  br label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %60

21:                                               ; preds = %16, %14
  %22 = load %struct.lm75_data*, %struct.lm75_data** %8, align 8
  %23 = getelementptr inbounds %struct.lm75_data, %struct.lm75_data* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load %struct.lm75_data*, %struct.lm75_data** %8, align 8
  %30 = getelementptr inbounds %struct.lm75_data, %struct.lm75_data* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  br label %38

34:                                               ; preds = %21
  %35 = load %struct.lm75_data*, %struct.lm75_data** %8, align 8
  %36 = getelementptr inbounds %struct.lm75_data, %struct.lm75_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %34, %28
  %39 = load i64, i64* %7, align 8
  %40 = load i32, i32* @LM75_TEMP_MIN, align 4
  %41 = load i32, i32* @LM75_TEMP_MAX, align 4
  %42 = call i64 @clamp_val(i64 %39, i32 %40, i32 %41)
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sub nsw i32 %44, 8
  %46 = zext i32 %45 to i64
  %47 = shl i64 %43, %46
  %48 = call i32 @DIV_ROUND_CLOSEST(i64 %47, i32 1000)
  %49 = load i32, i32* %9, align 4
  %50 = sub nsw i32 16, %49
  %51 = shl i32 %48, %50
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %7, align 8
  %53 = load %struct.lm75_data*, %struct.lm75_data** %8, align 8
  %54 = getelementptr inbounds %struct.lm75_data, %struct.lm75_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i64, i64* %7, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @regmap_write(i32 %55, i32 %56, i32 %58)
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %38, %18
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.lm75_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i64, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
