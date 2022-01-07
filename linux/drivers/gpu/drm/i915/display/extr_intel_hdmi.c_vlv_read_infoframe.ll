; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_vlv_read_infoframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_vlv_read_infoframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_crtc = type { i32 }

@VIDEO_DIP_SELECT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*, i32, i8*, i32)* @vlv_read_infoframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlv_read_infoframe(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.intel_encoder*, align 8
  %7 = alloca %struct.intel_crtc_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_i915_private*, align 8
  %12 = alloca %struct.intel_crtc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %6, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %17 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.drm_i915_private* @to_i915(i32 %19)
  store %struct.drm_i915_private* %20, %struct.drm_i915_private** %11, align 8
  %21 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %22 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.intel_crtc* @to_intel_crtc(i32 %24)
  store %struct.intel_crtc* %25, %struct.intel_crtc** %12, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %14, align 8
  %28 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %29 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @VLV_TVIDEO_DIP_CTL(i32 %30)
  %32 = call i8* @I915_READ(i32 %31)
  %33 = ptrtoint i8* %32 to i32
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* @VIDEO_DIP_SELECT_MASK, align 4
  %35 = or i32 %34, 15
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %13, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @g4x_infoframe_index(i32 %39)
  %41 = load i32, i32* %13, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %13, align 4
  %43 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %44 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @VLV_TVIDEO_DIP_CTL(i32 %45)
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @I915_WRITE(i32 %46, i32 %47)
  store i32 0, i32* %15, align 4
  br label %49

49:                                               ; preds = %62, %5
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %55 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @VLV_TVIDEO_DIP_DATA(i32 %56)
  %58 = call i8* @I915_READ(i32 %57)
  %59 = ptrtoint i8* %58 to i32
  %60 = load i32*, i32** %14, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %14, align 8
  store i32 %59, i32* %60, align 4
  br label %62

62:                                               ; preds = %53
  %63 = load i32, i32* %15, align 4
  %64 = add nsw i32 %63, 4
  store i32 %64, i32* %15, align 4
  br label %49

65:                                               ; preds = %49
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local i8* @I915_READ(i32) #1

declare dso_local i32 @VLV_TVIDEO_DIP_CTL(i32) #1

declare dso_local i32 @g4x_infoframe_index(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @VLV_TVIDEO_DIP_DATA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
