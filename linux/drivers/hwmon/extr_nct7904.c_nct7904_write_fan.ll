; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct7904.c_nct7904_write_fan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct7904.c_nct7904_write_fan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nct7904_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@BANK_1 = common dso_local global i32 0, align 4
@FANIN1_HV_HL_REG = common dso_local global i32 0, align 4
@FANIN1_LV_HL_REG = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i64)* @nct7904_write_fan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nct7904_write_fan(%struct.device* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.nct7904_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.nct7904_data* @dev_get_drvdata(%struct.device* %13)
  store %struct.nct7904_data* %14, %struct.nct7904_data** %10, align 8
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %53 [
    i32 128, label %16
  ]

16:                                               ; preds = %4
  %17 = load i64, i64* %9, align 8
  %18 = icmp sle i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %56

22:                                               ; preds = %16
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @DIV_ROUND_CLOSEST(i32 1350000, i64 %23)
  %25 = call i64 @clamp_val(i32 %24, i32 1, i32 8191)
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %9, align 8
  %27 = ashr i64 %26, 5
  %28 = and i64 %27, 255
  store i64 %28, i64* %12, align 8
  %29 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %30 = load i32, i32* @BANK_1, align 4
  %31 = load i32, i32* @FANIN1_HV_HL_REG, align 4
  %32 = load i32, i32* %8, align 4
  %33 = mul nsw i32 %32, 2
  %34 = add nsw i32 %31, %33
  %35 = load i64, i64* %12, align 8
  %36 = call i32 @nct7904_write_reg(%struct.nct7904_data* %29, i32 %30, i32 %34, i64 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %22
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %5, align 4
  br label %56

41:                                               ; preds = %22
  %42 = load i64, i64* %9, align 8
  %43 = and i64 %42, 31
  store i64 %43, i64* %12, align 8
  %44 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %45 = load i32, i32* @BANK_1, align 4
  %46 = load i32, i32* @FANIN1_LV_HL_REG, align 4
  %47 = load i32, i32* %8, align 4
  %48 = mul nsw i32 %47, 2
  %49 = add nsw i32 %46, %48
  %50 = load i64, i64* %12, align 8
  %51 = call i32 @nct7904_write_reg(%struct.nct7904_data* %44, i32 %45, i32 %49, i64 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %5, align 4
  br label %56

53:                                               ; preds = %4
  %54 = load i32, i32* @EOPNOTSUPP, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %53, %41, %39, %19
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local %struct.nct7904_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @clamp_val(i32, i32, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i64) #1

declare dso_local i32 @nct7904_write_reg(%struct.nct7904_data*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
