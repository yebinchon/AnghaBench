; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_decide_link_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_decide_link_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_stream_state = type { i64, %struct.dc_link*, i32 }
%struct.dc_link = type { i64, %struct.dc_link_settings, %struct.dc_link_settings }
%struct.dc_link_settings = type { i64, i64 }

@LANE_COUNT_UNKNOWN = common dso_local global i64 0, align 8
@LINK_RATE_UNKNOWN = common dso_local global i64 0, align 8
@SIGNAL_TYPE_DISPLAY_PORT_MST = common dso_local global i64 0, align 8
@SIGNAL_TYPE_EDP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decide_link_settings(%struct.dc_stream_state* %0, %struct.dc_link_settings* %1) #0 {
  %3 = alloca %struct.dc_stream_state*, align 8
  %4 = alloca %struct.dc_link_settings*, align 8
  %5 = alloca %struct.dc_link*, align 8
  %6 = alloca i32, align 4
  store %struct.dc_stream_state* %0, %struct.dc_stream_state** %3, align 8
  store %struct.dc_link_settings* %1, %struct.dc_link_settings** %4, align 8
  %7 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %8 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %7, i32 0, i32 2
  %9 = call i32 @dc_bandwidth_in_kbps_from_timing(i32* %8)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %11 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %10, i32 0, i32 1
  %12 = load %struct.dc_link*, %struct.dc_link** %11, align 8
  store %struct.dc_link* %12, %struct.dc_link** %5, align 8
  %13 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %14 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @LANE_COUNT_UNKNOWN, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %2
  %20 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %21 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @LINK_RATE_UNKNOWN, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load %struct.dc_link_settings*, %struct.dc_link_settings** %4, align 8
  %28 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %29 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %28, i32 0, i32 2
  %30 = bitcast %struct.dc_link_settings* %27 to i8*
  %31 = bitcast %struct.dc_link_settings* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 16, i1 false)
  br label %81

32:                                               ; preds = %19, %2
  %33 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %34 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SIGNAL_TYPE_DISPLAY_PORT_MST, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.dc_link_settings*, %struct.dc_link_settings** %4, align 8
  %40 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %41 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %40, i32 0, i32 1
  %42 = bitcast %struct.dc_link_settings* %39 to i8*
  %43 = bitcast %struct.dc_link_settings* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 16, i1 false)
  br label %81

44:                                               ; preds = %32
  %45 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %46 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SIGNAL_TYPE_EDP, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %52 = load %struct.dc_link_settings*, %struct.dc_link_settings** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i64 @decide_edp_link_settings(%struct.dc_link* %51, %struct.dc_link_settings* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %81

57:                                               ; preds = %50
  br label %66

58:                                               ; preds = %44
  %59 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %60 = load %struct.dc_link_settings*, %struct.dc_link_settings** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i64 @decide_dp_link_settings(%struct.dc_link* %59, %struct.dc_link_settings* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %81

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65, %57
  %67 = call i32 (...) @BREAK_TO_DEBUGGER()
  %68 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %69 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @LANE_COUNT_UNKNOWN, align 8
  %73 = icmp ne i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @ASSERT(i32 %74)
  %76 = load %struct.dc_link_settings*, %struct.dc_link_settings** %4, align 8
  %77 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %78 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %77, i32 0, i32 1
  %79 = bitcast %struct.dc_link_settings* %76 to i8*
  %80 = bitcast %struct.dc_link_settings* %78 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %79, i8* align 8 %80, i64 16, i1 false)
  br label %81

81:                                               ; preds = %66, %64, %56, %38, %26
  ret void
}

declare dso_local i32 @dc_bandwidth_in_kbps_from_timing(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @decide_edp_link_settings(%struct.dc_link*, %struct.dc_link_settings*, i32) #1

declare dso_local i64 @decide_dp_link_settings(%struct.dc_link*, %struct.dc_link_settings*, i32) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
