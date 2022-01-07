; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltc2945.c_ltc2945_val_to_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltc2945.c_ltc2945_val_to_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regmap = type { i32 }

@LTC2945_CONTROL = common dso_local global i32 0, align 4
@CONTROL_MULT_SELECT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i64)* @ltc2945_val_to_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc2945_val_to_reg(%struct.device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.regmap* @dev_get_drvdata(%struct.device* %11)
  store %struct.regmap* %12, %struct.regmap** %8, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %47 [
    i32 130, label %14
    i32 144, label %14
    i32 136, label %14
    i32 143, label %14
    i32 135, label %14
    i32 128, label %37
    i32 140, label %37
    i32 132, label %37
    i32 139, label %37
    i32 131, label %37
    i32 147, label %40
    i32 146, label %40
    i32 137, label %40
    i32 145, label %40
    i32 138, label %40
    i32 129, label %43
    i32 142, label %43
    i32 134, label %43
    i32 141, label %43
    i32 133, label %43
  ]

14:                                               ; preds = %3, %3, %3, %3, %3
  %15 = load %struct.regmap*, %struct.regmap** %8, align 8
  %16 = load i32, i32* @LTC2945_CONTROL, align 4
  %17 = call i32 @regmap_read(%struct.regmap* %15, i32 %16, i32* %9)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %4, align 4
  br label %53

22:                                               ; preds = %14
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @CONTROL_MULT_SELECT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @DIV_ROUND_CLOSEST(i64 %28, i32 625)
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %7, align 8
  br label %36

31:                                               ; preds = %22
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @DIV_ROUND_CLOSEST(i64 %32, i32 25)
  %34 = mul nsw i32 %33, 2
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %7, align 8
  br label %36

36:                                               ; preds = %31, %27
  br label %50

37:                                               ; preds = %3, %3, %3, %3, %3
  %38 = load i64, i64* %7, align 8
  %39 = udiv i64 %38, 25
  store i64 %39, i64* %7, align 8
  br label %50

40:                                               ; preds = %3, %3, %3, %3, %3
  %41 = load i64, i64* %7, align 8
  %42 = mul i64 %41, 2
  store i64 %42, i64* %7, align 8
  br label %50

43:                                               ; preds = %3, %3, %3, %3, %3
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @DIV_ROUND_CLOSEST(i64 %44, i32 25)
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %7, align 8
  br label %50

47:                                               ; preds = %3
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %53

50:                                               ; preds = %43, %40, %37, %36
  %51 = load i64, i64* %7, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %50, %47, %20
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.regmap* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
