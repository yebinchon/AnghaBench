; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83773g.c_w83773_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83773g.c_w83773_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regmap = type { i32 }

@hwmon_chip = common dso_local global i32 0, align 4
@hwmon_chip_update_interval = common dso_local global i64 0, align 8
@hwmon_temp = common dso_local global i32 0, align 4
@hwmon_temp_offset = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i64, i32, i64)* @w83773_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83773_write(%struct.device* %0, i32 %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.regmap*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %13 = load %struct.device*, %struct.device** %7, align 8
  %14 = call %struct.regmap* @dev_get_drvdata(%struct.device* %13)
  store %struct.regmap* %14, %struct.regmap** %12, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @hwmon_chip, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %5
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @hwmon_chip_update_interval, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load %struct.regmap*, %struct.regmap** %12, align 8
  %24 = load i64, i64* %11, align 8
  %25 = call i32 @set_update_interval(%struct.regmap* %23, i64 %24)
  store i32 %25, i32* %6, align 4
  br label %43

26:                                               ; preds = %18, %5
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @hwmon_temp, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @hwmon_temp_offset, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load %struct.regmap*, %struct.regmap** %12, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sub nsw i32 %36, 1
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @set_offset(%struct.regmap* %35, i32 %37, i64 %38)
  store i32 %39, i32* %6, align 4
  br label %43

40:                                               ; preds = %30, %26
  %41 = load i32, i32* @EOPNOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %40, %34, %22
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local %struct.regmap* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @set_update_interval(%struct.regmap*, i64) #1

declare dso_local i32 @set_offset(%struct.regmap*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
