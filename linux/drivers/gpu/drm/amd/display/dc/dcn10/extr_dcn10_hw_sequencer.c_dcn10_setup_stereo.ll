; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_setup_stereo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_setup_stereo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_12__, %struct.dc_stream_state* }
%struct.TYPE_12__ = type { %struct.TYPE_13__*, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_13__*, %struct.TYPE_14__*, %struct.crtc_stereo_flags*)* }
%struct.TYPE_14__ = type { i64 }
%struct.crtc_stereo_flags = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_15__*, i32, %struct.TYPE_14__*)* }
%struct.dc_stream_state = type { %struct.TYPE_14__ }
%struct.dc = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@TIMING_3D_FORMAT_SIDEBAND_FA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pipe_ctx*, %struct.dc*)* @dcn10_setup_stereo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn10_setup_stereo(%struct.pipe_ctx* %0, %struct.dc* %1) #0 {
  %3 = alloca %struct.pipe_ctx*, align 8
  %4 = alloca %struct.dc*, align 8
  %5 = alloca %struct.crtc_stereo_flags, align 4
  %6 = alloca %struct.dc_stream_state*, align 8
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %3, align 8
  store %struct.dc* %1, %struct.dc** %4, align 8
  %7 = bitcast %struct.crtc_stereo_flags* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 8, i1 false)
  %8 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %8, i32 0, i32 1
  %10 = load %struct.dc_stream_state*, %struct.dc_stream_state** %9, align 8
  store %struct.dc_stream_state* %10, %struct.dc_stream_state** %6, align 8
  %11 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %12 = call i32 @dcn10_config_stereo_parameters(%struct.dc_stream_state* %11, %struct.crtc_stereo_flags* %5)
  %13 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %14 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TIMING_3D_FORMAT_SIDEBAND_FA, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %2
  %20 = load %struct.dc*, %struct.dc** %4, align 8
  %21 = getelementptr inbounds %struct.dc, %struct.dc* %20, i32 0, i32 0
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dc_set_generic_gpio_for_stereo(i32 1, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %19
  %28 = load %struct.dc*, %struct.dc** %4, align 8
  %29 = getelementptr inbounds %struct.dc, %struct.dc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dc_set_generic_gpio_for_stereo(i32 0, i32 %32)
  br label %34

34:                                               ; preds = %27, %19
  br label %42

35:                                               ; preds = %2
  %36 = load %struct.dc*, %struct.dc** %4, align 8
  %37 = getelementptr inbounds %struct.dc, %struct.dc* %36, i32 0, i32 0
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dc_set_generic_gpio_for_stereo(i32 0, i32 %40)
  br label %42

42:                                               ; preds = %35, %34
  %43 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %44 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_15__*, i32, %struct.TYPE_14__*)*, i32 (%struct.TYPE_15__*, i32, %struct.TYPE_14__*)** %49, align 8
  %51 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %52 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %53, align 8
  %55 = getelementptr inbounds %struct.crtc_stereo_flags, %struct.crtc_stereo_flags* %5, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 1
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 1, i32 0
  %60 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %61 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %60, i32 0, i32 0
  %62 = call i32 %50(%struct.TYPE_15__* %54, i32 %59, %struct.TYPE_14__* %61)
  %63 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %64 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32 (%struct.TYPE_13__*, %struct.TYPE_14__*, %struct.crtc_stereo_flags*)*, i32 (%struct.TYPE_13__*, %struct.TYPE_14__*, %struct.crtc_stereo_flags*)** %69, align 8
  %71 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %72 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %76 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %75, i32 0, i32 0
  %77 = call i32 %70(%struct.TYPE_13__* %74, %struct.TYPE_14__* %76, %struct.crtc_stereo_flags* %5)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dcn10_config_stereo_parameters(%struct.dc_stream_state*, %struct.crtc_stereo_flags*) #2

declare dso_local i32 @dc_set_generic_gpio_for_stereo(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
