; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_mlxreg-fan.c_mlxreg_fan_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_mlxreg-fan.c_mlxreg_fan_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mlxreg_fan = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@MLXREG_FAN_MIN_DUTY = common dso_local global i64 0, align 8
@MLXREG_FAN_MAX_DUTY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i32, i64)* @mlxreg_fan_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxreg_fan_write(%struct.device* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.mlxreg_fan*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %13 = load %struct.device*, %struct.device** %7, align 8
  %14 = call %struct.mlxreg_fan* @dev_get_drvdata(%struct.device* %13)
  store %struct.mlxreg_fan* %14, %struct.mlxreg_fan** %12, align 8
  %15 = load i32, i32* %8, align 4
  switch i32 %15, label %42 [
    i32 129, label %16
  ]

16:                                               ; preds = %5
  %17 = load i32, i32* %9, align 4
  switch i32 %17, label %39 [
    i32 128, label %18
  ]

18:                                               ; preds = %16
  %19 = load i64, i64* %11, align 8
  %20 = load i64, i64* @MLXREG_FAN_MIN_DUTY, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* @MLXREG_FAN_MAX_DUTY, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22, %18
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %45

29:                                               ; preds = %22
  %30 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %12, align 8
  %31 = getelementptr inbounds %struct.mlxreg_fan, %struct.mlxreg_fan* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %12, align 8
  %34 = getelementptr inbounds %struct.mlxreg_fan, %struct.mlxreg_fan* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %11, align 8
  %38 = call i32 @regmap_write(i32 %32, i32 %36, i64 %37)
  store i32 %38, i32* %6, align 4
  br label %45

39:                                               ; preds = %16
  %40 = load i32, i32* @EOPNOTSUPP, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %45

42:                                               ; preds = %5
  %43 = load i32, i32* @EOPNOTSUPP, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %42, %39, %29, %26
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local %struct.mlxreg_fan* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_write(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
