; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_audio.c_audio_config_hdmi_get_n.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_audio.c_audio_config_hdmi_get_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_aud_ncts = type { i32, i64, i32 }
%struct.intel_crtc_state = type { i32, i64 }

@hdmi_aud_ncts_36bpp = common dso_local global %struct.hdmi_aud_ncts* null, align 8
@hdmi_aud_ncts_30bpp = common dso_local global %struct.hdmi_aud_ncts* null, align 8
@hdmi_aud_ncts_24bpp = common dso_local global %struct.hdmi_aud_ncts* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc_state*, i32)* @audio_config_hdmi_get_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audio_config_hdmi_get_n(%struct.intel_crtc_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hdmi_aud_ncts*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %10 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 36
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.hdmi_aud_ncts*, %struct.hdmi_aud_ncts** @hdmi_aud_ncts_36bpp, align 8
  store %struct.hdmi_aud_ncts* %14, %struct.hdmi_aud_ncts** %6, align 8
  %15 = load %struct.hdmi_aud_ncts*, %struct.hdmi_aud_ncts** @hdmi_aud_ncts_36bpp, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.hdmi_aud_ncts* %15)
  store i32 %16, i32* %8, align 4
  br label %31

17:                                               ; preds = %2
  %18 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %19 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 30
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.hdmi_aud_ncts*, %struct.hdmi_aud_ncts** @hdmi_aud_ncts_30bpp, align 8
  store %struct.hdmi_aud_ncts* %23, %struct.hdmi_aud_ncts** %6, align 8
  %24 = load %struct.hdmi_aud_ncts*, %struct.hdmi_aud_ncts** @hdmi_aud_ncts_30bpp, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.hdmi_aud_ncts* %24)
  store i32 %25, i32* %8, align 4
  br label %30

26:                                               ; preds = %17
  %27 = load %struct.hdmi_aud_ncts*, %struct.hdmi_aud_ncts** @hdmi_aud_ncts_24bpp, align 8
  store %struct.hdmi_aud_ncts* %27, %struct.hdmi_aud_ncts** %6, align 8
  %28 = load %struct.hdmi_aud_ncts*, %struct.hdmi_aud_ncts** @hdmi_aud_ncts_24bpp, align 8
  %29 = call i32 @ARRAY_SIZE(%struct.hdmi_aud_ncts* %28)
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %26, %22
  br label %31

31:                                               ; preds = %30, %13
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %64, %31
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %67

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.hdmi_aud_ncts*, %struct.hdmi_aud_ncts** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.hdmi_aud_ncts, %struct.hdmi_aud_ncts* %38, i64 %40
  %42 = getelementptr inbounds %struct.hdmi_aud_ncts, %struct.hdmi_aud_ncts* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %37, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %36
  %46 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %47 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.hdmi_aud_ncts*, %struct.hdmi_aud_ncts** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.hdmi_aud_ncts, %struct.hdmi_aud_ncts* %49, i64 %51
  %53 = getelementptr inbounds %struct.hdmi_aud_ncts, %struct.hdmi_aud_ncts* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %48, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %45
  %57 = load %struct.hdmi_aud_ncts*, %struct.hdmi_aud_ncts** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.hdmi_aud_ncts, %struct.hdmi_aud_ncts* %57, i64 %59
  %61 = getelementptr inbounds %struct.hdmi_aud_ncts, %struct.hdmi_aud_ncts* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %3, align 4
  br label %68

63:                                               ; preds = %45, %36
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %32

67:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %56
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @ARRAY_SIZE(%struct.hdmi_aud_ncts*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
