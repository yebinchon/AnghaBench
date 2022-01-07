; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_ironlake_fdi_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_ironlake_fdi_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_crtc = type { i32 }

@FDI_TX_ENABLE = common dso_local global i32 0, align 4
@PIPECONF_BPC_MASK = common dso_local global i32 0, align 4
@FDI_RX_ENABLE = common dso_local global i32 0, align 4
@FDI_RX_PHASE_SYNC_POINTER_OVR = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_NONE = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_PATTERN_1 = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_PATTERN_MASK_CPT = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_PATTERN_1_CPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @ironlake_fdi_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ironlake_fdi_disable(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_crtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %10 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %3, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %13 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %12)
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %4, align 8
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %15 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %14)
  store %struct.intel_crtc* %15, %struct.intel_crtc** %5, align 8
  %16 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %17 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @FDI_TX_CTL(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @I915_READ(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @FDI_TX_ENABLE, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = call i32 @I915_WRITE(i32 %23, i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @POSTING_READ(i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @FDI_RX_CTL(i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @I915_READ(i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %35, -458753
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @PIPECONF(i32 %37)
  %39 = call i32 @I915_READ(i32 %38)
  %40 = load i32, i32* @PIPECONF_BPC_MASK, align 4
  %41 = and i32 %39, %40
  %42 = shl i32 %41, 11
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @FDI_RX_ENABLE, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  %50 = call i32 @I915_WRITE(i32 %45, i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @POSTING_READ(i32 %51)
  %53 = call i32 @udelay(i32 100)
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %55 = call i64 @HAS_PCH_IBX(%struct.drm_i915_private* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %1
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @FDI_RX_CHICKEN(i32 %58)
  %60 = load i32, i32* @FDI_RX_PHASE_SYNC_POINTER_OVR, align 4
  %61 = call i32 @I915_WRITE(i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %57, %1
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @FDI_TX_CTL(i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @I915_READ(i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* @FDI_LINK_TRAIN_NONE, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %8, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* @FDI_LINK_TRAIN_PATTERN_1, align 4
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @I915_WRITE(i32 %74, i32 %75)
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @FDI_RX_CTL(i32 %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @I915_READ(i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %82 = call i64 @HAS_PCH_CPT(%struct.drm_i915_private* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %62
  %85 = load i32, i32* @FDI_LINK_TRAIN_PATTERN_MASK_CPT, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %8, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* @FDI_LINK_TRAIN_PATTERN_1_CPT, align 4
  %90 = load i32, i32* %8, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %8, align 4
  br label %100

92:                                               ; preds = %62
  %93 = load i32, i32* @FDI_LINK_TRAIN_NONE, align 4
  %94 = xor i32 %93, -1
  %95 = load i32, i32* %8, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* @FDI_LINK_TRAIN_PATTERN_1, align 4
  %98 = load i32, i32* %8, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %92, %84
  %101 = load i32, i32* %8, align 4
  %102 = and i32 %101, -458753
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @PIPECONF(i32 %103)
  %105 = call i32 @I915_READ(i32 %104)
  %106 = load i32, i32* @PIPECONF_BPC_MASK, align 4
  %107 = and i32 %105, %106
  %108 = shl i32 %107, 11
  %109 = load i32, i32* %8, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @I915_WRITE(i32 %111, i32 %112)
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @POSTING_READ(i32 %114)
  %116 = call i32 @udelay(i32 100)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @FDI_TX_CTL(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @FDI_RX_CTL(i32) #1

declare dso_local i32 @PIPECONF(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @HAS_PCH_IBX(%struct.drm_i915_private*) #1

declare dso_local i32 @FDI_RX_CHICKEN(i32) #1

declare dso_local i64 @HAS_PCH_CPT(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
