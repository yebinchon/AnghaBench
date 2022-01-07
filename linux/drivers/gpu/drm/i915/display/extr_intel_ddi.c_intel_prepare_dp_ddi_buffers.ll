; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_prepare_dp_ddi_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_prepare_dp_ddi_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.ddi_buf_trans = type { i32, i32 }

@INTEL_OUTPUT_ANALOG = common dso_local global i32 0, align 4
@INTEL_OUTPUT_EDP = common dso_local global i32 0, align 4
@DDI_BUF_BALANCE_LEG_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*)* @intel_prepare_dp_ddi_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_prepare_dp_ddi_buffers(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ddi_buf_trans*, align 8
  store %struct.intel_encoder* %0, %struct.intel_encoder** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %11 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %12 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.drm_i915_private* @to_i915(i32 %14)
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %17 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %20 = load i32, i32* @INTEL_OUTPUT_ANALOG, align 4
  %21 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %25 = call %struct.ddi_buf_trans* @intel_ddi_get_buf_trans_fdi(%struct.drm_i915_private* %24, i32* %8)
  store %struct.ddi_buf_trans* %25, %struct.ddi_buf_trans** %10, align 8
  br label %40

26:                                               ; preds = %2
  %27 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %28 = load i32, i32* @INTEL_OUTPUT_EDP, align 4
  %29 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call %struct.ddi_buf_trans* @intel_ddi_get_buf_trans_edp(%struct.drm_i915_private* %32, i32 %33, i32* %8)
  store %struct.ddi_buf_trans* %34, %struct.ddi_buf_trans** %10, align 8
  br label %39

35:                                               ; preds = %26
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call %struct.ddi_buf_trans* @intel_ddi_get_buf_trans_dp(%struct.drm_i915_private* %36, i32 %37, i32* %8)
  store %struct.ddi_buf_trans* %38, %struct.ddi_buf_trans** %10, align 8
  br label %39

39:                                               ; preds = %35, %31
  br label %40

40:                                               ; preds = %39, %23
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %42 = call i64 @IS_GEN9_BC(%struct.drm_i915_private* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %40
  %45 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %46 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = load i32, i32* @DDI_BUF_BALANCE_LEG_ENABLE, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %55, %44, %40
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %85, %57
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %88

62:                                               ; preds = %58
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @DDI_BUF_TRANS_LO(i32 %63, i32 %64)
  %66 = load %struct.ddi_buf_trans*, %struct.ddi_buf_trans** %10, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.ddi_buf_trans, %struct.ddi_buf_trans* %66, i64 %68
  %70 = getelementptr inbounds %struct.ddi_buf_trans, %struct.ddi_buf_trans* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @I915_WRITE(i32 %65, i32 %73)
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @DDI_BUF_TRANS_HI(i32 %75, i32 %76)
  %78 = load %struct.ddi_buf_trans*, %struct.ddi_buf_trans** %10, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.ddi_buf_trans, %struct.ddi_buf_trans* %78, i64 %80
  %82 = getelementptr inbounds %struct.ddi_buf_trans, %struct.ddi_buf_trans* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @I915_WRITE(i32 %77, i32 %83)
  br label %85

85:                                               ; preds = %62
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %58

88:                                               ; preds = %58
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i64 @intel_crtc_has_type(%struct.intel_crtc_state*, i32) #1

declare dso_local %struct.ddi_buf_trans* @intel_ddi_get_buf_trans_fdi(%struct.drm_i915_private*, i32*) #1

declare dso_local %struct.ddi_buf_trans* @intel_ddi_get_buf_trans_edp(%struct.drm_i915_private*, i32, i32*) #1

declare dso_local %struct.ddi_buf_trans* @intel_ddi_get_buf_trans_dp(%struct.drm_i915_private*, i32, i32*) #1

declare dso_local i64 @IS_GEN9_BC(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @DDI_BUF_TRANS_LO(i32, i32) #1

declare dso_local i32 @DDI_BUF_TRANS_HI(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
