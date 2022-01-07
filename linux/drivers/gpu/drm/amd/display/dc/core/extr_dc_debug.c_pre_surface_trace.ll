; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_debug.c_pre_surface_trace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_debug.c_pre_surface_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }
%struct.dc_plane_state = type { %struct.TYPE_21__, i32, i32, i32, %struct.TYPE_19__, i32, %struct.TYPE_17__, %struct.TYPE_30__, %struct.TYPE_29__, %struct.TYPE_28__, %struct.TYPE_27__, %struct.TYPE_26__, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__, %struct.TYPE_18__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_30__ = type { i32, i32, i32, i32 }
%struct.TYPE_29__ = type { i32, i32, i32, i32 }
%struct.TYPE_28__ = type { i32, i32, i32, i32 }
%struct.TYPE_27__ = type { i32, i32, i32, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__, %struct.TYPE_23__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"Planes %d:\0A\00", align 1
@.str.1 = private unnamed_addr constant [373 x i8] c"plane_state->visible = %d;\0Aplane_state->flip_immediate = %d;\0Aplane_state->address.type = %d;\0Aplane_state->address.grph.addr.quad_part = 0x%llX;\0Aplane_state->address.grph.meta_addr.quad_part = 0x%llX;\0Aplane_state->scaling_quality.h_taps = %d;\0Aplane_state->scaling_quality.v_taps = %d;\0Aplane_state->scaling_quality.h_taps_c = %d;\0Aplane_state->scaling_quality.v_taps_c = %d;\0A\00", align 1
@.str.2 = private unnamed_addr constant [392 x i8] c"plane_state->src_rect.x = %d;\0Aplane_state->src_rect.y = %d;\0Aplane_state->src_rect.width = %d;\0Aplane_state->src_rect.height = %d;\0Aplane_state->dst_rect.x = %d;\0Aplane_state->dst_rect.y = %d;\0Aplane_state->dst_rect.width = %d;\0Aplane_state->dst_rect.height = %d;\0Aplane_state->clip_rect.x = %d;\0Aplane_state->clip_rect.y = %d;\0Aplane_state->clip_rect.width = %d;\0Aplane_state->clip_rect.height = %d;\0A\00", align 1
@.str.3 = private unnamed_addr constant [234 x i8] c"plane_state->plane_size.surface_size.x = %d;\0Aplane_state->plane_size.surface_size.y = %d;\0Aplane_state->plane_size.surface_size.width = %d;\0Aplane_state->plane_size.surface_size.height = %d;\0Aplane_state->plane_size.surface_pitch = %d;\0A\00", align 1
@.str.4 = private unnamed_addr constant [529 x i8] c"plane_state->tiling_info.gfx8.num_banks = %d;\0Aplane_state->tiling_info.gfx8.bank_width = %d;\0Aplane_state->tiling_info.gfx8.bank_width_c = %d;\0Aplane_state->tiling_info.gfx8.bank_height = %d;\0Aplane_state->tiling_info.gfx8.bank_height_c = %d;\0Aplane_state->tiling_info.gfx8.tile_aspect = %d;\0Aplane_state->tiling_info.gfx8.tile_aspect_c = %d;\0Aplane_state->tiling_info.gfx8.tile_split = %d;\0Aplane_state->tiling_info.gfx8.tile_split_c = %d;\0Aplane_state->tiling_info.gfx8.tile_mode = %d;\0Aplane_state->tiling_info.gfx8.tile_mode_c = %d;\0A\00", align 1
@.str.5 = private unnamed_addr constant [244 x i8] c"plane_state->tiling_info.gfx8.pipe_config = %d;\0Aplane_state->tiling_info.gfx8.array_mode = %d;\0Aplane_state->color_space = %d;\0Aplane_state->dcc.enable = %d;\0Aplane_state->format = %d;\0Aplane_state->rotation = %d;\0Aplane_state->stereo_format = %d;\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"plane_state->tiling_info.gfx9.swizzle = %d;\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pre_surface_trace(%struct.dc* %0, %struct.dc_plane_state** %1, i32 %2) #0 {
  %4 = alloca %struct.dc*, align 8
  %5 = alloca %struct.dc_plane_state**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dc_plane_state*, align 8
  store %struct.dc* %0, %struct.dc** %4, align 8
  store %struct.dc_plane_state** %1, %struct.dc_plane_state*** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.dc*, %struct.dc** %4, align 8
  %10 = getelementptr inbounds %struct.dc, %struct.dc* %9, i32 0, i32 0
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @DC_LOGGER_INIT(i32 %13)
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %230, %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %233

19:                                               ; preds = %15
  %20 = load %struct.dc_plane_state**, %struct.dc_plane_state*** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.dc_plane_state*, %struct.dc_plane_state** %20, i64 %22
  %24 = load %struct.dc_plane_state*, %struct.dc_plane_state** %23, align 8
  store %struct.dc_plane_state* %24, %struct.dc_plane_state** %8, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 (i8*, ...) @SURFACE_TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %28 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %27, i32 0, i32 13
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %31 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %30, i32 0, i32 12
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %34 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %33, i32 0, i32 11
  %35 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %38 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %37, i32 0, i32 11
  %39 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %44 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %43, i32 0, i32 11
  %45 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %50 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %49, i32 0, i32 10
  %51 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %54 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %53, i32 0, i32 10
  %55 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %58 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %57, i32 0, i32 10
  %59 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %62 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %61, i32 0, i32 10
  %63 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i8*, ...) @SURFACE_TRACE(i8* getelementptr inbounds ([373 x i8], [373 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %32, i32 %36, i32 %42, i32 %48, i32 %52, i32 %56, i32 %60, i32 %64)
  %66 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %67 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %66, i32 0, i32 9
  %68 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %71 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %70, i32 0, i32 9
  %72 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %75 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %74, i32 0, i32 9
  %76 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %79 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %78, i32 0, i32 9
  %80 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %83 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %82, i32 0, i32 8
  %84 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %87 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %86, i32 0, i32 8
  %88 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %91 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %90, i32 0, i32 8
  %92 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %95 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %94, i32 0, i32 8
  %96 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %99 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %98, i32 0, i32 7
  %100 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %103 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %102, i32 0, i32 7
  %104 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %107 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %106, i32 0, i32 7
  %108 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %111 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %110, i32 0, i32 7
  %112 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i8*, ...) @SURFACE_TRACE(i8* getelementptr inbounds ([392 x i8], [392 x i8]* @.str.2, i64 0, i64 0), i32 %69, i32 %73, i32 %77, i32 %81, i32 %85, i32 %89, i32 %93, i32 %97, i32 %101, i32 %105, i32 %109, i32 %113)
  %115 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %116 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %115, i32 0, i32 6
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %121 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %120, i32 0, i32 6
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %126 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %125, i32 0, i32 6
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %131 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %130, i32 0, i32 6
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %136 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %135, i32 0, i32 6
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (i8*, ...) @SURFACE_TRACE(i8* getelementptr inbounds ([234 x i8], [234 x i8]* @.str.3, i64 0, i64 0), i32 %119, i32 %124, i32 %129, i32 %134, i32 %138)
  %140 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %141 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 12
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %146 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 11
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %151 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 10
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %156 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 9
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %161 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 8
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %166 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 7
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %171 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %176 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %181 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %186 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %191 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = call i32 (i8*, ...) @SURFACE_TRACE(i8* getelementptr inbounds ([529 x i8], [529 x i8]* @.str.4, i64 0, i64 0), i32 %144, i32 %149, i32 %154, i32 %159, i32 %164, i32 %169, i32 %174, i32 %179, i32 %184, i32 %189, i32 %194)
  %196 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %197 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %202 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %207 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %210 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %209, i32 0, i32 4
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %214 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %217 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %220 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = call i32 (i8*, ...) @SURFACE_TRACE(i8* getelementptr inbounds ([244 x i8], [244 x i8]* @.str.5, i64 0, i64 0), i32 %200, i32 %205, i32 %208, i32 %212, i32 %215, i32 %218, i32 %221)
  %223 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %224 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = call i32 (i8*, ...) @SURFACE_TRACE(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %227)
  %229 = call i32 (i8*, ...) @SURFACE_TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %230

230:                                              ; preds = %19
  %231 = load i32, i32* %7, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %7, align 4
  br label %15

233:                                              ; preds = %15
  %234 = call i32 (i8*, ...) @SURFACE_TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DC_LOGGER_INIT(i32) #1

declare dso_local i32 @SURFACE_TRACE(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
