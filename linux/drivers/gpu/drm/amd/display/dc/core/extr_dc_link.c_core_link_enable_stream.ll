; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_core_link_enable_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_core_link_enable_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_state = type { i32 }
%struct.pipe_ctx = type { %struct.dc_stream_state*, %struct.TYPE_26__ }
%struct.dc_stream_state = type { i64, i32, i32, %struct.TYPE_39__*, %struct.TYPE_29__, i64, i32, i32, %struct.TYPE_32__* }
%struct.TYPE_39__ = type { i32, i32, i32, %struct.TYPE_36__, %struct.TYPE_31__* }
%struct.TYPE_36__ = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_31__ = type { %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i32 (%struct.TYPE_31__*, i64)* }
%struct.TYPE_29__ = type { i64, %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_32__ = type { i32, %struct.dc* }
%struct.dc = type { %struct.TYPE_24__, %struct.TYPE_38__* }
%struct.TYPE_24__ = type { i32 (%struct.pipe_ctx*, i32*)*, i32 (%struct.pipe_ctx*)*, i32 (%struct.pipe_ctx*)*, i32 (%struct.pipe_ctx*)* }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_27__*, %struct.TYPE_28__*, i32* }
%struct.TYPE_27__ = type { %struct.TYPE_25__*, i32 }
%struct.TYPE_25__ = type { i32 (%struct.TYPE_27__*, i32, i32)* }
%struct.TYPE_28__ = type { %struct.TYPE_37__* }
%struct.TYPE_37__ = type { i32 (%struct.TYPE_28__*, %struct.TYPE_29__*)*, i32 (%struct.TYPE_28__*, %struct.TYPE_29__*, i32)*, i32 (%struct.TYPE_28__*, %struct.TYPE_29__*, i32, i32)*, i32 (%struct.TYPE_28__*, %struct.TYPE_29__*, i32, i32)*, i32 (%struct.TYPE_28__*, i32, i32)* }

