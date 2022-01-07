; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ntc_thermistor.c_ntc_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ntc_thermistor.c_ntc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ntc_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i32, i64*)* @ntc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntc_read(%struct.device* %0, i32 %1, i32 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca %struct.ntc_data*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %14 = load %struct.device*, %struct.device** %7, align 8
  %15 = call %struct.ntc_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.ntc_data* %15, %struct.ntc_data** %12, align 8
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %35 [
    i32 130, label %17
  ]

17:                                               ; preds = %5
  %18 = load i32, i32* %9, align 4
  switch i32 %18, label %33 [
    i32 129, label %19
    i32 128, label %31
  ]

19:                                               ; preds = %17
  %20 = load %struct.ntc_data*, %struct.ntc_data** %12, align 8
  %21 = call i32 @ntc_thermistor_get_ohm(%struct.ntc_data* %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %6, align 4
  br label %39

26:                                               ; preds = %19
  %27 = load %struct.ntc_data*, %struct.ntc_data** %12, align 8
  %28 = load i32, i32* %13, align 4
  %29 = call i64 @get_temp_mc(%struct.ntc_data* %27, i32 %28)
  %30 = load i64*, i64** %11, align 8
  store i64 %29, i64* %30, align 8
  store i32 0, i32* %6, align 4
  br label %39

31:                                               ; preds = %17
  %32 = load i64*, i64** %11, align 8
  store i64 4, i64* %32, align 8
  store i32 0, i32* %6, align 4
  br label %39

33:                                               ; preds = %17
  br label %34

34:                                               ; preds = %33
  br label %36

35:                                               ; preds = %5
  br label %36

36:                                               ; preds = %35, %34
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %36, %31, %26, %24
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local %struct.ntc_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ntc_thermistor_get_ohm(%struct.ntc_data*) #1

declare dso_local i64 @get_temp_mc(%struct.ntc_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
