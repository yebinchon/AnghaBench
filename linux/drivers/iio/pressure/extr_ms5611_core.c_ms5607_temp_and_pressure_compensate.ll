; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_ms5611_core.c_ms5607_temp_and_pressure_compensate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_ms5611_core.c_ms5607_temp_and_pressure_compensate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ms5611_chip_info = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ms5611_chip_info*, i32*, i32*)* @ms5607_temp_and_pressure_compensate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms5607_temp_and_pressure_compensate(%struct.ms5611_chip_info* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.ms5611_chip_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ms5611_chip_info* %0, %struct.ms5611_chip_info** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.ms5611_chip_info*, %struct.ms5611_chip_info** %4, align 8
  %22 = getelementptr inbounds %struct.ms5611_chip_info, %struct.ms5611_chip_info* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 5
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 8
  %27 = sub nsw i32 %20, %26
  store i32 %27, i32* %11, align 4
  %28 = load %struct.ms5611_chip_info*, %struct.ms5611_chip_info** %4, align 8
  %29 = getelementptr inbounds %struct.ms5611_chip_info, %struct.ms5611_chip_info* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 17
  %34 = load %struct.ms5611_chip_info*, %struct.ms5611_chip_info** %4, align 8
  %35 = getelementptr inbounds %struct.ms5611_chip_info, %struct.ms5611_chip_info* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %11, align 4
  %40 = mul nsw i32 %38, %39
  %41 = ashr i32 %40, 6
  %42 = add nsw i32 %33, %41
  store i32 %42, i32* %9, align 4
  %43 = load %struct.ms5611_chip_info*, %struct.ms5611_chip_info** %4, align 8
  %44 = getelementptr inbounds %struct.ms5611_chip_info, %struct.ms5611_chip_info* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 16
  %49 = load %struct.ms5611_chip_info*, %struct.ms5611_chip_info** %4, align 8
  %50 = getelementptr inbounds %struct.ms5611_chip_info, %struct.ms5611_chip_info* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %11, align 4
  %55 = mul nsw i32 %53, %54
  %56 = ashr i32 %55, 7
  %57 = add nsw i32 %48, %56
  store i32 %57, i32* %10, align 4
  %58 = load %struct.ms5611_chip_info*, %struct.ms5611_chip_info** %4, align 8
  %59 = getelementptr inbounds %struct.ms5611_chip_info, %struct.ms5611_chip_info* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 6
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %11, align 4
  %64 = mul nsw i32 %62, %63
  %65 = ashr i32 %64, 23
  %66 = add nsw i32 2000, %65
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %67, 2000
  br i1 %68, label %69, label %110

69:                                               ; preds = %3
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = mul nsw i32 %70, %71
  %73 = ashr i32 %72, 31
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %7, align 4
  %75 = sub nsw i32 %74, 2000
  %76 = load i32, i32* %7, align 4
  %77 = sub nsw i32 %76, 2000
  %78 = mul nsw i32 %75, %77
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %15, align 4
  %80 = mul nsw i32 61, %79
  %81 = ashr i32 %80, 4
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %15, align 4
  %83 = shl i32 %82, 1
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %84, -1500
  br i1 %85, label %86, label %100

86:                                               ; preds = %69
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1500
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1500
  %91 = mul nsw i32 %88, %90
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %15, align 4
  %93 = mul nsw i32 15, %92
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %15, align 4
  %97 = mul nsw i32 8, %96
  %98 = load i32, i32* %13, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %13, align 4
  br label %100

100:                                              ; preds = %86, %69
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %7, align 4
  %103 = sub nsw i32 %102, %101
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %9, align 4
  %106 = sub nsw i32 %105, %104
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %10, align 4
  %109 = sub nsw i32 %108, %107
  store i32 %109, i32* %10, align 4
  br label %110

110:                                              ; preds = %100, %3
  %111 = load i32, i32* %7, align 4
  %112 = load i32*, i32** %5, align 8
  store i32 %111, i32* %112, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %10, align 4
  %115 = mul nsw i32 %113, %114
  %116 = ashr i32 %115, 21
  %117 = load i32, i32* %9, align 4
  %118 = sub nsw i32 %116, %117
  %119 = ashr i32 %118, 15
  %120 = load i32*, i32** %6, align 8
  store i32 %119, i32* %120, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
