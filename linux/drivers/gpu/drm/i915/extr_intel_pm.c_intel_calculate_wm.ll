; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_intel_calculate_wm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_intel_calculate_wm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_watermark_params = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"FIFO entries required for mode: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"FIFO watermark level: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.intel_watermark_params*, i32, i32, i32)* @intel_calculate_wm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_calculate_wm(i32 %0, %struct.intel_watermark_params* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_watermark_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.intel_watermark_params* %1, %struct.intel_watermark_params** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %10, align 4
  %16 = udiv i32 %15, 100
  %17 = call i32 @intel_wm_method1(i32 %13, i32 %14, i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %7, align 8
  %20 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @DIV_ROUND_UP(i32 %18, i32 %21)
  %23 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %7, align 8
  %24 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %22, %25
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %11, align 4
  %31 = sub nsw i32 %29, %30
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %7, align 8
  %36 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %34, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %5
  %40 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %7, align 8
  %41 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %39, %5
  %44 = load i32, i32* %12, align 4
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %7, align 8
  %48 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %46, %43
  %51 = load i32, i32* %12, align 4
  %52 = icmp sle i32 %51, 8
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 8, i32* %12, align 4
  br label %54

54:                                               ; preds = %53, %50
  %55 = load i32, i32* %12, align 4
  ret i32 %55
}

declare dso_local i32 @intel_wm_method1(i32, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
