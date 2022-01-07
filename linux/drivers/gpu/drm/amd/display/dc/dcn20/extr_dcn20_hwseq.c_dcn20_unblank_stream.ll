; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_unblank_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_unblank_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_15__, %struct.dc_stream_state*, %struct.pipe_ctx* }
%struct.TYPE_15__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_19__*, %struct.encoder_unblank_param*)*, i32 (%struct.TYPE_19__*, i32)* }
%struct.encoder_unblank_param = type { i32, %struct.TYPE_11__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.dc_stream_state = type { %struct.TYPE_11__, i32, %struct.dc_link* }
%struct.dc_link = type { %struct.TYPE_18__*, %struct.TYPE_16__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 (%struct.dc_link*, i32)* }
%struct.TYPE_16__ = type { i64 }
%struct.dc_link_settings = type { i32 }

@SIGNAL_TYPE_EDP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dcn20_unblank_stream(%struct.pipe_ctx* %0, %struct.dc_link_settings* %1) #0 {
  %3 = alloca %struct.pipe_ctx*, align 8
  %4 = alloca %struct.dc_link_settings*, align 8
  %5 = alloca %struct.encoder_unblank_param, align 4
  %6 = alloca %struct.dc_stream_state*, align 8
  %7 = alloca %struct.dc_link*, align 8
  %8 = alloca %struct.pipe_ctx*, align 8
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %3, align 8
  store %struct.dc_link_settings* %1, %struct.dc_link_settings** %4, align 8
  %9 = bitcast %struct.encoder_unblank_param* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 16, i1 false)
  %10 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %10, i32 0, i32 1
  %12 = load %struct.dc_stream_state*, %struct.dc_stream_state** %11, align 8
  store %struct.dc_stream_state* %12, %struct.dc_stream_state** %6, align 8
  %13 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %14 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %13, i32 0, i32 2
  %15 = load %struct.dc_link*, %struct.dc_link** %14, align 8
  store %struct.dc_link* %15, %struct.dc_link** %7, align 8
  %16 = getelementptr inbounds %struct.encoder_unblank_param, %struct.encoder_unblank_param* %5, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %17, i32 0, i32 2
  %19 = load %struct.pipe_ctx*, %struct.pipe_ctx** %18, align 8
  store %struct.pipe_ctx* %19, %struct.pipe_ctx** %8, align 8
  br label %20

20:                                               ; preds = %27, %2
  %21 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %22 = icmp ne %struct.pipe_ctx* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.encoder_unblank_param, %struct.encoder_unblank_param* %5, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %23
  %28 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %29 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %28, i32 0, i32 2
  %30 = load %struct.pipe_ctx*, %struct.pipe_ctx** %29, align 8
  store %struct.pipe_ctx* %30, %struct.pipe_ctx** %8, align 8
  br label %20

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.encoder_unblank_param, %struct.encoder_unblank_param* %5, i32 0, i32 1
  %33 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %33, i32 0, i32 1
  %35 = load %struct.dc_stream_state*, %struct.dc_stream_state** %34, align 8
  %36 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %35, i32 0, i32 0
  %37 = bitcast %struct.TYPE_11__* %32 to i8*
  %38 = bitcast %struct.TYPE_11__* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 8 %38, i64 4, i1 false)
  %39 = load %struct.dc_link_settings*, %struct.dc_link_settings** %4, align 8
  %40 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.encoder_unblank_param, %struct.encoder_unblank_param* %5, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %45 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %44, i32 0, i32 1
  %46 = load %struct.dc_stream_state*, %struct.dc_stream_state** %45, align 8
  %47 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @dc_is_dp_signal(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %96

51:                                               ; preds = %31
  %52 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %53 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %52, i32 0, i32 0
  %54 = call i64 @optc1_is_two_pixels_per_containter(%struct.TYPE_11__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.encoder_unblank_param, %struct.encoder_unblank_param* %5, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %58, 1
  br i1 %59, label %60, label %65

60:                                               ; preds = %56, %51
  %61 = getelementptr inbounds %struct.encoder_unblank_param, %struct.encoder_unblank_param* %5, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sdiv i32 %63, 2
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %60, %56
  %66 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %67 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 1
  %73 = load i32 (%struct.TYPE_19__*, i32)*, i32 (%struct.TYPE_19__*, i32)** %72, align 8
  %74 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %75 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %76, align 8
  %78 = getelementptr inbounds %struct.encoder_unblank_param, %struct.encoder_unblank_param* %5, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp sgt i32 %79, 1
  %81 = zext i1 %80 to i32
  %82 = call i32 %73(%struct.TYPE_19__* %77, i32 %81)
  %83 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %84 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load i32 (%struct.TYPE_19__*, %struct.encoder_unblank_param*)*, i32 (%struct.TYPE_19__*, %struct.encoder_unblank_param*)** %89, align 8
  %91 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %92 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %93, align 8
  %95 = call i32 %90(%struct.TYPE_19__* %94, %struct.encoder_unblank_param* %5)
  br label %96

96:                                               ; preds = %65, %31
  %97 = load %struct.dc_link*, %struct.dc_link** %7, align 8
  %98 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %97, i32 0, i32 1
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %98, align 8
  %100 = icmp ne %struct.TYPE_16__* %99, null
  br i1 %100, label %101, label %118

101:                                              ; preds = %96
  %102 = load %struct.dc_link*, %struct.dc_link** %7, align 8
  %103 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %102, i32 0, i32 1
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @SIGNAL_TYPE_EDP, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %101
  %110 = load %struct.dc_link*, %struct.dc_link** %7, align 8
  %111 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %110, i32 0, i32 0
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = load i32 (%struct.dc_link*, i32)*, i32 (%struct.dc_link*, i32)** %114, align 8
  %116 = load %struct.dc_link*, %struct.dc_link** %7, align 8
  %117 = call i32 %115(%struct.dc_link* %116, i32 1)
  br label %118

118:                                              ; preds = %109, %101, %96
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @dc_is_dp_signal(i32) #2

declare dso_local i64 @optc1_is_two_pixels_per_containter(%struct.TYPE_11__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
