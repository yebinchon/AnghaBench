; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_pll.c_dss_pll_calc_b.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_pll.c_dss_pll_calc_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dss_pll = type { %struct.dss_pll_hw* }
%struct.dss_pll_hw = type { i32, i32 }
%struct.dss_pll_clock_info = type { i32, i32, i32, i32*, i32, i64, i64, i64* }

@.str = private unnamed_addr constant [30 x i8] c"clkin %lu, target clkout %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"N = %u, M = %u, M.f = %u, M2 = %u, SD = %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Fint %lu, clkdco %lu, clkout %lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dss_pll_calc_b(%struct.dss_pll* %0, i64 %1, i64 %2, %struct.dss_pll_clock_info* %3) #0 {
  %5 = alloca %struct.dss_pll*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dss_pll_clock_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.dss_pll_hw*, align 8
  store %struct.dss_pll* %0, %struct.dss_pll** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.dss_pll_clock_info* %3, %struct.dss_pll_clock_info** %8, align 8
  %20 = load %struct.dss_pll*, %struct.dss_pll** %5, align 8
  %21 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %20, i32 0, i32 0
  %22 = load %struct.dss_pll_hw*, %struct.dss_pll_hw** %21, align 8
  store %struct.dss_pll_hw* %22, %struct.dss_pll_hw** %19, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 (i8*, i64, i64, ...) @DSSDBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %23, i64 %24)
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.dss_pll_hw*, %struct.dss_pll_hw** %19, align 8
  %28 = getelementptr inbounds %struct.dss_pll_hw, %struct.dss_pll_hw* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @DIV_ROUND_UP(i64 %26, i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = load i64, i64* %6, align 8
  %32 = load i32, i32* %14, align 4
  %33 = zext i32 %32 to i64
  %34 = udiv i64 %31, %33
  store i64 %34, i64* %9, align 8
  %35 = load %struct.dss_pll_hw*, %struct.dss_pll_hw** %19, align 8
  %36 = getelementptr inbounds %struct.dss_pll_hw, %struct.dss_pll_hw* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %9, align 8
  %39 = call i64 @roundup(i32 %37, i64 %38)
  store i64 %39, i64* %13, align 8
  %40 = load i64, i64* %13, align 8
  %41 = load i64, i64* %7, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @DIV_ROUND_UP(i64 %40, i32 %42)
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* %17, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %4
  store i32 1, i32* %17, align 4
  br label %47

47:                                               ; preds = %46, %4
  %48 = load i64, i64* %7, align 8
  %49 = load i32, i32* %17, align 4
  %50 = zext i32 %49 to i64
  %51 = mul i64 %48, %50
  store i64 %51, i64* %12, align 8
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* %9, align 8
  %54 = udiv i64 %52, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %15, align 4
  %56 = load i64, i64* %9, align 8
  %57 = load i32, i32* %15, align 4
  %58 = zext i32 %57 to i64
  %59 = mul i64 %56, %58
  store i64 %59, i64* %10, align 8
  %60 = load i64, i64* %12, align 8
  %61 = load i64, i64* %10, align 8
  %62 = sub i64 %60, %61
  %63 = load i64, i64* %9, align 8
  %64 = icmp ugt i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i64 @WARN_ON(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %47
  store i32 0, i32* %16, align 4
  br label %78

69:                                               ; preds = %47
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* %10, align 8
  %72 = sub i64 %70, %71
  %73 = mul i64 262144, %72
  %74 = load i64, i64* %9, align 8
  %75 = trunc i64 %74 to i32
  %76 = call i64 @div_u64(i64 %73, i32 %75)
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %16, align 4
  br label %78

78:                                               ; preds = %69, %68
  %79 = load i32, i32* %16, align 4
  %80 = icmp ugt i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %78
  %82 = load i32, i32* %16, align 4
  %83 = zext i32 %82 to i64
  %84 = load i64, i64* %9, align 8
  %85 = mul i64 %83, %84
  %86 = call i64 @div_u64(i64 %85, i32 262144)
  %87 = trunc i64 %86 to i32
  %88 = zext i32 %87 to i64
  %89 = load i64, i64* %10, align 8
  %90 = add i64 %89, %88
  store i64 %90, i64* %10, align 8
  br label %91

91:                                               ; preds = %81, %78
  %92 = load i64, i64* %10, align 8
  %93 = load i32, i32* %17, align 4
  %94 = zext i32 %93 to i64
  %95 = udiv i64 %92, %94
  store i64 %95, i64* %11, align 8
  %96 = load i64, i64* %9, align 8
  %97 = load i32, i32* %15, align 4
  %98 = zext i32 %97 to i64
  %99 = mul i64 %96, %98
  %100 = call i32 @DIV_ROUND_UP(i64 %99, i32 250000000)
  store i32 %100, i32* %18, align 4
  %101 = load i32, i32* %14, align 4
  %102 = zext i32 %101 to i64
  %103 = load i32, i32* %15, align 4
  %104 = zext i32 %103 to i64
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* %17, align 4
  %107 = load i32, i32* %18, align 4
  %108 = call i32 (i8*, i64, i64, ...) @DSSDBG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %102, i64 %104, i32 %105, i32 %106, i32 %107)
  %109 = load i64, i64* %9, align 8
  %110 = load i64, i64* %10, align 8
  %111 = load i64, i64* %11, align 8
  %112 = call i32 (i8*, i64, i64, ...) @DSSDBG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %109, i64 %110, i64 %111)
  %113 = load i32, i32* %14, align 4
  %114 = load %struct.dss_pll_clock_info*, %struct.dss_pll_clock_info** %8, align 8
  %115 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load i32, i32* %15, align 4
  %117 = load %struct.dss_pll_clock_info*, %struct.dss_pll_clock_info** %8, align 8
  %118 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %16, align 4
  %120 = load %struct.dss_pll_clock_info*, %struct.dss_pll_clock_info** %8, align 8
  %121 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* %17, align 4
  %123 = load %struct.dss_pll_clock_info*, %struct.dss_pll_clock_info** %8, align 8
  %124 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  store i32 %122, i32* %126, align 4
  %127 = load i32, i32* %18, align 4
  %128 = load %struct.dss_pll_clock_info*, %struct.dss_pll_clock_info** %8, align 8
  %129 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %128, i32 0, i32 4
  store i32 %127, i32* %129, align 8
  %130 = load i64, i64* %9, align 8
  %131 = load %struct.dss_pll_clock_info*, %struct.dss_pll_clock_info** %8, align 8
  %132 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %131, i32 0, i32 5
  store i64 %130, i64* %132, align 8
  %133 = load i64, i64* %10, align 8
  %134 = load %struct.dss_pll_clock_info*, %struct.dss_pll_clock_info** %8, align 8
  %135 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %134, i32 0, i32 6
  store i64 %133, i64* %135, align 8
  %136 = load i64, i64* %11, align 8
  %137 = load %struct.dss_pll_clock_info*, %struct.dss_pll_clock_info** %8, align 8
  %138 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %137, i32 0, i32 7
  %139 = load i64*, i64** %138, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 0
  store i64 %136, i64* %140, align 8
  ret i32 1
}

declare dso_local i32 @DSSDBG(i8*, i64, i64, ...) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i64 @roundup(i32, i64) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @div_u64(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
