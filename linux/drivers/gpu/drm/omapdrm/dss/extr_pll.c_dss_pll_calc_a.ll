; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_pll.c_dss_pll_calc_a.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_pll.c_dss_pll_calc_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dss_pll = type { %struct.dss_pll_hw* }
%struct.dss_pll_hw = type { i64, i64, i64, i64, i32, i32 }

@ULONG_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dss_pll_calc_a(%struct.dss_pll* %0, i64 %1, i64 %2, i64 %3, i64 (i32, i32, i64, i64, i8*)* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dss_pll*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64 (i32, i32, i64, i64, i8*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.dss_pll_hw*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  store %struct.dss_pll* %0, %struct.dss_pll** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 (i32, i32, i64, i64, i8*)* %4, i64 (i32, i32, i64, i64, i8*)** %12, align 8
  store i8* %5, i8** %13, align 8
  %28 = load %struct.dss_pll*, %struct.dss_pll** %8, align 8
  %29 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %28, i32 0, i32 0
  %30 = load %struct.dss_pll_hw*, %struct.dss_pll_hw** %29, align 8
  store %struct.dss_pll_hw* %30, %struct.dss_pll_hw** %14, align 8
  %31 = load %struct.dss_pll_hw*, %struct.dss_pll_hw** %14, align 8
  %32 = getelementptr inbounds %struct.dss_pll_hw, %struct.dss_pll_hw* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %25, align 8
  %34 = load %struct.dss_pll_hw*, %struct.dss_pll_hw** %14, align 8
  %35 = getelementptr inbounds %struct.dss_pll_hw, %struct.dss_pll_hw* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %26, align 8
  %37 = load %struct.dss_pll_hw*, %struct.dss_pll_hw** %14, align 8
  %38 = getelementptr inbounds %struct.dss_pll_hw, %struct.dss_pll_hw* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %27, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %27, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i64 @DIV_ROUND_UP(i64 %40, i32 %42)
  %44 = call i32 @max(i64 %43, i64 1)
  store i32 %44, i32* %16, align 4
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* %26, align 8
  %47 = udiv i64 %45, %46
  %48 = trunc i64 %47 to i32
  %49 = load %struct.dss_pll_hw*, %struct.dss_pll_hw** %14, align 8
  %50 = getelementptr inbounds %struct.dss_pll_hw, %struct.dss_pll_hw* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @min(i32 %48, i32 %51)
  store i32 %52, i32* %17, align 4
  store i32 1, i32* %18, align 4
  %53 = load %struct.dss_pll_hw*, %struct.dss_pll_hw** %14, align 8
  %54 = getelementptr inbounds %struct.dss_pll_hw, %struct.dss_pll_hw* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %6
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* %17, align 4
  %60 = call i32 @swap(i32 %58, i32 %59)
  store i32 -1, i32* %18, align 4
  br label %61

61:                                               ; preds = %57, %6
  %62 = load i64, i64* %11, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i64, i64* %11, align 8
  br label %68

66:                                               ; preds = %61
  %67 = load i64, i64* @ULONG_MAX, align 8
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i64 [ %65, %64 ], [ %67, %66 ]
  store i64 %69, i64* %11, align 8
  %70 = load i32, i32* %16, align 4
  store i32 %70, i32* %15, align 4
  br label %71

71:                                               ; preds = %135, %68
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %17, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %139

75:                                               ; preds = %71
  %76 = load i64, i64* %9, align 8
  %77 = load i32, i32* %15, align 4
  %78 = sext i32 %77 to i64
  %79 = udiv i64 %76, %78
  store i64 %79, i64* %23, align 8
  %80 = load i64, i64* %10, align 8
  %81 = load i64, i64* %23, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i64 @DIV_ROUND_UP(i64 %80, i32 %82)
  %84 = call i64 @DIV_ROUND_UP(i64 %83, i32 2)
  %85 = call i32 @max(i64 %84, i64 1)
  store i32 %85, i32* %20, align 4
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* %23, align 8
  %88 = udiv i64 %86, %87
  %89 = udiv i64 %88, 2
  %90 = trunc i64 %89 to i32
  %91 = load i64, i64* %25, align 8
  %92 = load i64, i64* %23, align 8
  %93 = udiv i64 %91, %92
  %94 = udiv i64 %93, 2
  %95 = trunc i64 %94 to i32
  %96 = load %struct.dss_pll_hw*, %struct.dss_pll_hw** %14, align 8
  %97 = getelementptr inbounds %struct.dss_pll_hw, %struct.dss_pll_hw* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @min3(i32 %90, i32 %95, i32 %98)
  store i32 %99, i32* %21, align 4
  store i32 1, i32* %22, align 4
  %100 = load %struct.dss_pll_hw*, %struct.dss_pll_hw** %14, align 8
  %101 = getelementptr inbounds %struct.dss_pll_hw, %struct.dss_pll_hw* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %75
  %105 = load i32, i32* %20, align 4
  %106 = load i32, i32* %21, align 4
  %107 = call i32 @swap(i32 %105, i32 %106)
  store i32 -1, i32* %22, align 4
  br label %108

108:                                              ; preds = %104, %75
  %109 = load i32, i32* %20, align 4
  store i32 %109, i32* %19, align 4
  br label %110

110:                                              ; preds = %130, %108
  %111 = load i32, i32* %19, align 4
  %112 = load i32, i32* %21, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %134

114:                                              ; preds = %110
  %115 = load i32, i32* %19, align 4
  %116 = mul nsw i32 2, %115
  %117 = sext i32 %116 to i64
  %118 = load i64, i64* %23, align 8
  %119 = mul i64 %117, %118
  store i64 %119, i64* %24, align 8
  %120 = load i64 (i32, i32, i64, i64, i8*)*, i64 (i32, i32, i64, i64, i8*)** %12, align 8
  %121 = load i32, i32* %15, align 4
  %122 = load i32, i32* %19, align 4
  %123 = load i64, i64* %23, align 8
  %124 = load i64, i64* %24, align 8
  %125 = load i8*, i8** %13, align 8
  %126 = call i64 %120(i32 %121, i32 %122, i64 %123, i64 %124, i8* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %114
  store i32 1, i32* %7, align 4
  br label %140

129:                                              ; preds = %114
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %22, align 4
  %132 = load i32, i32* %19, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %19, align 4
  br label %110

134:                                              ; preds = %110
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %18, align 4
  %137 = load i32, i32* %15, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %15, align 4
  br label %71

139:                                              ; preds = %71
  store i32 0, i32* %7, align 4
  br label %140

140:                                              ; preds = %139, %128
  %141 = load i32, i32* %7, align 4
  ret i32 %141
}

declare dso_local i32 @max(i64, i64) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @swap(i32, i32) #1

declare dso_local i32 @min3(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
