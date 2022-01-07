; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_csr.c_intel_get_stepping_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_csr.c_intel_get_stepping_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stepping_info = type { i32 }
%struct.drm_i915_private = type { i32 }

@icl_stepping_info = common dso_local global %struct.stepping_info* null, align 8
@skl_stepping_info = common dso_local global %struct.stepping_info* null, align 8
@bxt_stepping_info = common dso_local global %struct.stepping_info* null, align 8
@no_stepping_info = common dso_local global %struct.stepping_info zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.stepping_info* (%struct.drm_i915_private*)* @intel_get_stepping_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.stepping_info* @intel_get_stepping_info(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.stepping_info*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.stepping_info*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %7 = call i64 @IS_ICELAKE(%struct.drm_i915_private* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.stepping_info*, %struct.stepping_info** @icl_stepping_info, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.stepping_info* %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.stepping_info*, %struct.stepping_info** @icl_stepping_info, align 8
  store %struct.stepping_info* %12, %struct.stepping_info** %4, align 8
  br label %32

13:                                               ; preds = %1
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %15 = call i64 @IS_SKYLAKE(%struct.drm_i915_private* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load %struct.stepping_info*, %struct.stepping_info** @skl_stepping_info, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.stepping_info* %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.stepping_info*, %struct.stepping_info** @skl_stepping_info, align 8
  store %struct.stepping_info* %20, %struct.stepping_info** %4, align 8
  br label %31

21:                                               ; preds = %13
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %23 = call i64 @IS_BROXTON(%struct.drm_i915_private* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.stepping_info*, %struct.stepping_info** @bxt_stepping_info, align 8
  %27 = call i32 @ARRAY_SIZE(%struct.stepping_info* %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.stepping_info*, %struct.stepping_info** @bxt_stepping_info, align 8
  store %struct.stepping_info* %28, %struct.stepping_info** %4, align 8
  br label %30

29:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  store %struct.stepping_info* null, %struct.stepping_info** %4, align 8
  br label %30

30:                                               ; preds = %29, %25
  br label %31

31:                                               ; preds = %30, %17
  br label %32

32:                                               ; preds = %31, %9
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %34 = call i32 @INTEL_REVID(%struct.drm_i915_private* %33)
  %35 = load i32, i32* %5, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.stepping_info*, %struct.stepping_info** %4, align 8
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %40 = call i32 @INTEL_REVID(%struct.drm_i915_private* %39)
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.stepping_info, %struct.stepping_info* %38, i64 %41
  store %struct.stepping_info* %42, %struct.stepping_info** %2, align 8
  br label %44

43:                                               ; preds = %32
  store %struct.stepping_info* @no_stepping_info, %struct.stepping_info** %2, align 8
  br label %44

44:                                               ; preds = %43, %37
  %45 = load %struct.stepping_info*, %struct.stepping_info** %2, align 8
  ret %struct.stepping_info* %45
}

declare dso_local i64 @IS_ICELAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.stepping_info*) #1

declare dso_local i64 @IS_SKYLAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BROXTON(%struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_REVID(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
