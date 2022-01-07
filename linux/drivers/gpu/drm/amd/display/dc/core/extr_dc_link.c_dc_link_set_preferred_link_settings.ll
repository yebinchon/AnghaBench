; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_dc_link_set_preferred_link_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_dc_link_set_preferred_link_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.pipe_ctx* }
%struct.pipe_ctx = type { %struct.dc_stream_state* }
%struct.dc_stream_state = type { i64, %struct.dc_link* }
%struct.dc_link_settings = type { i64, i64 }
%struct.dc_link = type { i64, i32, %struct.dc_link_settings }

@MAX_PIPES = common dso_local global i32 0, align 4
@LANE_COUNT_UNKNOWN = common dso_local global i64 0, align 8
@LINK_RATE_UNKNOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dc_link_set_preferred_link_settings(%struct.dc* %0, %struct.dc_link_settings* %1, %struct.dc_link* %2) #0 {
  %4 = alloca %struct.dc*, align 8
  %5 = alloca %struct.dc_link_settings*, align 8
  %6 = alloca %struct.dc_link*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pipe_ctx*, align 8
  %9 = alloca %struct.dc_stream_state*, align 8
  %10 = alloca %struct.dc_link_settings, align 8
  store %struct.dc* %0, %struct.dc** %4, align 8
  store %struct.dc_link_settings* %1, %struct.dc_link_settings** %5, align 8
  store %struct.dc_link* %2, %struct.dc_link** %6, align 8
  %11 = load %struct.dc_link_settings*, %struct.dc_link_settings** %5, align 8
  %12 = bitcast %struct.dc_link_settings* %10 to i8*
  %13 = bitcast %struct.dc_link_settings* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 16, i1 false)
  %14 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %15 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %14, i32 0, i32 2
  %16 = bitcast %struct.dc_link_settings* %15 to i8*
  %17 = bitcast %struct.dc_link_settings* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 16, i1 false)
  %18 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %19 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dc_is_dp_signal(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %25 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %3
  br label %98

29:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %69, %29
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @MAX_PIPES, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %72

34:                                               ; preds = %30
  %35 = load %struct.dc*, %struct.dc** %4, align 8
  %36 = getelementptr inbounds %struct.dc, %struct.dc* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.pipe_ctx*, %struct.pipe_ctx** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %40, i64 %42
  store %struct.pipe_ctx* %43, %struct.pipe_ctx** %8, align 8
  %44 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %45 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %44, i32 0, i32 0
  %46 = load %struct.dc_stream_state*, %struct.dc_stream_state** %45, align 8
  %47 = icmp ne %struct.dc_stream_state* %46, null
  br i1 %47, label %48, label %68

48:                                               ; preds = %34
  %49 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %50 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %49, i32 0, i32 0
  %51 = load %struct.dc_stream_state*, %struct.dc_stream_state** %50, align 8
  %52 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %51, i32 0, i32 1
  %53 = load %struct.dc_link*, %struct.dc_link** %52, align 8
  %54 = icmp ne %struct.dc_link* %53, null
  br i1 %54, label %55, label %68

55:                                               ; preds = %48
  %56 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %57 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %56, i32 0, i32 0
  %58 = load %struct.dc_stream_state*, %struct.dc_stream_state** %57, align 8
  %59 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %58, i32 0, i32 1
  %60 = load %struct.dc_link*, %struct.dc_link** %59, align 8
  %61 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %62 = icmp eq %struct.dc_link* %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %65 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %64, i32 0, i32 0
  %66 = load %struct.dc_stream_state*, %struct.dc_stream_state** %65, align 8
  store %struct.dc_stream_state* %66, %struct.dc_stream_state** %9, align 8
  br label %72

67:                                               ; preds = %55
  br label %68

68:                                               ; preds = %67, %48, %34
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %30

72:                                               ; preds = %63, %30
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @MAX_PIPES, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %98

77:                                               ; preds = %72
  %78 = load %struct.dc_stream_state*, %struct.dc_stream_state** %9, align 8
  %79 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %98

83:                                               ; preds = %77
  %84 = load %struct.dc_stream_state*, %struct.dc_stream_state** %9, align 8
  %85 = call i32 @decide_link_settings(%struct.dc_stream_state* %84, %struct.dc_link_settings* %10)
  %86 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %10, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @LANE_COUNT_UNKNOWN, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %10, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @LINK_RATE_UNKNOWN, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %97 = call i32 @dp_retrain_link_dp_test(%struct.dc_link* %96, %struct.dc_link_settings* %10, i32 0)
  br label %98

98:                                               ; preds = %28, %76, %82, %95, %90, %83
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dc_is_dp_signal(i32) #2

declare dso_local i32 @decide_link_settings(%struct.dc_stream_state*, %struct.dc_link_settings*) #2

declare dso_local i32 @dp_retrain_link_dp_test(%struct.dc_link*, %struct.dc_link_settings*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
