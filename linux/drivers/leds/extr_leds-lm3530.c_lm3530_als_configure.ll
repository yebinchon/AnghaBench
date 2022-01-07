; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3530.c_lm3530_als_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3530.c_lm3530_als_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm3530_platform_data = type { i64, i32, i32, i32, i32, i32 }
%struct.lm3530_als_data = type { i32*, i32, i32 }

@LM3530_ALS_WINDOW_mV = common dso_local global i32 0, align 4
@LM3530_ALS_ZB_MAX = common dso_local global i32 0, align 4
@LM3530_ALS_OFFSET_mV = common dso_local global i32 0, align 4
@LED_FULL = common dso_local global i32 0, align 4
@LM3530_ALS_AVG_TIME_SHIFT = common dso_local global i32 0, align 4
@LM3530_ENABLE_ALS = common dso_local global i32 0, align 4
@LM3530_ALS_SEL_SHIFT = common dso_local global i32 0, align 4
@LM3530_ALS1_IMP_SHIFT = common dso_local global i32 0, align 4
@LM3530_ALS2_IMP_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lm3530_platform_data*, %struct.lm3530_als_data*)* @lm3530_als_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lm3530_als_configure(%struct.lm3530_platform_data* %0, %struct.lm3530_als_data* %1) #0 {
  %3 = alloca %struct.lm3530_platform_data*, align 8
  %4 = alloca %struct.lm3530_als_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lm3530_platform_data* %0, %struct.lm3530_platform_data** %3, align 8
  store %struct.lm3530_als_data* %1, %struct.lm3530_als_data** %4, align 8
  %9 = load %struct.lm3530_platform_data*, %struct.lm3530_platform_data** %3, align 8
  %10 = getelementptr inbounds %struct.lm3530_platform_data, %struct.lm3530_platform_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.lm3530_platform_data*, %struct.lm3530_platform_data** %3, align 8
  %15 = getelementptr inbounds %struct.lm3530_platform_data, %struct.lm3530_platform_data* %14, i32 0, i32 1
  store i32 0, i32* %15, align 8
  %16 = load i32, i32* @LM3530_ALS_WINDOW_mV, align 4
  %17 = sext i32 %16 to i64
  %18 = load %struct.lm3530_platform_data*, %struct.lm3530_platform_data** %3, align 8
  %19 = getelementptr inbounds %struct.lm3530_platform_data, %struct.lm3530_platform_data* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  br label %20

20:                                               ; preds = %13, %2
  %21 = load %struct.lm3530_platform_data*, %struct.lm3530_platform_data** %3, align 8
  %22 = getelementptr inbounds %struct.lm3530_platform_data, %struct.lm3530_platform_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %6, align 4
  %24 = load %struct.lm3530_platform_data*, %struct.lm3530_platform_data** %3, align 8
  %25 = getelementptr inbounds %struct.lm3530_platform_data, %struct.lm3530_platform_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = sub nsw i32 %28, %29
  %31 = load i32, i32* @LM3530_ALS_WINDOW_mV, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %20
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @LM3530_ALS_WINDOW_mV, align 4
  %36 = add nsw i32 %34, %35
  store i32 %36, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = load %struct.lm3530_platform_data*, %struct.lm3530_platform_data** %3, align 8
  %39 = getelementptr inbounds %struct.lm3530_platform_data, %struct.lm3530_platform_data* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %33, %20
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 %41, %42
  %44 = load i32, i32* @LM3530_ALS_ZB_MAX, align 4
  %45 = add nsw i32 %44, 1
  %46 = sdiv i32 %43, %45
  store i32 %46, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %70, %40
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @LM3530_ALS_ZB_MAX, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %47
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @LM3530_ALS_OFFSET_mV, align 4
  %54 = add nsw i32 %52, %53
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %54, %55
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %8, align 4
  %59 = mul nsw i32 %57, %58
  %60 = add nsw i32 %56, %59
  %61 = load i32, i32* @LED_FULL, align 4
  %62 = mul nsw i32 %60, %61
  %63 = sdiv i32 %62, 1000
  %64 = load %struct.lm3530_als_data*, %struct.lm3530_als_data** %4, align 8
  %65 = getelementptr inbounds %struct.lm3530_als_data, %struct.lm3530_als_data* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %63, i32* %69, align 4
  br label %70

70:                                               ; preds = %51
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %47

73:                                               ; preds = %47
  %74 = load %struct.lm3530_platform_data*, %struct.lm3530_platform_data** %3, align 8
  %75 = getelementptr inbounds %struct.lm3530_platform_data, %struct.lm3530_platform_data* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @LM3530_ALS_AVG_TIME_SHIFT, align 4
  %78 = shl i32 %76, %77
  %79 = load i32, i32* @LM3530_ENABLE_ALS, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.lm3530_platform_data*, %struct.lm3530_platform_data** %3, align 8
  %82 = getelementptr inbounds %struct.lm3530_platform_data, %struct.lm3530_platform_data* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @LM3530_ALS_SEL_SHIFT, align 4
  %85 = shl i32 %83, %84
  %86 = or i32 %80, %85
  %87 = load %struct.lm3530_als_data*, %struct.lm3530_als_data** %4, align 8
  %88 = getelementptr inbounds %struct.lm3530_als_data, %struct.lm3530_als_data* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  %89 = load %struct.lm3530_platform_data*, %struct.lm3530_platform_data** %3, align 8
  %90 = getelementptr inbounds %struct.lm3530_platform_data, %struct.lm3530_platform_data* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @LM3530_ALS1_IMP_SHIFT, align 4
  %93 = shl i32 %91, %92
  %94 = load %struct.lm3530_platform_data*, %struct.lm3530_platform_data** %3, align 8
  %95 = getelementptr inbounds %struct.lm3530_platform_data, %struct.lm3530_platform_data* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @LM3530_ALS2_IMP_SHIFT, align 4
  %98 = shl i32 %96, %97
  %99 = or i32 %93, %98
  %100 = load %struct.lm3530_als_data*, %struct.lm3530_als_data** %4, align 8
  %101 = getelementptr inbounds %struct.lm3530_als_data, %struct.lm3530_als_data* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
