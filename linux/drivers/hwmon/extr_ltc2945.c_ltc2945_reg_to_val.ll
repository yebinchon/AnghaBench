; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltc2945.c_ltc2945_reg_to_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltc2945.c_ltc2945_reg_to_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regmap = type { i32 }

@LTC2945_CONTROL = common dso_local global i32 0, align 4
@CONTROL_MULT_SELECT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, i32)* @ltc2945_reg_to_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ltc2945_reg_to_val(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x i32], align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.regmap* @dev_get_drvdata(%struct.device* %11)
  store %struct.regmap* %12, %struct.regmap** %6, align 8
  %13 = load %struct.regmap*, %struct.regmap** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @is_power_reg(i32 %16)
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 3, i32 2
  %21 = call i32 @regmap_bulk_read(%struct.regmap* %13, i32 %14, i32* %15, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %3, align 8
  br label %90

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @is_power_reg(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 16
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 8
  %38 = add nsw i32 %34, %37
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %38, %40
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %9, align 8
  br label %52

43:                                               ; preds = %27
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 4
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %48, 4
  %50 = add nsw i32 %46, %49
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %9, align 8
  br label %52

52:                                               ; preds = %43, %31
  %53 = load i32, i32* %5, align 4
  switch i32 %53, label %85 [
    i32 130, label %54
    i32 144, label %54
    i32 136, label %54
    i32 143, label %54
    i32 135, label %54
    i32 128, label %76
    i32 140, label %76
    i32 132, label %76
    i32 139, label %76
    i32 131, label %76
    i32 147, label %79
    i32 146, label %79
    i32 137, label %79
    i32 145, label %79
    i32 138, label %79
    i32 129, label %82
    i32 142, label %82
    i32 134, label %82
    i32 141, label %82
    i32 133, label %82
  ]

54:                                               ; preds = %52, %52, %52, %52, %52
  %55 = load %struct.regmap*, %struct.regmap** %6, align 8
  %56 = load i32, i32* @LTC2945_CONTROL, align 4
  %57 = call i32 @regmap_read(%struct.regmap* %55, i32 %56, i32* %7)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %3, align 8
  br label %90

63:                                               ; preds = %54
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @CONTROL_MULT_SELECT, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i64, i64* %9, align 8
  %70 = mul nsw i64 %69, 625
  store i64 %70, i64* %9, align 8
  br label %75

71:                                               ; preds = %63
  %72 = load i64, i64* %9, align 8
  %73 = mul nsw i64 %72, 25
  %74 = ashr i64 %73, 1
  store i64 %74, i64* %9, align 8
  br label %75

75:                                               ; preds = %71, %68
  br label %88

76:                                               ; preds = %52, %52, %52, %52, %52
  %77 = load i64, i64* %9, align 8
  %78 = mul nsw i64 %77, 25
  store i64 %78, i64* %9, align 8
  br label %88

79:                                               ; preds = %52, %52, %52, %52, %52
  %80 = load i64, i64* %9, align 8
  %81 = ashr i64 %80, 1
  store i64 %81, i64* %9, align 8
  br label %88

82:                                               ; preds = %52, %52, %52, %52, %52
  %83 = load i64, i64* %9, align 8
  %84 = mul nsw i64 %83, 25
  store i64 %84, i64* %9, align 8
  br label %88

85:                                               ; preds = %52
  %86 = load i64, i64* @EINVAL, align 8
  %87 = sub nsw i64 0, %86
  store i64 %87, i64* %3, align 8
  br label %90

88:                                               ; preds = %82, %79, %76, %75
  %89 = load i64, i64* %9, align 8
  store i64 %89, i64* %3, align 8
  br label %90

90:                                               ; preds = %88, %85, %60, %24
  %91 = load i64, i64* %3, align 8
  ret i64 %91
}

declare dso_local %struct.regmap* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_bulk_read(%struct.regmap*, i32, i32*, i32) #1

declare dso_local i64 @is_power_reg(i32) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
