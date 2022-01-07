; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_st-keyscan.c_keyscan_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_st-keyscan.c_keyscan_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_keyscan = type { i32, i32, i32, i64, i32 }

@KEYSCAN_DEBOUNCE_TIME_OFF = common dso_local global i64 0, align 8
@KEYSCAN_MATRIX_DIM_X_SHIFT = common dso_local global i32 0, align 4
@KEYSCAN_MATRIX_DIM_Y_SHIFT = common dso_local global i32 0, align 4
@KEYSCAN_MATRIX_DIM_OFF = common dso_local global i64 0, align 8
@KEYSCAN_CONFIG_ENABLE = common dso_local global i32 0, align 4
@KEYSCAN_CONFIG_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_keyscan*)* @keyscan_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keyscan_start(%struct.st_keyscan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.st_keyscan*, align 8
  %4 = alloca i32, align 4
  store %struct.st_keyscan* %0, %struct.st_keyscan** %3, align 8
  %5 = load %struct.st_keyscan*, %struct.st_keyscan** %3, align 8
  %6 = getelementptr inbounds %struct.st_keyscan, %struct.st_keyscan* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @clk_enable(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %55

13:                                               ; preds = %1
  %14 = load %struct.st_keyscan*, %struct.st_keyscan** %3, align 8
  %15 = getelementptr inbounds %struct.st_keyscan, %struct.st_keyscan* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.st_keyscan*, %struct.st_keyscan** %3, align 8
  %18 = getelementptr inbounds %struct.st_keyscan, %struct.st_keyscan* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @clk_get_rate(i32 %19)
  %21 = sdiv i32 %20, 1000000
  %22 = mul nsw i32 %16, %21
  %23 = load %struct.st_keyscan*, %struct.st_keyscan** %3, align 8
  %24 = getelementptr inbounds %struct.st_keyscan, %struct.st_keyscan* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @KEYSCAN_DEBOUNCE_TIME_OFF, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 %22, i64 %27)
  %29 = load %struct.st_keyscan*, %struct.st_keyscan** %3, align 8
  %30 = getelementptr inbounds %struct.st_keyscan, %struct.st_keyscan* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %31, 1
  %33 = load i32, i32* @KEYSCAN_MATRIX_DIM_X_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = load %struct.st_keyscan*, %struct.st_keyscan** %3, align 8
  %36 = getelementptr inbounds %struct.st_keyscan, %struct.st_keyscan* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %37, 1
  %39 = load i32, i32* @KEYSCAN_MATRIX_DIM_Y_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = or i32 %34, %40
  %42 = load %struct.st_keyscan*, %struct.st_keyscan** %3, align 8
  %43 = getelementptr inbounds %struct.st_keyscan, %struct.st_keyscan* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @KEYSCAN_MATRIX_DIM_OFF, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i32 %41, i64 %46)
  %48 = load i32, i32* @KEYSCAN_CONFIG_ENABLE, align 4
  %49 = load %struct.st_keyscan*, %struct.st_keyscan** %3, align 8
  %50 = getelementptr inbounds %struct.st_keyscan, %struct.st_keyscan* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @KEYSCAN_CONFIG_OFF, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel(i32 %48, i64 %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %13, %11
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @clk_get_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
