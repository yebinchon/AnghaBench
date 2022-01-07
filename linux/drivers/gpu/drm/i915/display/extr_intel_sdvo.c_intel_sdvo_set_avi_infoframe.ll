; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_set_avi_infoframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_set_avi_infoframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sdvo = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %union.hdmi_infoframe }
%union.hdmi_infoframe = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@AVI = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_TYPE_AVI = common dso_local global i64 0, align 8
@SDVO_HBUF_INDEX_AVI_IF = common dso_local global i32 0, align 4
@SDVO_HBUF_TX_VSYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_sdvo*, %struct.intel_crtc_state*)* @intel_sdvo_set_avi_infoframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sdvo_set_avi_infoframe(%struct.intel_sdvo* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_sdvo*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %union.hdmi_infoframe*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.intel_sdvo* %0, %struct.intel_sdvo** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  %11 = load i32, i32* @AVI, align 4
  %12 = call i32 @HDMI_INFOFRAME_SIZE(i32 %11)
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %17 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  store %union.hdmi_infoframe* %18, %union.hdmi_infoframe** %8, align 8
  %19 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %20 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i64, i64* @HDMI_INFOFRAME_TYPE_AVI, align 8
  %24 = call i32 @intel_hdmi_infoframe_enable(i64 %23)
  %25 = and i32 %22, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %56

28:                                               ; preds = %2
  %29 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %8, align 8
  %30 = bitcast %union.hdmi_infoframe* %29 to %struct.TYPE_4__*
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @HDMI_INFOFRAME_TYPE_AVI, align 8
  %34 = icmp ne i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i64 @WARN_ON(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %56

39:                                               ; preds = %28
  %40 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %8, align 8
  %41 = mul nuw i64 4, %13
  %42 = trunc i64 %41 to i32
  %43 = call i64 @hdmi_infoframe_pack_only(%union.hdmi_infoframe* %40, i32* %15, i32 %42)
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp slt i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i64 @WARN_ON(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %56

50:                                               ; preds = %39
  %51 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %52 = load i32, i32* @SDVO_HBUF_INDEX_AVI_IF, align 4
  %53 = load i32, i32* @SDVO_HBUF_TX_VSYNC, align 4
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @intel_sdvo_write_infoframe(%struct.intel_sdvo* %51, i32 %52, i32 %53, i32* %15, i64 %54)
  store i32 %55, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %56

56:                                               ; preds = %50, %49, %38, %27
  %57 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %57)
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @HDMI_INFOFRAME_SIZE(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @intel_hdmi_infoframe_enable(i64) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @hdmi_infoframe_pack_only(%union.hdmi_infoframe*, i32*, i32) #1

declare dso_local i32 @intel_sdvo_write_infoframe(%struct.intel_sdvo*, i32, i32, i32*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
