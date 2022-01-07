; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_enable_link_hdmi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_enable_link_hdmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.dc_stream_state*, %struct.TYPE_13__*, %struct.TYPE_9__ }
%struct.dc_stream_state = type { i32, i32, %struct.TYPE_11__, %struct.dc_link* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.dc_link = type { i16, i32, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_14__*, i32, i32, i32, i32)* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.ext_hdmi_settings = type { i32 }

@EXT_DISPLAY_PATH_CAPS__EXT_CHIP_MASK = common dso_local global i16 0, align 2
@EXT_DISPLAY_PATH_CAPS__HDMI20_TISN65DP159RSBT = common dso_local global i16 0, align 2
@EXT_DISPLAY_PATH_CAPS__HDMI20_PI3EQX1204 = common dso_local global i16 0, align 2
@PIXEL_ENCODING_YCBCR422 = common dso_local global i64 0, align 8
@COLOR_DEPTH_888 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pipe_ctx*)* @enable_link_hdmi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_link_hdmi(%struct.pipe_ctx* %0) #0 {
  %2 = alloca %struct.pipe_ctx*, align 8
  %3 = alloca %struct.dc_stream_state*, align 8
  %4 = alloca %struct.dc_link*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext_hdmi_settings, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %2, align 8
  %11 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %12 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %11, i32 0, i32 0
  %13 = load %struct.dc_stream_state*, %struct.dc_stream_state** %12, align 8
  store %struct.dc_stream_state* %13, %struct.dc_stream_state** %3, align 8
  %14 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %15 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %14, i32 0, i32 3
  %16 = load %struct.dc_link*, %struct.dc_link** %15, align 8
  store %struct.dc_link* %16, %struct.dc_link** %4, align 8
  %17 = bitcast %struct.ext_hdmi_settings* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 4, i1 false)
  store i32 0, i32* %8, align 4
  %18 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %19 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 640
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %25 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 480
  br label %29

29:                                               ; preds = %23, %1
  %30 = phi i1 [ false, %1 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %9, align 4
  %32 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %33 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %38 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = sdiv i32 %40, 10
  %42 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %43 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %36, %29
  %45 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %46 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sgt i32 %47, 340000
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 1, i32* %8, align 4
  br label %50

50:                                               ; preds = %49, %44
  %51 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %52 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %51, i32 0, i32 0
  %53 = load %struct.dc_stream_state*, %struct.dc_stream_state** %52, align 8
  %54 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @dc_is_hdmi_signal(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %110

58:                                               ; preds = %50
  %59 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %60 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %59, i32 0, i32 0
  %61 = load %struct.dc_stream_state*, %struct.dc_stream_state** %60, align 8
  %62 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %61, i32 0, i32 3
  %63 = load %struct.dc_link*, %struct.dc_link** %62, align 8
  %64 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %63, i32 0, i32 0
  %65 = load i16, i16* %64, align 8
  %66 = zext i16 %65 to i32
  %67 = load i16, i16* @EXT_DISPLAY_PATH_CAPS__EXT_CHIP_MASK, align 2
  %68 = zext i16 %67 to i32
  %69 = and i32 %66, %68
  %70 = trunc i32 %69 to i16
  store i16 %70, i16* %10, align 2
  %71 = load i16, i16* %10, align 2
  %72 = zext i16 %71 to i32
  %73 = load i16, i16* @EXT_DISPLAY_PATH_CAPS__HDMI20_TISN65DP159RSBT, align 2
  %74 = zext i16 %73 to i32
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %98

76:                                               ; preds = %58
  %77 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %78 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %6, align 4
  %83 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i64 @get_ext_hdmi_settings(%struct.pipe_ctx* %83, i32 %84, %struct.ext_hdmi_settings* %7)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %76
  %88 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @write_i2c_retimer_setting(%struct.pipe_ctx* %88, i32 %89, i32 %90, %struct.ext_hdmi_settings* %7)
  br label %97

92:                                               ; preds = %76
  %93 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @write_i2c_default_retimer_setting(%struct.pipe_ctx* %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %92, %87
  br label %109

98:                                               ; preds = %58
  %99 = load i16, i16* %10, align 2
  %100 = zext i16 %99 to i32
  %101 = load i16, i16* @EXT_DISPLAY_PATH_CAPS__HDMI20_PI3EQX1204, align 2
  %102 = zext i16 %101 to i32
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %98
  %105 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @write_i2c_redriver_setting(%struct.pipe_ctx* %105, i32 %106)
  br label %108

108:                                              ; preds = %104, %98
  br label %109

109:                                              ; preds = %108, %97
  br label %110

110:                                              ; preds = %109, %50
  %111 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %112 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %111, i32 0, i32 0
  %113 = load %struct.dc_stream_state*, %struct.dc_stream_state** %112, align 8
  %114 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @dc_is_hdmi_signal(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %133

118:                                              ; preds = %110
  %119 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %120 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %119, i32 0, i32 3
  %121 = load %struct.dc_link*, %struct.dc_link** %120, align 8
  %122 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %125 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %128 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 5
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @dal_ddc_service_write_scdc_data(i32 %123, i32 %126, i32 %131)
  br label %133

133:                                              ; preds = %118, %110
  %134 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %135 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %134, i32 0, i32 3
  %136 = load %struct.dc_link*, %struct.dc_link** %135, align 8
  %137 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %136, i32 0, i32 3
  %138 = call i32 @memset(i32* %137, i32 0, i32 4)
  %139 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %140 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %5, align 4
  %143 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %144 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @PIXEL_ENCODING_YCBCR422, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %133
  %150 = load i32, i32* @COLOR_DEPTH_888, align 4
  store i32 %150, i32* %5, align 4
  br label %151

151:                                              ; preds = %149, %133
  %152 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %153 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %152, i32 0, i32 2
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = load i32 (%struct.TYPE_14__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_14__*, i32, i32, i32, i32)** %157, align 8
  %159 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %160 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %159, i32 0, i32 2
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %160, align 8
  %162 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %163 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %162, i32 0, i32 1
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %5, align 4
  %168 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %169 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %168, i32 0, i32 0
  %170 = load %struct.dc_stream_state*, %struct.dc_stream_state** %169, align 8
  %171 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %174 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 %158(%struct.TYPE_14__* %161, i32 %166, i32 %167, i32 %172, i32 %175)
  %177 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %178 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %177, i32 0, i32 0
  %179 = load %struct.dc_stream_state*, %struct.dc_stream_state** %178, align 8
  %180 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i64 @dc_is_hdmi_signal(i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %151
  %185 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %186 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @dal_ddc_service_read_scdc_data(i32 %187)
  br label %189

189:                                              ; preds = %184, %151
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @dc_is_hdmi_signal(i32) #2

declare dso_local i64 @get_ext_hdmi_settings(%struct.pipe_ctx*, i32, %struct.ext_hdmi_settings*) #2

declare dso_local i32 @write_i2c_retimer_setting(%struct.pipe_ctx*, i32, i32, %struct.ext_hdmi_settings*) #2

declare dso_local i32 @write_i2c_default_retimer_setting(%struct.pipe_ctx*, i32, i32) #2

declare dso_local i32 @write_i2c_redriver_setting(%struct.pipe_ctx*, i32) #2

declare dso_local i32 @dal_ddc_service_write_scdc_data(i32, i32, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @dal_ddc_service_read_scdc_data(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
