; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sh7760.c_calc_CCR.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sh7760.c_calc_CCR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"peripheral_clk\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @calc_CCR to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_CCR(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %15 = call %struct.clk* @clk_get(i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.clk* %15, %struct.clk** %4, align 8
  %16 = load %struct.clk*, %struct.clk** %4, align 8
  %17 = call i64 @IS_ERR(%struct.clk* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.clk*, %struct.clk** %4, align 8
  %21 = call i32 @PTR_ERR(%struct.clk* %20)
  store i32 %21, i32* %2, align 4
  br label %102

22:                                               ; preds = %1
  %23 = load %struct.clk*, %struct.clk** %4, align 8
  %24 = getelementptr inbounds %struct.clk, %struct.clk* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %5, align 8
  %26 = load %struct.clk*, %struct.clk** %4, align 8
  %27 = call i32 @clk_put(%struct.clk* %26)
  br label %28

28:                                               ; preds = %22
  %29 = load i64, i64* %3, align 8
  store i64 %29, i64* %8, align 8
  store i64 0, i64* %6, align 8
  store i8 0, i8* %11, align 1
  store i32 0, i32* %13, align 4
  store i8 3, i8* %10, align 1
  br label %30

30:                                               ; preds = %85, %28
  %31 = load i8, i8* %10, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %88

34:                                               ; preds = %30
  %35 = load i64, i64* %5, align 8
  %36 = load i8, i8* %10, align 1
  %37 = sext i8 %36 to i32
  %38 = add nsw i32 1, %37
  %39 = sext i32 %38 to i64
  %40 = udiv i64 %35, %39
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp uge i64 %41, 20000000
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %85

44:                                               ; preds = %34
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* %3, align 8
  %47 = udiv i64 %45, %46
  %48 = sub i64 %47, 20
  %49 = lshr i64 %48, 3
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %81, %44
  %53 = load i32, i32* %12, align 4
  %54 = icmp slt i32 %53, 63
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %14, align 4
  %58 = add nsw i32 %57, 1
  %59 = icmp sle i32 %56, %58
  br label %60

60:                                               ; preds = %55, %52
  %61 = phi i1 [ false, %52 ], [ %59, %55 ]
  br i1 %61, label %62, label %84

62:                                               ; preds = %60
  %63 = load i64, i64* %9, align 8
  %64 = load i32, i32* %12, align 4
  %65 = shl i32 %64, 3
  %66 = add nsw i32 20, %65
  %67 = sext i32 %66 to i64
  %68 = udiv i64 %63, %67
  store i64 %68, i64* %6, align 8
  %69 = load i64, i64* %3, align 8
  %70 = load i64, i64* %6, align 8
  %71 = sub i64 %69, %70
  %72 = call i64 @abs(i64 %71)
  store i64 %72, i64* %7, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* %8, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %62
  %77 = load i64, i64* %7, align 8
  store i64 %77, i64* %8, align 8
  %78 = load i8, i8* %10, align 1
  store i8 %78, i8* %11, align 1
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %13, align 4
  br label %80

80:                                               ; preds = %76, %62
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  br label %52

84:                                               ; preds = %60
  br label %85

85:                                               ; preds = %84, %43
  %86 = load i8, i8* %10, align 1
  %87 = add i8 %86, -1
  store i8 %87, i8* %10, align 1
  br label %30

88:                                               ; preds = %30
  %89 = load i64, i64* %8, align 8
  %90 = load i64, i64* %3, align 8
  %91 = lshr i64 %90, 2
  %92 = icmp ugt i64 %89, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %102

96:                                               ; preds = %88
  %97 = load i32, i32* %13, align 4
  %98 = shl i32 %97, 2
  %99 = load i8, i8* %11, align 1
  %100 = sext i8 %99 to i32
  %101 = or i32 %98, %100
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %96, %93, %19
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local %struct.clk* @clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @clk_put(%struct.clk*) #1

declare dso_local i64 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
