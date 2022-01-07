; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_pixel_encoding_setup_vsc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_pixel_encoding_setup_vsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.intel_digital_port = type { i32, i32 (i32*, %struct.intel_crtc_state.0*, i32, %struct.dp_sdp*, i32)* }
%struct.intel_crtc_state.0 = type opaque
%struct.dp_sdp = type opaque
%struct.dp_sdp.1 = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@DP_SDP_VSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dp*, %struct.intel_crtc_state*)* @intel_pixel_encoding_setup_vsc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pixel_encoding_setup_vsc(%struct.intel_dp* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_dp*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.intel_digital_port*, align 8
  %6 = alloca %struct.dp_sdp.1, align 8
  store %struct.intel_dp* %0, %struct.intel_dp** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %7 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %8 = call %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp* %7)
  store %struct.intel_digital_port* %8, %struct.intel_digital_port** %5, align 8
  %9 = bitcast %struct.dp_sdp.1* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 32, i1 false)
  %10 = getelementptr inbounds %struct.dp_sdp.1, %struct.dp_sdp.1* %6, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  store i64 0, i64* %11, align 8
  %12 = getelementptr inbounds %struct.dp_sdp.1, %struct.dp_sdp.1* %6, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 7, i32* %13, align 8
  %14 = getelementptr inbounds %struct.dp_sdp.1, %struct.dp_sdp.1* %6, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i32 5, i32* %15, align 4
  %16 = getelementptr inbounds %struct.dp_sdp.1, %struct.dp_sdp.1* %6, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  store i32 19, i32* %17, align 8
  %18 = getelementptr inbounds %struct.dp_sdp.1, %struct.dp_sdp.1* %6, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 16
  store i32 48, i32* %20, align 4
  %21 = getelementptr inbounds %struct.dp_sdp.1, %struct.dp_sdp.1* %6, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 16
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %27 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %45 [
    i32 24, label %29
    i32 30, label %33
    i32 36, label %37
    i32 48, label %41
  ]

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.dp_sdp.1, %struct.dp_sdp.1* %6, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 17
  store i32 1, i32* %32, align 4
  br label %50

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.dp_sdp.1, %struct.dp_sdp.1* %6, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 17
  store i32 2, i32* %36, align 4
  br label %50

37:                                               ; preds = %2
  %38 = getelementptr inbounds %struct.dp_sdp.1, %struct.dp_sdp.1* %6, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 17
  store i32 3, i32* %40, align 4
  br label %50

41:                                               ; preds = %2
  %42 = getelementptr inbounds %struct.dp_sdp.1, %struct.dp_sdp.1* %6, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 17
  store i32 4, i32* %44, align 4
  br label %50

45:                                               ; preds = %2
  %46 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %47 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @MISSING_CASE(i32 %48)
  br label %50

50:                                               ; preds = %45, %41, %37, %33, %29
  %51 = getelementptr inbounds %struct.dp_sdp.1, %struct.dp_sdp.1* %6, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 17
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, 128
  store i32 %55, i32* %53, align 4
  %56 = getelementptr inbounds %struct.dp_sdp.1, %struct.dp_sdp.1* %6, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 18
  store i32 0, i32* %58, align 4
  %59 = load %struct.intel_digital_port*, %struct.intel_digital_port** %5, align 8
  %60 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %59, i32 0, i32 1
  %61 = load i32 (i32*, %struct.intel_crtc_state.0*, i32, %struct.dp_sdp*, i32)*, i32 (i32*, %struct.intel_crtc_state.0*, i32, %struct.dp_sdp*, i32)** %60, align 8
  %62 = load %struct.intel_digital_port*, %struct.intel_digital_port** %5, align 8
  %63 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %62, i32 0, i32 0
  %64 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %65 = bitcast %struct.intel_crtc_state* %64 to %struct.intel_crtc_state.0*
  %66 = load i32, i32* @DP_SDP_VSC, align 4
  %67 = bitcast %struct.dp_sdp.1* %6 to %struct.dp_sdp*
  %68 = call i32 %61(i32* %63, %struct.intel_crtc_state.0* %65, i32 %66, %struct.dp_sdp* %67, i32 32)
  ret void
}

declare dso_local %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @MISSING_CASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
