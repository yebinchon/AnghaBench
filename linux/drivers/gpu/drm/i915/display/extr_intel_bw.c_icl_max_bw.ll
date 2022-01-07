; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bw.c_icl_max_bw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bw.c_icl_max_bw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.intel_bw_info* }
%struct.intel_bw_info = type { i32, i32, i32* }

@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i32, i32)* @icl_max_bw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icl_max_bw(%struct.drm_i915_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.intel_bw_info*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %46, %3
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %13 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %12, i32 0, i32 0
  %14 = load %struct.intel_bw_info*, %struct.intel_bw_info** %13, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.intel_bw_info* %14)
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %49

17:                                               ; preds = %10
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %19 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %18, i32 0, i32 0
  %20 = load %struct.intel_bw_info*, %struct.intel_bw_info** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.intel_bw_info, %struct.intel_bw_info* %20, i64 %22
  store %struct.intel_bw_info* %23, %struct.intel_bw_info** %9, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.intel_bw_info*, %struct.intel_bw_info** %9, align 8
  %26 = getelementptr inbounds %struct.intel_bw_info, %struct.intel_bw_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sge i32 %24, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = load i32, i32* @UINT_MAX, align 4
  store i32 %30, i32* %4, align 4
  br label %50

31:                                               ; preds = %17
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.intel_bw_info*, %struct.intel_bw_info** %9, align 8
  %34 = getelementptr inbounds %struct.intel_bw_info, %struct.intel_bw_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp sge i32 %32, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load %struct.intel_bw_info*, %struct.intel_bw_info** %9, align 8
  %39 = getelementptr inbounds %struct.intel_bw_info, %struct.intel_bw_info* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %4, align 4
  br label %50

45:                                               ; preds = %31
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %10

49:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %37, %29
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @ARRAY_SIZE(%struct.intel_bw_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
