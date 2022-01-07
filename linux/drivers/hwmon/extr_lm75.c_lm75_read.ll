; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm75.c_lm75_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm75.c_lm75_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.lm75_data = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@LM75_REG_TEMP = common dso_local global i32 0, align 4
@LM75_REG_MAX = common dso_local global i32 0, align 4
@LM75_REG_HYST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i32, i64*)* @lm75_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm75_read(%struct.device* %0, i32 %1, i32 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca %struct.lm75_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %16 = load %struct.device*, %struct.device** %7, align 8
  %17 = call %struct.lm75_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.lm75_data* %17, %struct.lm75_data** %12, align 8
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %58 [
    i32 133, label %19
    i32 131, label %30
  ]

19:                                               ; preds = %5
  %20 = load i32, i32* %9, align 4
  switch i32 %20, label %26 [
    i32 132, label %21
  ]

21:                                               ; preds = %19
  %22 = load %struct.lm75_data*, %struct.lm75_data** %12, align 8
  %23 = getelementptr inbounds %struct.lm75_data, %struct.lm75_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64*, i64** %11, align 8
  store i64 %24, i64* %25, align 8
  br label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %62

29:                                               ; preds = %21
  br label %61

30:                                               ; preds = %5
  %31 = load i32, i32* %9, align 4
  switch i32 %31, label %38 [
    i32 130, label %32
    i32 129, label %34
    i32 128, label %36
  ]

32:                                               ; preds = %30
  %33 = load i32, i32* @LM75_REG_TEMP, align 4
  store i32 %33, i32* %15, align 4
  br label %41

34:                                               ; preds = %30
  %35 = load i32, i32* @LM75_REG_MAX, align 4
  store i32 %35, i32* %15, align 4
  br label %41

36:                                               ; preds = %30
  %37 = load i32, i32* @LM75_REG_HYST, align 4
  store i32 %37, i32* %15, align 4
  br label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %62

41:                                               ; preds = %36, %34, %32
  %42 = load %struct.lm75_data*, %struct.lm75_data** %12, align 8
  %43 = getelementptr inbounds %struct.lm75_data, %struct.lm75_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @regmap_read(i32 %44, i32 %45, i32* %13)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %14, align 4
  store i32 %50, i32* %6, align 4
  br label %62

51:                                               ; preds = %41
  %52 = load i32, i32* %13, align 4
  %53 = load %struct.lm75_data*, %struct.lm75_data** %12, align 8
  %54 = getelementptr inbounds %struct.lm75_data, %struct.lm75_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @lm75_reg_to_mc(i32 %52, i32 %55)
  %57 = load i64*, i64** %11, align 8
  store i64 %56, i64* %57, align 8
  br label %61

58:                                               ; preds = %5
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %62

61:                                               ; preds = %51, %29
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %61, %58, %49, %38, %26
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local %struct.lm75_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i64 @lm75_reg_to_mc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
