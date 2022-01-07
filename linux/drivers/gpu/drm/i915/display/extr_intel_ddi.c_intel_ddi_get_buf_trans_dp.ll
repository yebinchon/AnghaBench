; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_get_buf_trans_dp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_get_buf_trans_dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddi_buf_trans = type { i32 }
%struct.drm_i915_private = type { i32 }

@bdw_ddi_translations_dp = common dso_local global %struct.ddi_buf_trans* null, align 8
@hsw_ddi_translations_dp = common dso_local global %struct.ddi_buf_trans* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ddi_buf_trans* (%struct.drm_i915_private*, i32, i32*)* @intel_ddi_get_buf_trans_dp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ddi_buf_trans* @intel_ddi_get_buf_trans_dp(%struct.drm_i915_private* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ddi_buf_trans*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ddi_buf_trans*, align 8
  %9 = alloca %struct.ddi_buf_trans*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %11 = call i64 @IS_KABYLAKE(%struct.drm_i915_private* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %15 = call i64 @IS_COFFEELAKE(%struct.drm_i915_private* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %13, %3
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call %struct.ddi_buf_trans* @kbl_get_buf_trans_dp(%struct.drm_i915_private* %18, i32* %19)
  store %struct.ddi_buf_trans* %20, %struct.ddi_buf_trans** %8, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @skl_buf_trans_num_entries(i32 %21, i32 %23)
  %25 = load i32*, i32** %7, align 8
  store i32 %24, i32* %25, align 4
  %26 = load %struct.ddi_buf_trans*, %struct.ddi_buf_trans** %8, align 8
  store %struct.ddi_buf_trans* %26, %struct.ddi_buf_trans** %4, align 8
  br label %64

27:                                               ; preds = %13
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %29 = call i64 @IS_SKYLAKE(%struct.drm_i915_private* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call %struct.ddi_buf_trans* @skl_get_buf_trans_dp(%struct.drm_i915_private* %32, i32* %33)
  store %struct.ddi_buf_trans* %34, %struct.ddi_buf_trans** %9, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @skl_buf_trans_num_entries(i32 %35, i32 %37)
  %39 = load i32*, i32** %7, align 8
  store i32 %38, i32* %39, align 4
  %40 = load %struct.ddi_buf_trans*, %struct.ddi_buf_trans** %9, align 8
  store %struct.ddi_buf_trans* %40, %struct.ddi_buf_trans** %4, align 8
  br label %64

41:                                               ; preds = %27
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %43 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load %struct.ddi_buf_trans*, %struct.ddi_buf_trans** @bdw_ddi_translations_dp, align 8
  %47 = call i32 @ARRAY_SIZE(%struct.ddi_buf_trans* %46)
  %48 = load i32*, i32** %7, align 8
  store i32 %47, i32* %48, align 4
  %49 = load %struct.ddi_buf_trans*, %struct.ddi_buf_trans** @bdw_ddi_translations_dp, align 8
  store %struct.ddi_buf_trans* %49, %struct.ddi_buf_trans** %4, align 8
  br label %64

50:                                               ; preds = %41
  %51 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %52 = call i64 @IS_HASWELL(%struct.drm_i915_private* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load %struct.ddi_buf_trans*, %struct.ddi_buf_trans** @hsw_ddi_translations_dp, align 8
  %56 = call i32 @ARRAY_SIZE(%struct.ddi_buf_trans* %55)
  %57 = load i32*, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  %58 = load %struct.ddi_buf_trans*, %struct.ddi_buf_trans** @hsw_ddi_translations_dp, align 8
  store %struct.ddi_buf_trans* %58, %struct.ddi_buf_trans** %4, align 8
  br label %64

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59
  br label %61

61:                                               ; preds = %60
  br label %62

62:                                               ; preds = %61
  %63 = load i32*, i32** %7, align 8
  store i32 0, i32* %63, align 4
  store %struct.ddi_buf_trans* null, %struct.ddi_buf_trans** %4, align 8
  br label %64

64:                                               ; preds = %62, %54, %45, %31, %17
  %65 = load %struct.ddi_buf_trans*, %struct.ddi_buf_trans** %4, align 8
  ret %struct.ddi_buf_trans* %65
}

declare dso_local i64 @IS_KABYLAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_COFFEELAKE(%struct.drm_i915_private*) #1

declare dso_local %struct.ddi_buf_trans* @kbl_get_buf_trans_dp(%struct.drm_i915_private*, i32*) #1

declare dso_local i32 @skl_buf_trans_num_entries(i32, i32) #1

declare dso_local i64 @IS_SKYLAKE(%struct.drm_i915_private*) #1

declare dso_local %struct.ddi_buf_trans* @skl_get_buf_trans_dp(%struct.drm_i915_private*, i32*) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ddi_buf_trans*) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
