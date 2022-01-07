; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_bxt_ddi_vswing_sequence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_bxt_ddi_vswing_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.bxt_ddi_buf_trans = type { i32, i32, i32, i32 }

@INTEL_OUTPUT_HDMI = common dso_local global i32 0, align 4
@INTEL_OUTPUT_EDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, i32, i32)* @bxt_ddi_vswing_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxt_ddi_vswing_sequence(%struct.intel_encoder* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.bxt_ddi_buf_trans*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %12 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.drm_i915_private* @to_i915(i32 %14)
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %7, align 8
  %16 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %17 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %24 = call %struct.bxt_ddi_buf_trans* @bxt_get_buf_trans_hdmi(%struct.drm_i915_private* %23, i32* %10)
  store %struct.bxt_ddi_buf_trans* %24, %struct.bxt_ddi_buf_trans** %8, align 8
  br label %36

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @INTEL_OUTPUT_EDP, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %31 = call %struct.bxt_ddi_buf_trans* @bxt_get_buf_trans_edp(%struct.drm_i915_private* %30, i32* %10)
  store %struct.bxt_ddi_buf_trans* %31, %struct.bxt_ddi_buf_trans** %8, align 8
  br label %35

32:                                               ; preds = %25
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %34 = call %struct.bxt_ddi_buf_trans* @bxt_get_buf_trans_dp(%struct.drm_i915_private* %33, i32* %10)
  store %struct.bxt_ddi_buf_trans* %34, %struct.bxt_ddi_buf_trans** %8, align 8
  br label %35

35:                                               ; preds = %32, %29
  br label %36

36:                                               ; preds = %35, %22
  %37 = load %struct.bxt_ddi_buf_trans*, %struct.bxt_ddi_buf_trans** %8, align 8
  %38 = icmp ne %struct.bxt_ddi_buf_trans* %37, null
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @WARN_ON_ONCE(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %82

44:                                               ; preds = %36
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp sge i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i64 @WARN_ON_ONCE(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* %10, align 4
  %53 = sub nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %51, %44
  %55 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.bxt_ddi_buf_trans*, %struct.bxt_ddi_buf_trans** %8, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.bxt_ddi_buf_trans, %struct.bxt_ddi_buf_trans* %57, i64 %59
  %61 = getelementptr inbounds %struct.bxt_ddi_buf_trans, %struct.bxt_ddi_buf_trans* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.bxt_ddi_buf_trans*, %struct.bxt_ddi_buf_trans** %8, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.bxt_ddi_buf_trans, %struct.bxt_ddi_buf_trans* %63, i64 %65
  %67 = getelementptr inbounds %struct.bxt_ddi_buf_trans, %struct.bxt_ddi_buf_trans* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.bxt_ddi_buf_trans*, %struct.bxt_ddi_buf_trans** %8, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.bxt_ddi_buf_trans, %struct.bxt_ddi_buf_trans* %69, i64 %71
  %73 = getelementptr inbounds %struct.bxt_ddi_buf_trans, %struct.bxt_ddi_buf_trans* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.bxt_ddi_buf_trans*, %struct.bxt_ddi_buf_trans** %8, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.bxt_ddi_buf_trans, %struct.bxt_ddi_buf_trans* %75, i64 %77
  %79 = getelementptr inbounds %struct.bxt_ddi_buf_trans, %struct.bxt_ddi_buf_trans* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @bxt_ddi_phy_set_signal_level(%struct.drm_i915_private* %55, i32 %56, i32 %62, i32 %68, i32 %74, i32 %80)
  br label %82

82:                                               ; preds = %54, %43
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.bxt_ddi_buf_trans* @bxt_get_buf_trans_hdmi(%struct.drm_i915_private*, i32*) #1

declare dso_local %struct.bxt_ddi_buf_trans* @bxt_get_buf_trans_edp(%struct.drm_i915_private*, i32*) #1

declare dso_local %struct.bxt_ddi_buf_trans* @bxt_get_buf_trans_dp(%struct.drm_i915_private*, i32*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @bxt_ddi_phy_set_signal_level(%struct.drm_i915_private*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
