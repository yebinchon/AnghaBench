; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_resource_map_pool_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_resource_map_pool_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.resource_pool*, %struct.TYPE_24__, %struct.dc_context* }
%struct.resource_pool = type { i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_22__* (%struct.TYPE_21__*, %struct.resource_pool*, %struct.dc_stream_state*)* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { %struct.pipe_ctx* }
%struct.pipe_ctx = type { %struct.TYPE_32__, %struct.TYPE_29__* }
%struct.TYPE_32__ = type { %struct.TYPE_23__*, %struct.TYPE_22__*, %struct.TYPE_30__*, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_24__ = type { i64 }
%struct.dc_context = type { %struct.dc_bios* }
%struct.dc_bios = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 (%struct.dc_bios*)* }
%struct.dc_state = type { i32, %struct.TYPE_31__*, %struct.dc_stream_state**, %struct.TYPE_21__ }
%struct.TYPE_31__ = type { i32, i32, i32 }
%struct.dc_stream_state = type { i32, %struct.TYPE_28__, i32, i32, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__, i64 }
%struct.TYPE_27__ = type { i64 }

@DC_NO_CONTROLLER_RESOURCE = common dso_local global i32 0, align 4
@DC_NO_STREAM_ENC_RESOURCE = common dso_local global i32 0, align 4
@DC_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Stream %p not found in new ctx!\0A\00", align 1
@DC_ERROR_UNEXPECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @resource_map_pool_resources(%struct.dc* %0, %struct.dc_state* %1, %struct.dc_stream_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dc*, align 8
  %6 = alloca %struct.dc_state*, align 8
  %7 = alloca %struct.dc_stream_state*, align 8
  %8 = alloca %struct.resource_pool*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dc_context*, align 8
  %11 = alloca %struct.pipe_ctx*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dc_bios*, align 8
  store %struct.dc* %0, %struct.dc** %5, align 8
  store %struct.dc_state* %1, %struct.dc_state** %6, align 8
  store %struct.dc_stream_state* %2, %struct.dc_stream_state** %7, align 8
  %14 = load %struct.dc*, %struct.dc** %5, align 8
  %15 = getelementptr inbounds %struct.dc, %struct.dc* %14, i32 0, i32 0
  %16 = load %struct.resource_pool*, %struct.resource_pool** %15, align 8
  store %struct.resource_pool* %16, %struct.resource_pool** %8, align 8
  %17 = load %struct.dc*, %struct.dc** %5, align 8
  %18 = getelementptr inbounds %struct.dc, %struct.dc* %17, i32 0, i32 2
  %19 = load %struct.dc_context*, %struct.dc_context** %18, align 8
  store %struct.dc_context* %19, %struct.dc_context** %10, align 8
  store %struct.pipe_ctx* null, %struct.pipe_ctx** %11, align 8
  store i32 -1, i32* %12, align 4
  %20 = load %struct.dc*, %struct.dc** %5, align 8
  %21 = getelementptr inbounds %struct.dc, %struct.dc* %20, i32 0, i32 2
  %22 = load %struct.dc_context*, %struct.dc_context** %21, align 8
  %23 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %22, i32 0, i32 0
  %24 = load %struct.dc_bios*, %struct.dc_bios** %23, align 8
  store %struct.dc_bios* %24, %struct.dc_bios** %13, align 8
  %25 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %26 = call i32 @calculate_phy_pix_clks(%struct.dc_stream_state* %25)
  %27 = load %struct.dc*, %struct.dc** %5, align 8
  %28 = getelementptr inbounds %struct.dc, %struct.dc* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %3
  %33 = load %struct.dc_bios*, %struct.dc_bios** %13, align 8
  %34 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %33, i32 0, i32 0
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 0
  %37 = load i32 (%struct.dc_bios*)*, i32 (%struct.dc_bios*)** %36, align 8
  %38 = load %struct.dc_bios*, %struct.dc_bios** %13, align 8
  %39 = call i32 %37(%struct.dc_bios* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %32
  %42 = load %struct.dc*, %struct.dc** %5, align 8
  %43 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %44 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %47 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %46, i32 0, i32 3
  %48 = call i64 @dc_validate_seamless_boot_timing(%struct.dc* %42, i32 %45, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %52 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  br label %53

53:                                               ; preds = %50, %41
  br label %54

54:                                               ; preds = %53, %32, %3
  %55 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %56 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %61 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %60, i32 0, i32 3
  %62 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  %63 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %64 = call i32 @acquire_resource_from_hw_enabled_state(%struct.TYPE_21__* %61, %struct.resource_pool* %62, %struct.dc_stream_state* %63)
  store i32 %64, i32* %12, align 4
  br label %65

65:                                               ; preds = %59, %54
  %66 = load i32, i32* %12, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %70 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %69, i32 0, i32 3
  %71 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  %72 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %73 = call i32 @acquire_first_free_pipe(%struct.TYPE_21__* %70, %struct.resource_pool* %71, %struct.dc_stream_state* %72)
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %68, %65
  %75 = load i32, i32* %12, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %89, label %77

77:                                               ; preds = %74
  %78 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %79 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 0
  %81 = load %struct.pipe_ctx*, %struct.pipe_ctx** %80, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %81, i64 %83
  %85 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_30__*, %struct.TYPE_30__** %86, align 8
  %88 = icmp eq %struct.TYPE_30__* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %77, %74
  %90 = load i32, i32* @DC_NO_CONTROLLER_RESOURCE, align 4
  store i32 %90, i32* %4, align 4
  br label %279

91:                                               ; preds = %77
  %92 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %93 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 0
  %95 = load %struct.pipe_ctx*, %struct.pipe_ctx** %94, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %95, i64 %97
  store %struct.pipe_ctx* %98, %struct.pipe_ctx** %11, align 8
  %99 = load %struct.dc*, %struct.dc** %5, align 8
  %100 = getelementptr inbounds %struct.dc, %struct.dc* %99, i32 0, i32 0
  %101 = load %struct.resource_pool*, %struct.resource_pool** %100, align 8
  %102 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %101, i32 0, i32 1
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_22__* (%struct.TYPE_21__*, %struct.resource_pool*, %struct.dc_stream_state*)*, %struct.TYPE_22__* (%struct.TYPE_21__*, %struct.resource_pool*, %struct.dc_stream_state*)** %104, align 8
  %106 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %107 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %106, i32 0, i32 3
  %108 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  %109 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %110 = call %struct.TYPE_22__* %105(%struct.TYPE_21__* %107, %struct.resource_pool* %108, %struct.dc_stream_state* %109)
  %111 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %112 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %112, i32 0, i32 1
  store %struct.TYPE_22__* %110, %struct.TYPE_22__** %113, align 8
  %114 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %115 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %116, align 8
  %118 = icmp ne %struct.TYPE_22__* %117, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %91
  %120 = load i32, i32* @DC_NO_STREAM_ENC_RESOURCE, align 4
  store i32 %120, i32* %4, align 4
  br label %279

121:                                              ; preds = %91
  %122 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %123 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %122, i32 0, i32 3
  %124 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  %125 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %126 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %127, align 8
  %129 = call i32 @update_stream_engine_usage(%struct.TYPE_21__* %123, %struct.resource_pool* %124, %struct.TYPE_22__* %128, i32 1)
  %130 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %131 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %184, label %134

134:                                              ; preds = %121
  %135 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %136 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %135, i32 0, i32 1
  %137 = load %struct.TYPE_29__*, %struct.TYPE_29__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @dc_is_audio_capable_signal(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %184

142:                                              ; preds = %134
  %143 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %144 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %184

148:                                              ; preds = %142
  %149 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %150 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %184

155:                                              ; preds = %148
  %156 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %157 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %156, i32 0, i32 3
  %158 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  %159 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %160 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call %struct.TYPE_23__* @find_first_free_audio(%struct.TYPE_21__* %157, %struct.resource_pool* %158, i32 %164)
  %166 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %167 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %167, i32 0, i32 0
  store %struct.TYPE_23__* %165, %struct.TYPE_23__** %168, align 8
  %169 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %170 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %171, align 8
  %173 = icmp ne %struct.TYPE_23__* %172, null
  br i1 %173, label %174, label %183

174:                                              ; preds = %155
  %175 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %176 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %175, i32 0, i32 3
  %177 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  %178 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %179 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %180, align 8
  %182 = call i32 @update_audio_usage(%struct.TYPE_21__* %176, %struct.resource_pool* %177, %struct.TYPE_23__* %181, i32 1)
  br label %183

183:                                              ; preds = %174, %155
  br label %184

184:                                              ; preds = %183, %148, %142, %134, %121
  %185 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %186 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %185, i32 0, i32 1
  %187 = load %struct.TYPE_29__*, %struct.TYPE_29__** %186, align 8
  %188 = icmp ne %struct.TYPE_29__* %187, null
  br i1 %188, label %189, label %204

189:                                              ; preds = %184
  %190 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %191 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %190, i32 0, i32 1
  %192 = load %struct.TYPE_29__*, %struct.TYPE_29__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i64 @dc_is_embedded_signal(i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %189
  %198 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  %199 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %202 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %202, i32 0, i32 3
  store i32 %200, i32* %203, align 8
  br label %204

204:                                              ; preds = %197, %189, %184
  store i32 0, i32* %9, align 4
  br label %205

205:                                              ; preds = %272, %204
  %206 = load i32, i32* %9, align 4
  %207 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %208 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = icmp slt i32 %206, %209
  br i1 %210, label %211, label %275

211:                                              ; preds = %205
  %212 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %213 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %212, i32 0, i32 2
  %214 = load %struct.dc_stream_state**, %struct.dc_stream_state*** %213, align 8
  %215 = load i32, i32* %9, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.dc_stream_state*, %struct.dc_stream_state** %214, i64 %216
  %218 = load %struct.dc_stream_state*, %struct.dc_stream_state** %217, align 8
  %219 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %220 = icmp eq %struct.dc_stream_state* %218, %219
  br i1 %220, label %221, label %271

221:                                              ; preds = %211
  %222 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %223 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %223, i32 0, i32 2
  %225 = load %struct.TYPE_30__*, %struct.TYPE_30__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %229 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %228, i32 0, i32 1
  %230 = load %struct.TYPE_31__*, %struct.TYPE_31__** %229, align 8
  %231 = load i32, i32* %9, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %233, i32 0, i32 2
  store i32 %227, i32* %234, align 4
  %235 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %236 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %236, i32 0, i32 1
  %238 = load %struct.TYPE_22__*, %struct.TYPE_22__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %242 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %241, i32 0, i32 1
  %243 = load %struct.TYPE_31__*, %struct.TYPE_31__** %242, align 8
  %244 = load i32, i32* %9, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %246, i32 0, i32 1
  store i32 %240, i32* %247, align 4
  %248 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %249 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %249, i32 0, i32 0
  %251 = load %struct.TYPE_23__*, %struct.TYPE_23__** %250, align 8
  %252 = icmp ne %struct.TYPE_23__* %251, null
  br i1 %252, label %253, label %260

253:                                              ; preds = %221
  %254 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %255 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %255, i32 0, i32 0
  %257 = load %struct.TYPE_23__*, %struct.TYPE_23__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  br label %261

260:                                              ; preds = %221
  br label %261

261:                                              ; preds = %260, %253
  %262 = phi i32 [ %259, %253 ], [ -1, %260 ]
  %263 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %264 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %263, i32 0, i32 1
  %265 = load %struct.TYPE_31__*, %struct.TYPE_31__** %264, align 8
  %266 = load i32, i32* %9, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %265, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %268, i32 0, i32 0
  store i32 %262, i32* %269, align 4
  %270 = load i32, i32* @DC_OK, align 4
  store i32 %270, i32* %4, align 4
  br label %279

271:                                              ; preds = %211
  br label %272

272:                                              ; preds = %271
  %273 = load i32, i32* %9, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %9, align 4
  br label %205

275:                                              ; preds = %205
  %276 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %277 = call i32 @DC_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.dc_stream_state* %276)
  %278 = load i32, i32* @DC_ERROR_UNEXPECTED, align 4
  store i32 %278, i32* %4, align 4
  br label %279

279:                                              ; preds = %275, %261, %119, %89
  %280 = load i32, i32* %4, align 4
  ret i32 %280
}

declare dso_local i32 @calculate_phy_pix_clks(%struct.dc_stream_state*) #1

declare dso_local i64 @dc_validate_seamless_boot_timing(%struct.dc*, i32, i32*) #1

declare dso_local i32 @acquire_resource_from_hw_enabled_state(%struct.TYPE_21__*, %struct.resource_pool*, %struct.dc_stream_state*) #1

declare dso_local i32 @acquire_first_free_pipe(%struct.TYPE_21__*, %struct.resource_pool*, %struct.dc_stream_state*) #1

declare dso_local i32 @update_stream_engine_usage(%struct.TYPE_21__*, %struct.resource_pool*, %struct.TYPE_22__*, i32) #1

declare dso_local i64 @dc_is_audio_capable_signal(i32) #1

declare dso_local %struct.TYPE_23__* @find_first_free_audio(%struct.TYPE_21__*, %struct.resource_pool*, i32) #1

declare dso_local i32 @update_audio_usage(%struct.TYPE_21__*, %struct.resource_pool*, %struct.TYPE_23__*, i32) #1

declare dso_local i64 @dc_is_embedded_signal(i32) #1

declare dso_local i32 @DC_ERROR(i8*, %struct.dc_stream_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
