; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83773g.c_w83773_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83773g.c_w83773_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regmap = type { i32 }

@hwmon_chip = common dso_local global i32 0, align 4
@hwmon_chip_update_interval = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i32, i64*)* @w83773_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83773_read(%struct.device* %0, i32 %1, i32 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca %struct.regmap*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %13 = load %struct.device*, %struct.device** %7, align 8
  %14 = call %struct.regmap* @dev_get_drvdata(%struct.device* %13)
  store %struct.regmap* %14, %struct.regmap** %12, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @hwmon_chip, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %5
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @hwmon_chip_update_interval, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load %struct.regmap*, %struct.regmap** %12, align 8
  %24 = load i64*, i64** %11, align 8
  %25 = call i32 @get_update_interval(%struct.regmap* %23, i64* %24)
  store i32 %25, i32* %6, align 4
  br label %59

26:                                               ; preds = %18
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %59

29:                                               ; preds = %5
  %30 = load i32, i32* %9, align 4
  switch i32 %30, label %56 [
    i32 129, label %31
    i32 130, label %44
    i32 128, label %50
  ]

31:                                               ; preds = %29
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load %struct.regmap*, %struct.regmap** %12, align 8
  %36 = load i64*, i64** %11, align 8
  %37 = call i32 @get_local_temp(%struct.regmap* %35, i64* %36)
  store i32 %37, i32* %6, align 4
  br label %59

38:                                               ; preds = %31
  %39 = load %struct.regmap*, %struct.regmap** %12, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sub nsw i32 %40, 1
  %42 = load i64*, i64** %11, align 8
  %43 = call i32 @get_remote_temp(%struct.regmap* %39, i32 %41, i64* %42)
  store i32 %43, i32* %6, align 4
  br label %59

44:                                               ; preds = %29
  %45 = load %struct.regmap*, %struct.regmap** %12, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sub nsw i32 %46, 1
  %48 = load i64*, i64** %11, align 8
  %49 = call i32 @get_fault(%struct.regmap* %45, i32 %47, i64* %48)
  store i32 %49, i32* %6, align 4
  br label %59

50:                                               ; preds = %29
  %51 = load %struct.regmap*, %struct.regmap** %12, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sub nsw i32 %52, 1
  %54 = load i64*, i64** %11, align 8
  %55 = call i32 @get_offset(%struct.regmap* %51, i32 %53, i64* %54)
  store i32 %55, i32* %6, align 4
  br label %59

56:                                               ; preds = %29
  %57 = load i32, i32* @EOPNOTSUPP, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %56, %50, %44, %38, %34, %26, %22
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local %struct.regmap* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @get_update_interval(%struct.regmap*, i64*) #1

declare dso_local i32 @get_local_temp(%struct.regmap*, i64*) #1

declare dso_local i32 @get_remote_temp(%struct.regmap*, i32, i64*) #1

declare dso_local i32 @get_fault(%struct.regmap*, i32, i64*) #1

declare dso_local i32 @get_offset(%struct.regmap*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