@TIMING_3D_FORMAT_NONE = common dso_local global i64 0, align 8
@SIGNAL_TYPE_DVI_DUAL_LINK = common dso_local global i64 0, align 8
@SIGNAL_TYPE_EDP = common dso_local global i64 0, align 8
@DC_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"enabling link %u failed: %d\0A\00", align 1
@DC_FAIL_DP_LINK_TRAINING = common dso_local global i32 0, align 4
@SIGNAL_TYPE_DISPLAY_PORT_MST = common dso_local global i64 0, align 8
@CONTROLLER_DP_TEST_PATTERN_VIDEOMODE = common dso_local global i32 0, align 4
@COLOR_DEPTH_UNDEFINED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @core_link_enable_stream(%struct.dc_state* %0, %struct.pipe_ctx* %1) #0 {
  %3 = alloca %struct.dc_state*, align 8
  %4 = alloca %struct.pipe_ctx*, align 8
  %5 = alloca %struct.dc*, align 8
  %6 = alloca %struct.dc_stream_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dc_state* %0, %struct.dc_state** %3, align 8
  store %struct.pipe_ctx* %1, %struct.pipe_ctx** %4, align 8
  %9 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %9, i32 0, i32 0
  %11 = load %struct.dc_stream_state*, %struct.dc_stream_state** %10, align 8
  %12 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %11, i32 0, i32 8
  %13 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %13, i32 0, i32 1
  %15 = load %struct.dc*, %struct.dc** %14, align 8
  store %struct.dc* %15, %struct.dc** %5, align 8
  %16 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %16, i32 0, i32 0
  %18 = load %struct.dc_stream_state*, %struct.dc_stream_state** %17, align 8
  store %struct.dc_stream_state* %18, %struct.dc_stream_state** %6, align 8
  %19 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %19, i32 0, i32 0
  %21 = load %struct.dc_stream_state*, %struct.dc_stream_state** %20, align 8
  %22 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %21, i32 0, i32 8
  %23 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @DC_LOGGER_INIT(i32 %25)
  %27 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %28 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %27, i32 0, i32 0
  %29 = load %struct.dc_stream_state*, %struct.dc_stream_state** %28, align 8
  %30 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @dc_is_virtual_signal(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %81, label %34

34:                                               ; preds = %2
  %35 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %36 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %35, i32 0, i32 3
  %37 = load %struct.TYPE_39__*, %struct.TYPE_39__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %37, i32 0, i32 4
  %39 = load %struct.TYPE_31__*, %struct.TYPE_31__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_33__*, %struct.TYPE_33__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %41, i32 0, i32 0
  %43 = load i32 (%struct.TYPE_31__*, i64)*, i32 (%struct.TYPE_31__*, i64)** %42, align 8
  %44 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %45 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %44, i32 0, i32 3
  %46 = load %struct.TYPE_39__*, %struct.TYPE_39__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %46, i32 0, i32 4
  %48 = load %struct.TYPE_31__*, %struct.TYPE_31__** %47, align 8
  %49 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %50 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %49, i32 0, i32 0
  %51 = load %struct.dc_stream_state*, %struct.dc_stream_state** %50, align 8
  %52 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 %43(%struct.TYPE_31__* %48, i64 %53)
  %55 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %56 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_37__*, %struct.TYPE_37__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %60, i32 0, i32 4
  %62 = load i32 (%struct.TYPE_28__*, i32, i32)*, i32 (%struct.TYPE_28__*, i32, i32)** %61, align 8
  %63 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %64 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_28__*, %struct.TYPE_28__** %65, align 8
  %67 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %68 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_27__*, %struct.TYPE_27__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %74 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @TIMING_3D_FORMAT_NONE, align 8
  %78 = icmp ne i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 %62(%struct.TYPE_28__* %66, i32 %72, i32 %79)
  br label %81

81:                                               ; preds = %34, %2
  %82 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %83 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %82, i32 0, i32 0
  %84 = load %struct.dc_stream_state*, %struct.dc_stream_state** %83, align 8
  %85 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @dc_is_dp_signal(i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %116

89:                                               ; preds = %81
  %90 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %91 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_28__*, %struct.TYPE_28__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_37__*, %struct.TYPE_37__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %95, i32 0, i32 3
  %97 = load i32 (%struct.TYPE_28__*, %struct.TYPE_29__*, i32, i32)*, i32 (%struct.TYPE_28__*, %struct.TYPE_29__*, i32, i32)** %96, align 8
  %98 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %99 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_28__*, %struct.TYPE_28__** %100, align 8
  %102 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %103 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %102, i32 0, i32 4
  %104 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %105 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %108 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %107, i32 0, i32 3
  %109 = load %struct.TYPE_39__*, %struct.TYPE_39__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 %97(%struct.TYPE_28__* %101, %struct.TYPE_29__* %103, i32 %106, i32 %114)
  br label %116

116:                                              ; preds = %89, %81
  %117 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %118 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %117, i32 0, i32 0
  %119 = load %struct.dc_stream_state*, %struct.dc_stream_state** %118, align 8
  %120 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i64 @dc_is_hdmi_tmds_signal(i64 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %149

124:                                              ; preds = %116
  %125 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %126 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_28__*, %struct.TYPE_28__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_37__*, %struct.TYPE_37__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %130, i32 0, i32 2
  %132 = load i32 (%struct.TYPE_28__*, %struct.TYPE_29__*, i32, i32)*, i32 (%struct.TYPE_28__*, %struct.TYPE_29__*, i32, i32)** %131, align 8
  %133 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %134 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_28__*, %struct.TYPE_28__** %135, align 8
  %137 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %138 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %137, i32 0, i32 4
  %139 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %140 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %143 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = icmp ne i32* %145, null
  %147 = zext i1 %146 to i32
  %148 = call i32 %132(%struct.TYPE_28__* %136, %struct.TYPE_29__* %138, i32 %141, i32 %147)
  br label %149

149:                                              ; preds = %124, %116
  %150 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %151 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %150, i32 0, i32 0
  %152 = load %struct.dc_stream_state*, %struct.dc_stream_state** %151, align 8
  %153 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %152, i32 0, i32 3
  %154 = load %struct.TYPE_39__*, %struct.TYPE_39__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %154, i32 0, i32 0
  store i32 1, i32* %155, align 8
  %156 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %157 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %156, i32 0, i32 0
  %158 = load %struct.dc_stream_state*, %struct.dc_stream_state** %157, align 8
  %159 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = call i64 @dc_is_dvi_signal(i64 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %188

163:                                              ; preds = %149
  %164 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %165 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_28__*, %struct.TYPE_28__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_37__*, %struct.TYPE_37__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %169, i32 0, i32 1
  %171 = load i32 (%struct.TYPE_28__*, %struct.TYPE_29__*, i32)*, i32 (%struct.TYPE_28__*, %struct.TYPE_29__*, i32)** %170, align 8
  %172 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %173 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_28__*, %struct.TYPE_28__** %174, align 8
  %176 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %177 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %176, i32 0, i32 4
  %178 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %179 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %178, i32 0, i32 0
  %180 = load %struct.dc_stream_state*, %struct.dc_stream_state** %179, align 8
  %181 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @SIGNAL_TYPE_DVI_DUAL_LINK, align 8
  %184 = icmp eq i64 %182, %183
  %185 = zext i1 %184 to i64
  %186 = select i1 %184, i32 1, i32 0
  %187 = call i32 %171(%struct.TYPE_28__* %175, %struct.TYPE_29__* %177, i32 %186)
  br label %188

188:                                              ; preds = %163, %149
  %189 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %190 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %189, i32 0, i32 0
  %191 = load %struct.dc_stream_state*, %struct.dc_stream_state** %190, align 8
  %192 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = call i64 @dc_is_lvds_signal(i64 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %212

196:                                              ; preds = %188
  %197 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %198 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_28__*, %struct.TYPE_28__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_37__*, %struct.TYPE_37__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %202, i32 0, i32 0
  %204 = load i32 (%struct.TYPE_28__*, %struct.TYPE_29__*)*, i32 (%struct.TYPE_28__*, %struct.TYPE_29__*)** %203, align 8
  %205 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %206 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_28__*, %struct.TYPE_28__** %207, align 8
  %209 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %210 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %209, i32 0, i32 4
  %211 = call i32 %204(%struct.TYPE_28__* %208, %struct.TYPE_29__* %210)
  br label %212

212:                                              ; preds = %196, %188
  %213 = load %struct.dc*, %struct.dc** %5, align 8
  %214 = getelementptr inbounds %struct.dc, %struct.dc* %213, i32 0, i32 1
  %215 = load %struct.TYPE_38__*, %struct.TYPE_38__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @IS_FPGA_MAXIMUS_DC(i32 %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %377, label %220

220:                                              ; preds = %212
  %221 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %222 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %221, i32 0, i32 0
  %223 = load %struct.dc_stream_state*, %struct.dc_stream_state** %222, align 8
  %224 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  store i32 %225, i32* %8, align 4
  %226 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %227 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %226, i32 0, i32 0
  %228 = load %struct.dc_stream_state*, %struct.dc_stream_state** %227, align 8
  %229 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %228, i32 0, i32 1
  store i32 0, i32* %229, align 8
  %230 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %231 = call i32 @resource_build_info_frame(%struct.pipe_ctx* %230)
  %232 = load %struct.dc*, %struct.dc** %5, align 8
  %233 = getelementptr inbounds %struct.dc, %struct.dc* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %233, i32 0, i32 3
  %235 = load i32 (%struct.pipe_ctx*)*, i32 (%struct.pipe_ctx*)** %234, align 8
  %236 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %237 = call i32 %235(%struct.pipe_ctx* %236)
  %238 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %239 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %238, i32 0, i32 0
  %240 = load %struct.dc_stream_state*, %struct.dc_stream_state** %239, align 8
  %241 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %240, i32 0, i32 5
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %249

244:                                              ; preds = %220
  %245 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %246 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %245, i32 0, i32 0
  %247 = load %struct.dc_stream_state*, %struct.dc_stream_state** %246, align 8
  %248 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %247, i32 0, i32 2
  store i32 0, i32* %248, align 4
  br label %377

249:                                              ; preds = %220
  %250 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %251 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %250, i32 0, i32 0
  %252 = load %struct.dc_stream_state*, %struct.dc_stream_state** %251, align 8
  %253 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @SIGNAL_TYPE_EDP, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %265

257:                                              ; preds = %249
  %258 = load i32, i32* %8, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %257
  %261 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %262 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %261, i32 0, i32 0
  %263 = load %struct.dc_stream_state*, %struct.dc_stream_state** %262, align 8
  %264 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %263, i32 0, i32 2
  store i32 0, i32* %264, align 4
  br label %377

265:                                              ; preds = %257, %249
  %266 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %267 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %266, i32 0, i32 0
  %268 = load %struct.dc_stream_state*, %struct.dc_stream_state** %267, align 8
  %269 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %265
  br label %377

273:                                              ; preds = %265
  %274 = load %struct.dc_state*, %struct.dc_state** %3, align 8
  %275 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %276 = call i32 @enable_link(%struct.dc_state* %274, %struct.pipe_ctx* %275)
  store i32 %276, i32* %7, align 4
  %277 = load i32, i32* %7, align 4
  %278 = load i32, i32* @DC_OK, align 4
  %279 = icmp ne i32 %277, %278
  br i1 %279, label %280, label %304

280:                                              ; preds = %273
  %281 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %282 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %281, i32 0, i32 0
  %283 = load %struct.dc_stream_state*, %struct.dc_stream_state** %282, align 8
  %284 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %283, i32 0, i32 3
  %285 = load %struct.TYPE_39__*, %struct.TYPE_39__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* %7, align 4
  %289 = call i32 @DC_LOG_WARNING(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %287, i32 %288)
  %290 = load i32, i32* %7, align 4
  %291 = load i32, i32* @DC_FAIL_DP_LINK_TRAINING, align 4
  %292 = icmp ne i32 %290, %291
  br i1 %292, label %301, label %293

293:                                              ; preds = %280
  %294 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %295 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %294, i32 0, i32 0
  %296 = load %struct.dc_stream_state*, %struct.dc_stream_state** %295, align 8
  %297 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* @SIGNAL_TYPE_DISPLAY_PORT_MST, align 8
  %300 = icmp eq i64 %298, %299
  br i1 %300, label %301, label %303

301:                                              ; preds = %293, %280
  %302 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %377

303:                                              ; preds = %293
  br label %304

304:                                              ; preds = %303, %273
  %305 = load %struct.dc*, %struct.dc** %5, align 8
  %306 = getelementptr inbounds %struct.dc, %struct.dc* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %306, i32 0, i32 2
  %308 = load i32 (%struct.pipe_ctx*)*, i32 (%struct.pipe_ctx*)** %307, align 8
  %309 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %310 = call i32 %308(%struct.pipe_ctx* %309)
  %311 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %312 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %312, i32 0, i32 0
  %314 = load %struct.TYPE_27__*, %struct.TYPE_27__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %314, i32 0, i32 0
  %316 = load %struct.TYPE_25__*, %struct.TYPE_25__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %316, i32 0, i32 0
  %318 = load i32 (%struct.TYPE_27__*, i32, i32)*, i32 (%struct.TYPE_27__*, i32, i32)** %317, align 8
  %319 = icmp ne i32 (%struct.TYPE_27__*, i32, i32)* %318, null
  br i1 %319, label %320, label %336

320:                                              ; preds = %304
  %321 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %322 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %321, i32 0, i32 1
  %323 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %322, i32 0, i32 0
  %324 = load %struct.TYPE_27__*, %struct.TYPE_27__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %324, i32 0, i32 0
  %326 = load %struct.TYPE_25__*, %struct.TYPE_25__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %326, i32 0, i32 0
  %328 = load i32 (%struct.TYPE_27__*, i32, i32)*, i32 (%struct.TYPE_27__*, i32, i32)** %327, align 8
  %329 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %330 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %330, i32 0, i32 0
  %332 = load %struct.TYPE_27__*, %struct.TYPE_27__** %331, align 8
  %333 = load i32, i32* @CONTROLLER_DP_TEST_PATTERN_VIDEOMODE, align 4
  %334 = load i32, i32* @COLOR_DEPTH_UNDEFINED, align 4
  %335 = call i32 %328(%struct.TYPE_27__* %332, i32 %333, i32 %334)
  br label %336

336:                                              ; preds = %320, %304
  %337 = load %struct.dc*, %struct.dc** %5, align 8
  %338 = getelementptr inbounds %struct.dc, %struct.dc* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %338, i32 0, i32 1
  %340 = load i32 (%struct.pipe_ctx*)*, i32 (%struct.pipe_ctx*)** %339, align 8
  %341 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %342 = call i32 %340(%struct.pipe_ctx* %341)
  %343 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %344 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %343, i32 0, i32 0
  %345 = load %struct.dc_stream_state*, %struct.dc_stream_state** %344, align 8
  %346 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %345, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = load i64, i64* @SIGNAL_TYPE_DISPLAY_PORT_MST, align 8
  %349 = icmp eq i64 %347, %348
  br i1 %349, label %350, label %353

350:                                              ; preds = %336
  %351 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %352 = call i32 @allocate_mst_payload(%struct.pipe_ctx* %351)
  br label %353

353:                                              ; preds = %350, %336
  %354 = load %struct.dc*, %struct.dc** %5, align 8
  %355 = getelementptr inbounds %struct.dc, %struct.dc* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %355, i32 0, i32 0
  %357 = load i32 (%struct.pipe_ctx*, i32*)*, i32 (%struct.pipe_ctx*, i32*)** %356, align 8
  %358 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %359 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %360 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %359, i32 0, i32 0
  %361 = load %struct.dc_stream_state*, %struct.dc_stream_state** %360, align 8
  %362 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %361, i32 0, i32 3
  %363 = load %struct.TYPE_39__*, %struct.TYPE_39__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %363, i32 0, i32 1
  %365 = call i32 %357(%struct.pipe_ctx* %358, i32* %364)
  %366 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %367 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %366, i32 0, i32 0
  %368 = load %struct.dc_stream_state*, %struct.dc_stream_state** %367, align 8
  %369 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = call i64 @dc_is_dp_signal(i64 %370)
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %376

373:                                              ; preds = %353
  %374 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %375 = call i32 @enable_stream_features(%struct.pipe_ctx* %374)
  br label %376

376:                                              ; preds = %373, %353
  br label %377

377:                                              ; preds = %244, %260, %272, %301, %376, %212
  ret void
}

declare dso_local i32 @DC_LOGGER_INIT(i32) #1

declare dso_local i64 @dc_is_virtual_signal(i64) #1

declare dso_local i64 @dc_is_dp_signal(i64) #1

declare dso_local i64 @dc_is_hdmi_tmds_signal(i64) #1

declare dso_local i64 @dc_is_dvi_signal(i64) #1

declare dso_local i64 @dc_is_lvds_signal(i64) #1

declare dso_local i32 @IS_FPGA_MAXIMUS_DC(i32) #1

declare dso_local i32 @resource_build_info_frame(%struct.pipe_ctx*) #1

declare dso_local i32 @enable_link(%struct.dc_state*, %struct.pipe_ctx*) #1

declare dso_local i32 @DC_LOG_WARNING(i8*, i32, i32) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i32 @allocate_mst_payload(%struct.pipe_ctx*) #1

declare dso_local i32 @enable_stream_features(%struct.pipe_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
