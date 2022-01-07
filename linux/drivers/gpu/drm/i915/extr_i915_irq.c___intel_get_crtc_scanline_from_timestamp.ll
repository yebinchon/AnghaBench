; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c___intel_get_crtc_scanline_from_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c___intel_get_crtc_scanline_from_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.drm_vblank_crtc* }
%struct.drm_vblank_crtc = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i64, i64, i64, i64 }
%struct.drm_i915_private = type { i32 }

@IVB_TIMESTAMP_CTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.intel_crtc*)* @__intel_get_crtc_scanline_from_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__intel_get_crtc_scanline_from_timestamp(%struct.intel_crtc* %0) #0 {
  %2 = alloca %struct.intel_crtc*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.drm_vblank_crtc*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.intel_crtc* %0, %struct.intel_crtc** %2, align 8
  %14 = load %struct.intel_crtc*, %struct.intel_crtc** %2, align 8
  %15 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = call %struct.drm_i915_private* @to_i915(%struct.TYPE_3__* %17)
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %3, align 8
  %19 = load %struct.intel_crtc*, %struct.intel_crtc** %2, align 8
  %20 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %23, align 8
  %25 = load %struct.intel_crtc*, %struct.intel_crtc** %2, align 8
  %26 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %25, i32 0, i32 1
  %27 = call i64 @drm_crtc_index(%struct.TYPE_4__* %26)
  %28 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %24, i64 %27
  store %struct.drm_vblank_crtc* %28, %struct.drm_vblank_crtc** %4, align 8
  %29 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %4, align 8
  %30 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %29, i32 0, i32 0
  store %struct.drm_display_mode* %30, %struct.drm_display_mode** %5, align 8
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %32 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %6, align 8
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %35 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %7, align 8
  %37 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %38 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %8, align 8
  %40 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %41 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %9, align 8
  br label %43

43:                                               ; preds = %56, %1
  %44 = load %struct.intel_crtc*, %struct.intel_crtc** %2, align 8
  %45 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @PIPE_FRMTMSTMP(i32 %46)
  %48 = call i64 @I915_READ_FW(i32 %47)
  store i64 %48, i64* %11, align 8
  %49 = load i32, i32* @IVB_TIMESTAMP_CTR, align 4
  %50 = call i64 @I915_READ_FW(i32 %49)
  store i64 %50, i64* %12, align 8
  %51 = load %struct.intel_crtc*, %struct.intel_crtc** %2, align 8
  %52 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @PIPE_FRMTMSTMP(i32 %53)
  %55 = call i64 @I915_READ_FW(i32 %54)
  store i64 %55, i64* %13, align 8
  br label %56

56:                                               ; preds = %43
  %57 = load i64, i64* %13, align 8
  %58 = load i64, i64* %11, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %43, label %60

60:                                               ; preds = %56
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* %11, align 8
  %63 = sub nsw i64 %61, %62
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @mul_u32_u32(i64 %63, i64 %64)
  %66 = load i64, i64* %8, align 8
  %67 = mul nsw i64 1000, %66
  %68 = trunc i64 %67 to i32
  %69 = call i64 @div_u64(i32 %65, i32 %68)
  store i64 %69, i64* %10, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* %7, align 8
  %72 = sub nsw i64 %71, 1
  %73 = call i64 @min(i64 %70, i64 %72)
  store i64 %73, i64* %10, align 8
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* %6, align 8
  %76 = add nsw i64 %74, %75
  %77 = load i64, i64* %7, align 8
  %78 = srem i64 %76, %77
  store i64 %78, i64* %10, align 8
  %79 = load i64, i64* %10, align 8
  ret i64 %79
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.TYPE_3__*) #1

declare dso_local i64 @drm_crtc_index(%struct.TYPE_4__*) #1

declare dso_local i64 @I915_READ_FW(i32) #1

declare dso_local i32 @PIPE_FRMTMSTMP(i32) #1

declare dso_local i64 @div_u64(i32, i32) #1

declare dso_local i32 @mul_u32_u32(i64, i64) #1

declare dso_local i64 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
