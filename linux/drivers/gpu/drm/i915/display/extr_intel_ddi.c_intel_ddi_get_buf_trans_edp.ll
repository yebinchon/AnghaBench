; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_get_buf_trans_edp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_get_buf_trans_edp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddi_buf_trans = type { i32 }
%struct.drm_i915_private = type { i32 }

@hsw_ddi_translations_dp = common dso_local global %struct.ddi_buf_trans* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ddi_buf_trans* (%struct.drm_i915_private*, i32, i32*)* @intel_ddi_get_buf_trans_edp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ddi_buf_trans* @intel_ddi_get_buf_trans_edp(%struct.drm_i915_private* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ddi_buf_trans*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ddi_buf_trans*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %10 = call i64 @IS_GEN9_BC(%struct.drm_i915_private* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call %struct.ddi_buf_trans* @skl_get_buf_trans_edp(%struct.drm_i915_private* %13, i32* %14)
  store %struct.ddi_buf_trans* %15, %struct.ddi_buf_trans** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @skl_buf_trans_num_entries(i32 %16, i32 %18)
  %20 = load i32*, i32** %7, align 8
  store i32 %19, i32* %20, align 4
  %21 = load %struct.ddi_buf_trans*, %struct.ddi_buf_trans** %8, align 8
  store %struct.ddi_buf_trans* %21, %struct.ddi_buf_trans** %4, align 8
  br label %43

22:                                               ; preds = %3
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %24 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call %struct.ddi_buf_trans* @bdw_get_buf_trans_edp(%struct.drm_i915_private* %27, i32* %28)
  store %struct.ddi_buf_trans* %29, %struct.ddi_buf_trans** %4, align 8
  br label %43

30:                                               ; preds = %22
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %32 = call i64 @IS_HASWELL(%struct.drm_i915_private* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load %struct.ddi_buf_trans*, %struct.ddi_buf_trans** @hsw_ddi_translations_dp, align 8
  %36 = call i32 @ARRAY_SIZE(%struct.ddi_buf_trans* %35)
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  %38 = load %struct.ddi_buf_trans*, %struct.ddi_buf_trans** @hsw_ddi_translations_dp, align 8
  store %struct.ddi_buf_trans* %38, %struct.ddi_buf_trans** %4, align 8
  br label %43

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39
  br label %41

41:                                               ; preds = %40
  %42 = load i32*, i32** %7, align 8
  store i32 0, i32* %42, align 4
  store %struct.ddi_buf_trans* null, %struct.ddi_buf_trans** %4, align 8
  br label %43

43:                                               ; preds = %41, %34, %26, %12
  %44 = load %struct.ddi_buf_trans*, %struct.ddi_buf_trans** %4, align 8
  ret %struct.ddi_buf_trans* %44
}

declare dso_local i64 @IS_GEN9_BC(%struct.drm_i915_private*) #1

declare dso_local %struct.ddi_buf_trans* @skl_get_buf_trans_edp(%struct.drm_i915_private*, i32*) #1

declare dso_local i32 @skl_buf_trans_num_entries(i32, i32) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local %struct.ddi_buf_trans* @bdw_get_buf_trans_edp(%struct.drm_i915_private*, i32*) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ddi_buf_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
