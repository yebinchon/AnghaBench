; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_fdi_normal_train.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_fdi_normal_train.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_i915_private = type { i32 }

@FDI_LINK_TRAIN_NONE_IVB = common dso_local global i32 0, align 4
@FDI_TX_ENHANCE_FRAME_ENABLE = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_NONE = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_PATTERN_MASK_CPT = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_NORMAL_CPT = common dso_local global i32 0, align 4
@FDI_RX_ENHANCE_FRAME_ENABLE = common dso_local global i32 0, align 4
@FDI_FS_ERRC_ENABLE = common dso_local global i32 0, align 4
@FDI_FE_ERRC_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc*)* @intel_fdi_normal_train to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_fdi_normal_train(%struct.intel_crtc* %0) #0 {
  %2 = alloca %struct.intel_crtc*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %2, align 8
  %8 = load %struct.intel_crtc*, %struct.intel_crtc** %2, align 8
  %9 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %3, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %13 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %12)
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %4, align 8
  %14 = load %struct.intel_crtc*, %struct.intel_crtc** %2, align 8
  %15 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @FDI_TX_CTL(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @I915_READ(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %22 = call i64 @IS_IVYBRIDGE(%struct.drm_i915_private* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %1
  %25 = load i32, i32* @FDI_LINK_TRAIN_NONE_IVB, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @FDI_LINK_TRAIN_NONE_IVB, align 4
  %30 = load i32, i32* @FDI_TX_ENHANCE_FRAME_ENABLE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %44

34:                                               ; preds = %1
  %35 = load i32, i32* @FDI_LINK_TRAIN_NONE, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* @FDI_LINK_TRAIN_NONE, align 4
  %40 = load i32, i32* @FDI_TX_ENHANCE_FRAME_ENABLE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %34, %24
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @I915_WRITE(i32 %45, i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @FDI_RX_CTL(i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @I915_READ(i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %53 = call i64 @HAS_PCH_CPT(%struct.drm_i915_private* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %44
  %56 = load i32, i32* @FDI_LINK_TRAIN_PATTERN_MASK_CPT, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %7, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* @FDI_LINK_TRAIN_NORMAL_CPT, align 4
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %7, align 4
  br label %71

63:                                               ; preds = %44
  %64 = load i32, i32* @FDI_LINK_TRAIN_NONE, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %7, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* @FDI_LINK_TRAIN_NONE, align 4
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %63, %55
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @FDI_RX_ENHANCE_FRAME_ENABLE, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @I915_WRITE(i32 %72, i32 %75)
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @POSTING_READ(i32 %77)
  %79 = call i32 @udelay(i32 1000)
  %80 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %81 = call i64 @IS_IVYBRIDGE(%struct.drm_i915_private* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %71
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @I915_READ(i32 %85)
  %87 = load i32, i32* @FDI_FS_ERRC_ENABLE, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @FDI_FE_ERRC_ENABLE, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @I915_WRITE(i32 %84, i32 %90)
  br label %92

92:                                               ; preds = %83, %71
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @FDI_TX_CTL(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @IS_IVYBRIDGE(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @FDI_RX_CTL(i32) #1

declare dso_local i64 @HAS_PCH_CPT(%struct.drm_i915_private*) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
