; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_write_infoframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_write_infoframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%union.hdmi_infoframe = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.intel_digital_port = type { i32 (%struct.intel_encoder*, %struct.intel_crtc_state.0*, i32, i64*, i64)* }
%struct.intel_crtc_state.0 = type opaque

@VIDEO_DIP_DATA_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*, i32, %union.hdmi_infoframe*)* @intel_write_infoframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_write_infoframe(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, i32 %2, %union.hdmi_infoframe* %3) #0 {
  %5 = alloca %struct.intel_encoder*, align 8
  %6 = alloca %struct.intel_crtc_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.hdmi_infoframe*, align 8
  %9 = alloca %struct.intel_digital_port*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %5, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %6, align 8
  store i32 %2, i32* %7, align 4
  store %union.hdmi_infoframe* %3, %union.hdmi_infoframe** %8, align 8
  %14 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %15 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %14, i32 0, i32 0
  %16 = call %struct.intel_digital_port* @enc_to_dig_port(i32* %15)
  store %struct.intel_digital_port* %16, %struct.intel_digital_port** %9, align 8
  %17 = load i32, i32* @VIDEO_DIP_DATA_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i64, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %22 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @intel_hdmi_infoframe_enable(i32 %25)
  %27 = and i32 %24, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  store i32 1, i32* %13, align 4
  br label %70

30:                                               ; preds = %4
  %31 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %8, align 8
  %32 = bitcast %union.hdmi_infoframe* %31 to %struct.TYPE_4__*
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @WARN_ON(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  store i32 1, i32* %13, align 4
  br label %70

41:                                               ; preds = %30
  %42 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %8, align 8
  %43 = getelementptr inbounds i64, i64* %20, i64 1
  %44 = mul nuw i64 8, %18
  %45 = sub i64 %44, 1
  %46 = trunc i64 %45 to i32
  %47 = call i64 @hdmi_infoframe_pack_only(%union.hdmi_infoframe* %42, i64* %43, i32 %46)
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %12, align 8
  %49 = icmp slt i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i64 @WARN_ON(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  store i32 1, i32* %13, align 4
  br label %70

54:                                               ; preds = %41
  %55 = getelementptr inbounds i64, i64* %20, i64 0
  %56 = getelementptr inbounds i64, i64* %20, i64 1
  %57 = call i32 @memmove(i64* %55, i64* %56, i32 3)
  %58 = getelementptr inbounds i64, i64* %20, i64 3
  store i64 0, i64* %58, align 8
  %59 = load i64, i64* %12, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %12, align 8
  %61 = load %struct.intel_digital_port*, %struct.intel_digital_port** %9, align 8
  %62 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %61, i32 0, i32 0
  %63 = load i32 (%struct.intel_encoder*, %struct.intel_crtc_state.0*, i32, i64*, i64)*, i32 (%struct.intel_encoder*, %struct.intel_crtc_state.0*, i32, i64*, i64)** %62, align 8
  %64 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %65 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %66 = bitcast %struct.intel_crtc_state* %65 to %struct.intel_crtc_state.0*
  %67 = load i32, i32* %7, align 4
  %68 = load i64, i64* %12, align 8
  %69 = call i32 %63(%struct.intel_encoder* %64, %struct.intel_crtc_state.0* %66, i32 %67, i64* %20, i64 %68)
  store i32 0, i32* %13, align 4
  br label %70

70:                                               ; preds = %54, %53, %40, %29
  %71 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %71)
  %72 = load i32, i32* %13, align 4
  switch i32 %72, label %74 [
    i32 0, label %73
    i32 1, label %73
  ]

73:                                               ; preds = %70, %70
  ret void

74:                                               ; preds = %70
  unreachable
}

declare dso_local %struct.intel_digital_port* @enc_to_dig_port(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @intel_hdmi_infoframe_enable(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @hdmi_infoframe_pack_only(%union.hdmi_infoframe*, i64*, i32) #1

declare dso_local i32 @memmove(i64*, i64*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
