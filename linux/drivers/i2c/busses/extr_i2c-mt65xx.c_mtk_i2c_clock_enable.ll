; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mt65xx.c_mtk_i2c_clock_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mt65xx.c_mtk_i2c_clock_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_i2c = type { i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_i2c*)* @mtk_i2c_clock_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_i2c_clock_enable(%struct.mtk_i2c* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_i2c*, align 8
  %4 = alloca i32, align 4
  store %struct.mtk_i2c* %0, %struct.mtk_i2c** %3, align 8
  %5 = load %struct.mtk_i2c*, %struct.mtk_i2c** %3, align 8
  %6 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @clk_prepare_enable(i64 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %72

13:                                               ; preds = %1
  %14 = load %struct.mtk_i2c*, %struct.mtk_i2c** %3, align 8
  %15 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @clk_prepare_enable(i64 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %66

21:                                               ; preds = %13
  %22 = load %struct.mtk_i2c*, %struct.mtk_i2c** %3, align 8
  %23 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load %struct.mtk_i2c*, %struct.mtk_i2c** %3, align 8
  %28 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @clk_prepare_enable(i64 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %61

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %21
  %36 = load %struct.mtk_i2c*, %struct.mtk_i2c** %3, align 8
  %37 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load %struct.mtk_i2c*, %struct.mtk_i2c** %3, align 8
  %42 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @clk_prepare_enable(i64 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %50

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %35
  store i32 0, i32* %2, align 4
  br label %72

50:                                               ; preds = %47
  %51 = load %struct.mtk_i2c*, %struct.mtk_i2c** %3, align 8
  %52 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.mtk_i2c*, %struct.mtk_i2c** %3, align 8
  %57 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @clk_disable_unprepare(i64 %58)
  br label %60

60:                                               ; preds = %55, %50
  br label %61

61:                                               ; preds = %60, %33
  %62 = load %struct.mtk_i2c*, %struct.mtk_i2c** %3, align 8
  %63 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @clk_disable_unprepare(i64 %64)
  br label %66

66:                                               ; preds = %61, %20
  %67 = load %struct.mtk_i2c*, %struct.mtk_i2c** %3, align 8
  %68 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @clk_disable_unprepare(i64 %69)
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %66, %49, %11
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
