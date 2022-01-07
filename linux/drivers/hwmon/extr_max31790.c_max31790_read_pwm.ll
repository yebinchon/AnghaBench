; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max31790.c_max31790_read_pwm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max31790.c_max31790_read_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.max31790_data = type { i32*, i32* }

@MAX31790_FAN_CFG_RPM_MODE = common dso_local global i32 0, align 4
@MAX31790_FAN_CFG_TACH_INPUT_EN = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i64*)* @max31790_read_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max31790_read_pwm(%struct.device* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.max31790_data*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.max31790_data* @max31790_update_device(%struct.device* %12)
  store %struct.max31790_data* %13, %struct.max31790_data** %10, align 8
  %14 = load %struct.max31790_data*, %struct.max31790_data** %10, align 8
  %15 = call i64 @IS_ERR(%struct.max31790_data* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load %struct.max31790_data*, %struct.max31790_data** %10, align 8
  %19 = call i32 @PTR_ERR(%struct.max31790_data* %18)
  store i32 %19, i32* %5, align 4
  br label %61

20:                                               ; preds = %4
  %21 = load %struct.max31790_data*, %struct.max31790_data** %10, align 8
  %22 = getelementptr inbounds %struct.max31790_data, %struct.max31790_data* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %7, align 4
  switch i32 %28, label %58 [
    i32 128, label %29
    i32 129, label %40
  ]

29:                                               ; preds = %20
  %30 = load %struct.max31790_data*, %struct.max31790_data** %10, align 8
  %31 = getelementptr inbounds %struct.max31790_data, %struct.max31790_data* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 8
  %38 = sext i32 %37 to i64
  %39 = load i64*, i64** %9, align 8
  store i64 %38, i64* %39, align 8
  store i32 0, i32* %5, align 4
  br label %61

40:                                               ; preds = %20
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @MAX31790_FAN_CFG_RPM_MODE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i64*, i64** %9, align 8
  store i64 2, i64* %46, align 8
  br label %57

47:                                               ; preds = %40
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @MAX31790_FAN_CFG_TACH_INPUT_EN, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i64*, i64** %9, align 8
  store i64 1, i64* %53, align 8
  br label %56

54:                                               ; preds = %47
  %55 = load i64*, i64** %9, align 8
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %54, %52
  br label %57

57:                                               ; preds = %56, %45
  store i32 0, i32* %5, align 4
  br label %61

58:                                               ; preds = %20
  %59 = load i32, i32* @EOPNOTSUPP, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %58, %57, %29, %17
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local %struct.max31790_data* @max31790_update_device(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.max31790_data*) #1

declare dso_local i32 @PTR_ERR(%struct.max31790_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
