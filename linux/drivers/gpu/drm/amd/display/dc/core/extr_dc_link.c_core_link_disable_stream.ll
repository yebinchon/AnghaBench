; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_core_link_disable_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_core_link_disable_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.dc_stream_state*, %struct.TYPE_11__ }
%struct.dc_stream_state = type { i64, %struct.TYPE_14__, i32, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_9__ = type { %struct.dc_link* }
%struct.dc_link = type { i16, i32 }
%struct.TYPE_8__ = type { %struct.dc* }
%struct.dc = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 (%struct.pipe_ctx*)*, i32 (%struct.pipe_ctx*)* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.ext_hdmi_settings = type { i32 }

@SIGNAL_TYPE_DISPLAY_PORT_MST = common dso_local global i64 0, align 8
@EXT_DISPLAY_PATH_CAPS__EXT_CHIP_MASK = common dso_local global i16 0, align 2
@EXT_DISPLAY_PATH_CAPS__HDMI20_TISN65DP159RSBT = common dso_local global i16 0, align 2
@EXT_DISPLAY_PATH_CAPS__HDMI20_PI3EQX1204 = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @core_link_disable_stream(%struct.pipe_ctx* %0) #0 {
  %2 = alloca %struct.pipe_ctx*, align 8
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.dc_stream_state*, align 8
  %5 = alloca %struct.dc_link*, align 8
  %6 = alloca %struct.ext_hdmi_settings, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %2, align 8
  %9 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %9, i32 0, i32 0
  %11 = load %struct.dc_stream_state*, %struct.dc_stream_state** %10, align 8
  %12 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %11, i32 0, i32 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.dc*, %struct.dc** %14, align 8
  store %struct.dc* %15, %struct.dc** %3, align 8
  %16 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %17 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %16, i32 0, i32 0
  %18 = load %struct.dc_stream_state*, %struct.dc_stream_state** %17, align 8
  store %struct.dc_stream_state* %18, %struct.dc_stream_state** %4, align 8
  %19 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %20 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %19, i32 0, i32 3
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load %struct.dc_link*, %struct.dc_link** %22, align 8
  store %struct.dc_link* %23, %struct.dc_link** %5, align 8
  %24 = load %struct.dc*, %struct.dc** %3, align 8
  %25 = getelementptr inbounds %struct.dc, %struct.dc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = load i32 (%struct.pipe_ctx*)*, i32 (%struct.pipe_ctx*)** %26, align 8
  %28 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %29 = call i32 %27(%struct.pipe_ctx* %28)
  %30 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %31 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %30, i32 0, i32 0
  %32 = load %struct.dc_stream_state*, %struct.dc_stream_state** %31, align 8
  %33 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SIGNAL_TYPE_DISPLAY_PORT_MST, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %1
  %38 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %39 = call i32 @deallocate_mst_payload(%struct.pipe_ctx* %38)
  br label %40

40:                                               ; preds = %37, %1
  %41 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %42 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %41, i32 0, i32 0
  %43 = load %struct.dc_stream_state*, %struct.dc_stream_state** %42, align 8
  %44 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @dc_is_hdmi_signal(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %96

48:                                               ; preds = %40
  %49 = bitcast %struct.ext_hdmi_settings* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %49, i8 0, i64 4, i1 false)
  %50 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %51 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %7, align 4
  %56 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %57 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %56, i32 0, i32 0
  %58 = load i16, i16* %57, align 4
  %59 = zext i16 %58 to i32
  %60 = load i16, i16* @EXT_DISPLAY_PATH_CAPS__EXT_CHIP_MASK, align 2
  %61 = zext i16 %60 to i32
  %62 = and i32 %59, %61
  %63 = trunc i32 %62 to i16
  store i16 %63, i16* %8, align 2
  %64 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %65 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dal_ddc_service_write_scdc_data(i32 %66, i32 165000, i32 0)
  %68 = load i16, i16* %8, align 2
  %69 = zext i16 %68 to i32
  %70 = load i16, i16* @EXT_DISPLAY_PATH_CAPS__HDMI20_TISN65DP159RSBT, align 2
  %71 = zext i16 %70 to i32
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %48
  %74 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i64 @get_ext_hdmi_settings(%struct.pipe_ctx* %74, i32 %75, %struct.ext_hdmi_settings* %6)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %80 = call i32 @write_i2c_retimer_setting(%struct.pipe_ctx* %79, i32 0, i32 0, %struct.ext_hdmi_settings* %6)
  br label %84

81:                                               ; preds = %73
  %82 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %83 = call i32 @write_i2c_default_retimer_setting(%struct.pipe_ctx* %82, i32 0, i32 0)
  br label %84

84:                                               ; preds = %81, %78
  br label %95

85:                                               ; preds = %48
  %86 = load i16, i16* %8, align 2
  %87 = zext i16 %86 to i32
  %88 = load i16, i16* @EXT_DISPLAY_PATH_CAPS__HDMI20_PI3EQX1204, align 2
  %89 = zext i16 %88 to i32
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %93 = call i32 @write_i2c_redriver_setting(%struct.pipe_ctx* %92, i32 0)
  br label %94

94:                                               ; preds = %91, %85
  br label %95

95:                                               ; preds = %94, %84
  br label %96

96:                                               ; preds = %95, %40
  %97 = load %struct.dc*, %struct.dc** %3, align 8
  %98 = getelementptr inbounds %struct.dc, %struct.dc* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i32 (%struct.pipe_ctx*)*, i32 (%struct.pipe_ctx*)** %99, align 8
  %101 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %102 = call i32 %100(%struct.pipe_ctx* %101)
  %103 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %104 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %103, i32 0, i32 0
  %105 = load %struct.dc_stream_state*, %struct.dc_stream_state** %104, align 8
  %106 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %109 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %108, i32 0, i32 0
  %110 = load %struct.dc_stream_state*, %struct.dc_stream_state** %109, align 8
  %111 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @disable_link(i32 %107, i64 %112)
  ret void
}

declare dso_local i32 @deallocate_mst_payload(%struct.pipe_ctx*) #1

declare dso_local i64 @dc_is_hdmi_signal(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dal_ddc_service_write_scdc_data(i32, i32, i32) #1

declare dso_local i64 @get_ext_hdmi_settings(%struct.pipe_ctx*, i32, %struct.ext_hdmi_settings*) #1

declare dso_local i32 @write_i2c_retimer_setting(%struct.pipe_ctx*, i32, i32, %struct.ext_hdmi_settings*) #1

declare dso_local i32 @write_i2c_default_retimer_setting(%struct.pipe_ctx*, i32, i32) #1

declare dso_local i32 @write_i2c_redriver_setting(%struct.pipe_ctx*, i32) #1

declare dso_local i32 @disable_link(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
