; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_as370-hwmon.c_as370_hwmon_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_as370-hwmon.c_as370_hwmon_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.as370_hwmon = type { i64 }

@STS = common dso_local global i64 0, align 8
@BN_MASK = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i32, i64*)* @as370_hwmon_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as370_hwmon_read(%struct.device* %0, i32 %1, i32 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.as370_hwmon*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %14 = load %struct.device*, %struct.device** %7, align 8
  %15 = call %struct.as370_hwmon* @dev_get_drvdata(%struct.device* %14)
  store %struct.as370_hwmon* %15, %struct.as370_hwmon** %13, align 8
  %16 = load i32, i32* %9, align 4
  switch i32 %16, label %32 [
    i32 128, label %17
  ]

17:                                               ; preds = %5
  %18 = load %struct.as370_hwmon*, %struct.as370_hwmon** %13, align 8
  %19 = getelementptr inbounds %struct.as370_hwmon, %struct.as370_hwmon* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @STS, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl_relaxed(i64 %22)
  %24 = load i32, i32* @BN_MASK, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = mul nsw i32 %26, 251802
  %28 = call i32 @DIV_ROUND_CLOSEST(i32 %27, i32 4096)
  %29 = sub nsw i32 %28, 85525
  %30 = sext i32 %29 to i64
  %31 = load i64*, i64** %11, align 8
  store i64 %30, i64* %31, align 8
  br label %35

32:                                               ; preds = %5
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %36

35:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %35, %32
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local %struct.as370_hwmon* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
