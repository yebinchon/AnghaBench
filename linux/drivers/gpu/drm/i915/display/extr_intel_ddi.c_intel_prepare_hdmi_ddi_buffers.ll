; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_prepare_hdmi_ddi_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_prepare_hdmi_ddi_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.ddi_buf_trans = type { i32, i32 }

@DDI_BUF_BALANCE_LEG_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, i32)* @intel_prepare_hdmi_ddi_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_prepare_hdmi_ddi_buffers(%struct.intel_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ddi_buf_trans*, align 8
  store %struct.intel_encoder* %0, %struct.intel_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %11 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.drm_i915_private* @to_i915(i32 %13)
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %16 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %19 = call %struct.ddi_buf_trans* @intel_ddi_get_buf_trans_hdmi(%struct.drm_i915_private* %18, i32* %7)
  store %struct.ddi_buf_trans* %19, %struct.ddi_buf_trans** %9, align 8
  %20 = load %struct.ddi_buf_trans*, %struct.ddi_buf_trans** %9, align 8
  %21 = icmp ne %struct.ddi_buf_trans* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON_ONCE(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %75

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp sge i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i64 @WARN_ON_ONCE(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* %7, align 4
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %34, %27
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %39 = call i64 @IS_GEN9_BC(%struct.drm_i915_private* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %37
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %43 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %41
  %53 = load i32, i32* @DDI_BUF_BALANCE_LEG_ENABLE, align 4
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %52, %41, %37
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @DDI_BUF_TRANS_LO(i32 %55, i32 9)
  %57 = load %struct.ddi_buf_trans*, %struct.ddi_buf_trans** %9, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.ddi_buf_trans, %struct.ddi_buf_trans* %57, i64 %59
  %61 = getelementptr inbounds %struct.ddi_buf_trans, %struct.ddi_buf_trans* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @I915_WRITE(i32 %56, i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @DDI_BUF_TRANS_HI(i32 %66, i32 9)
  %68 = load %struct.ddi_buf_trans*, %struct.ddi_buf_trans** %9, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.ddi_buf_trans, %struct.ddi_buf_trans* %68, i64 %70
  %72 = getelementptr inbounds %struct.ddi_buf_trans, %struct.ddi_buf_trans* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @I915_WRITE(i32 %67, i32 %73)
  br label %75

75:                                               ; preds = %54, %26
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.ddi_buf_trans* @intel_ddi_get_buf_trans_hdmi(%struct.drm_i915_private*, i32*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

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
