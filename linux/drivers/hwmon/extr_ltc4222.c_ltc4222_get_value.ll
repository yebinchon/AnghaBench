; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltc4222.c_ltc4222_get_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltc4222.c_ltc4222_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regmap = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @ltc4222_get_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc4222_get_value(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.regmap* @dev_get_drvdata(%struct.device* %10)
  store %struct.regmap* %11, %struct.regmap** %6, align 8
  %12 = load %struct.regmap*, %struct.regmap** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %15 = call i32 @regmap_bulk_read(%struct.regmap* %12, i32 %13, i32* %14, i32 2)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %3, align 4
  br label %46

20:                                               ; preds = %2
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 8
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %23, %25
  %27 = ashr i32 %26, 6
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %5, align 4
  switch i32 %28, label %41 [
    i32 133, label %29
    i32 132, label %29
    i32 129, label %33
    i32 128, label %33
    i32 131, label %37
    i32 130, label %37
  ]

29:                                               ; preds = %20, %20
  %30 = load i32, i32* %7, align 4
  %31 = mul i32 %30, 5
  %32 = call i32 @DIV_ROUND_CLOSEST(i32 %31, i32 4)
  store i32 %32, i32* %7, align 4
  br label %44

33:                                               ; preds = %20, %20
  %34 = load i32, i32* %7, align 4
  %35 = mul i32 %34, 125
  %36 = call i32 @DIV_ROUND_CLOSEST(i32 %35, i32 4)
  store i32 %36, i32* %7, align 4
  br label %44

37:                                               ; preds = %20, %20
  %38 = load i32, i32* %7, align 4
  %39 = mul i32 %38, 125
  %40 = call i32 @DIV_ROUND_CLOSEST(i32 %39, i32 2)
  store i32 %40, i32* %7, align 4
  br label %44

41:                                               ; preds = %20
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %46

44:                                               ; preds = %37, %33, %29
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %41, %18
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.regmap* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_bulk_read(%struct.regmap*, i32, i32*, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
