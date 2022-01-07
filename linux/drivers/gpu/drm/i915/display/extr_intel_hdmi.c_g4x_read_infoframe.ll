; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_g4x_read_infoframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_g4x_read_infoframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.drm_i915_private = type { i32 }

@VIDEO_DIP_CTL = common dso_local global i32 0, align 4
@VIDEO_DIP_SELECT_MASK = common dso_local global i32 0, align 4
@VIDEO_DIP_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*, i32, i8*, i32)* @g4x_read_infoframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g4x_read_infoframe(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.intel_encoder*, align 8
  %7 = alloca %struct.intel_crtc_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_i915_private*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %6, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %16 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.drm_i915_private* @to_i915(i32 %18)
  store %struct.drm_i915_private* %19, %struct.drm_i915_private** %11, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %13, align 8
  %22 = load i32, i32* @VIDEO_DIP_CTL, align 4
  %23 = call i8* @I915_READ(i32 %22)
  %24 = ptrtoint i8* %23 to i32
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* @VIDEO_DIP_SELECT_MASK, align 4
  %26 = or i32 %25, 15
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %12, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @g4x_infoframe_index(i32 %30)
  %32 = load i32, i32* %12, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* @VIDEO_DIP_CTL, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @I915_WRITE(i32 %34, i32 %35)
  store i32 0, i32* %14, align 4
  br label %37

37:                                               ; preds = %47, %5
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load i32, i32* @VIDEO_DIP_DATA, align 4
  %43 = call i8* @I915_READ(i32 %42)
  %44 = ptrtoint i8* %43 to i32
  %45 = load i32*, i32** %13, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %13, align 8
  store i32 %44, i32* %45, align 4
  br label %47

47:                                               ; preds = %41
  %48 = load i32, i32* %14, align 4
  %49 = add nsw i32 %48, 4
  store i32 %49, i32* %14, align 4
  br label %37

50:                                               ; preds = %37
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i8* @I915_READ(i32) #1

declare dso_local i32 @g4x_infoframe_index(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
