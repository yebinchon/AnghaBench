; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_get_buf_trans_hdmi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_get_buf_trans_hdmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddi_buf_trans = type { i32 }
%struct.drm_i915_private = type { i32 }

@bdw_ddi_translations_hdmi = common dso_local global %struct.ddi_buf_trans* null, align 8
@hsw_ddi_translations_hdmi = common dso_local global %struct.ddi_buf_trans* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ddi_buf_trans* (%struct.drm_i915_private*, i32*)* @intel_ddi_get_buf_trans_hdmi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ddi_buf_trans* @intel_ddi_get_buf_trans_hdmi(%struct.drm_i915_private* %0, i32* %1) #0 {
  %3 = alloca %struct.ddi_buf_trans*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %7 = call i64 @IS_GEN9_BC(%struct.drm_i915_private* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call %struct.ddi_buf_trans* @skl_get_buf_trans_hdmi(%struct.drm_i915_private* %10, i32* %11)
  store %struct.ddi_buf_trans* %12, %struct.ddi_buf_trans** %3, align 8
  br label %35

13:                                               ; preds = %2
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %15 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load %struct.ddi_buf_trans*, %struct.ddi_buf_trans** @bdw_ddi_translations_hdmi, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.ddi_buf_trans* %18)
  %20 = load i32*, i32** %5, align 8
  store i32 %19, i32* %20, align 4
  %21 = load %struct.ddi_buf_trans*, %struct.ddi_buf_trans** @bdw_ddi_translations_hdmi, align 8
  store %struct.ddi_buf_trans* %21, %struct.ddi_buf_trans** %3, align 8
  br label %35

22:                                               ; preds = %13
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %24 = call i64 @IS_HASWELL(%struct.drm_i915_private* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.ddi_buf_trans*, %struct.ddi_buf_trans** @hsw_ddi_translations_hdmi, align 8
  %28 = call i32 @ARRAY_SIZE(%struct.ddi_buf_trans* %27)
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  %30 = load %struct.ddi_buf_trans*, %struct.ddi_buf_trans** @hsw_ddi_translations_hdmi, align 8
  store %struct.ddi_buf_trans* %30, %struct.ddi_buf_trans** %3, align 8
  br label %35

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31
  br label %33

33:                                               ; preds = %32
  %34 = load i32*, i32** %5, align 8
  store i32 0, i32* %34, align 4
  store %struct.ddi_buf_trans* null, %struct.ddi_buf_trans** %3, align 8
  br label %35

35:                                               ; preds = %33, %26, %17, %9
  %36 = load %struct.ddi_buf_trans*, %struct.ddi_buf_trans** %3, align 8
  ret %struct.ddi_buf_trans* %36
}

declare dso_local i64 @IS_GEN9_BC(%struct.drm_i915_private*) #1

declare dso_local %struct.ddi_buf_trans* @skl_get_buf_trans_hdmi(%struct.drm_i915_private*, i32*) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ddi_buf_trans*) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
