; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_vf610_adc.c_vf610_adc_calculate_rates.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_vf610_adc.c_vf610_adc_calculate_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vf610_adc = type { i64*, i64*, i32, %struct.vf610_adc_feature }
%struct.vf610_adc_feature = type { i64, i32, i32, i32 }

@NSEC_PER_SEC = common dso_local global i64 0, align 8
@vf610_lst_adder = common dso_local global i32* null, align 8
@vf610_hw_avgs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vf610_adc*)* @vf610_adc_calculate_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vf610_adc_calculate_rates(%struct.vf610_adc* %0) #0 {
  %2 = alloca %struct.vf610_adc*, align 8
  %3 = alloca %struct.vf610_adc_feature*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vf610_adc* %0, %struct.vf610_adc** %2, align 8
  %10 = load %struct.vf610_adc*, %struct.vf610_adc** %2, align 8
  %11 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %10, i32 0, i32 3
  store %struct.vf610_adc_feature* %11, %struct.vf610_adc_feature** %3, align 8
  %12 = load %struct.vf610_adc*, %struct.vf610_adc** %2, align 8
  %13 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @clk_get_rate(i32 %14)
  store i64 %15, i64* %5, align 8
  %16 = load %struct.vf610_adc*, %struct.vf610_adc** %2, align 8
  %17 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load %struct.vf610_adc_feature*, %struct.vf610_adc_feature** %3, align 8
  %20 = getelementptr inbounds %struct.vf610_adc_feature, %struct.vf610_adc_feature* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i64, i64* %18, i64 %21
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %1
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %4, align 8
  %29 = udiv i64 %27, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  %33 = call i32 @fls(i32 %32)
  %34 = shl i32 1, %33
  %35 = load %struct.vf610_adc_feature*, %struct.vf610_adc_feature** %3, align 8
  %36 = getelementptr inbounds %struct.vf610_adc_feature, %struct.vf610_adc_feature* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  br label %40

37:                                               ; preds = %1
  %38 = load %struct.vf610_adc_feature*, %struct.vf610_adc_feature** %3, align 8
  %39 = getelementptr inbounds %struct.vf610_adc_feature, %struct.vf610_adc_feature* %38, i32 0, i32 1
  store i32 8, i32* %39, align 8
  br label %40

40:                                               ; preds = %37, %26
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.vf610_adc_feature*, %struct.vf610_adc_feature** %3, align 8
  %43 = getelementptr inbounds %struct.vf610_adc_feature, %struct.vf610_adc_feature* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = udiv i64 %41, %45
  store i64 %46, i64* %4, align 8
  %47 = load i64, i64* @NSEC_PER_SEC, align 8
  %48 = load i64, i64* %4, align 8
  %49 = udiv i64 %47, %48
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %6, align 4
  %51 = load %struct.vf610_adc_feature*, %struct.vf610_adc_feature** %3, align 8
  %52 = getelementptr inbounds %struct.vf610_adc_feature, %struct.vf610_adc_feature* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %6, align 4
  %55 = sdiv i32 %53, %54
  store i32 %55, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %74, %40
  %57 = load i32, i32* %9, align 4
  %58 = load i32*, i32** @vf610_lst_adder, align 8
  %59 = call i32 @ARRAY_SIZE(i32* %58)
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %56
  %62 = load i32*, i32** @vf610_lst_adder, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %61
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.vf610_adc_feature*, %struct.vf610_adc_feature** %3, align 8
  %72 = getelementptr inbounds %struct.vf610_adc_feature, %struct.vf610_adc_feature* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 8
  br label %77

73:                                               ; preds = %61
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %56

77:                                               ; preds = %69, %56
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %108, %77
  %79 = load i32, i32* %9, align 4
  %80 = load i32*, i32** @vf610_hw_avgs, align 8
  %81 = call i32 @ARRAY_SIZE(i32* %80)
  %82 = icmp slt i32 %79, %81
  br i1 %82, label %83, label %111

83:                                               ; preds = %78
  %84 = load i64, i64* %4, align 8
  %85 = load i32*, i32** @vf610_hw_avgs, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** @vf610_lst_adder, align 8
  %91 = load %struct.vf610_adc_feature*, %struct.vf610_adc_feature** %3, align 8
  %92 = getelementptr inbounds %struct.vf610_adc_feature, %struct.vf610_adc_feature* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %90, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 25, %96
  %98 = mul nsw i32 %89, %97
  %99 = add nsw i32 6, %98
  %100 = sext i32 %99 to i64
  %101 = udiv i64 %84, %100
  %102 = load %struct.vf610_adc*, %struct.vf610_adc** %2, align 8
  %103 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %102, i32 0, i32 1
  %104 = load i64*, i64** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  store i64 %101, i64* %107, align 8
  br label %108

108:                                              ; preds = %83
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %78

111:                                              ; preds = %78
  ret void
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
