; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_debug.c_update_surface_trace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_debug.c_update_surface_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32 }
%struct.dc_surface_update = type { %struct.TYPE_25__*, %struct.TYPE_20__*, %struct.TYPE_31__* }
%struct.TYPE_25__ = type { %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__ }
%struct.TYPE_24__ = type { i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__, i32, i32, i32, i32, %struct.TYPE_33__, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_34__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_34__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_33__ = type { %struct.TYPE_32__, i32 }
%struct.TYPE_32__ = type { i32, i32, i32, i32 }
%struct.TYPE_31__ = type { i32, %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.TYPE_29__, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__, %struct.TYPE_27__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"Update %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [166 x i8] c"flip_addr->address.type = %d;\0Aflip_addr->address.grph.addr.quad_part = 0x%llX;\0Aflip_addr->address.grph.meta_addr.quad_part = 0x%llX;\0Aflip_addr->flip_immediate = %d;\0A\00", align 1
@.str.2 = private unnamed_addr constant [343 x i8] c"plane_info->color_space = %d;\0Aplane_info->format = %d;\0Aplane_info->plane_size.surface_pitch = %d;\0Aplane_info->plane_size.surface_size.height = %d;\0Aplane_info->plane_size.surface_size.width = %d;\0Aplane_info->plane_size.surface_size.x = %d;\0Aplane_info->plane_size.surface_size.y = %d;\0Aplane_info->rotation = %d;\0Aplane_info->stereo_format = %d;\0A\00", align 1
@.str.3 = private unnamed_addr constant [518 x i8] c"plane_info->tiling_info.gfx8.num_banks = %d;\0Aplane_info->tiling_info.gfx8.bank_width = %d;\0Aplane_info->tiling_info.gfx8.bank_width_c = %d;\0Aplane_info->tiling_info.gfx8.bank_height = %d;\0Aplane_info->tiling_info.gfx8.bank_height_c = %d;\0Aplane_info->tiling_info.gfx8.tile_aspect = %d;\0Aplane_info->tiling_info.gfx8.tile_aspect_c = %d;\0Aplane_info->tiling_info.gfx8.tile_split = %d;\0Aplane_info->tiling_info.gfx8.tile_split_c = %d;\0Aplane_info->tiling_info.gfx8.tile_mode = %d;\0Aplane_info->tiling_info.gfx8.tile_mode_c = %d;\0A\00", align 1
@.str.4 = private unnamed_addr constant [154 x i8] c"plane_info->tiling_info.gfx8.pipe_config = %d;\0Aplane_info->tiling_info.gfx8.array_mode = %d;\0Aplane_info->visible = %d;\0Aplane_info->per_pixel_alpha = %d;\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"surface->tiling_info.gfx9.swizzle = %d;\0A\00", align 1
@.str.6 = private unnamed_addr constant [580 x i8] c"scaling_info->src_rect.x = %d;\0Ascaling_info->src_rect.y = %d;\0Ascaling_info->src_rect.width = %d;\0Ascaling_info->src_rect.height = %d;\0Ascaling_info->dst_rect.x = %d;\0Ascaling_info->dst_rect.y = %d;\0Ascaling_info->dst_rect.width = %d;\0Ascaling_info->dst_rect.height = %d;\0Ascaling_info->clip_rect.x = %d;\0Ascaling_info->clip_rect.y = %d;\0Ascaling_info->clip_rect.width = %d;\0Ascaling_info->clip_rect.height = %d;\0Ascaling_info->scaling_quality.h_taps = %d;\0Ascaling_info->scaling_quality.v_taps = %d;\0Ascaling_info->scaling_quality.h_taps_c = %d;\0Ascaling_info->scaling_quality.v_taps_c = %d;\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_surface_trace(%struct.dc* %0, %struct.dc_surface_update* %1, i32 %2) #0 {
  %4 = alloca %struct.dc*, align 8
  %5 = alloca %struct.dc_surface_update*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dc_surface_update*, align 8
  store %struct.dc* %0, %struct.dc** %4, align 8
  store %struct.dc_surface_update* %1, %struct.dc_surface_update** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.dc*, %struct.dc** %4, align 8
  %10 = getelementptr inbounds %struct.dc, %struct.dc* %9, i32 0, i32 0
  %11 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @DC_LOGGER_INIT(i32 %13)
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %336, %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %339

19:                                               ; preds = %15
  %20 = load %struct.dc_surface_update*, %struct.dc_surface_update** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %20, i64 %22
  store %struct.dc_surface_update* %23, %struct.dc_surface_update** %8, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 (i8*, ...) @SURFACE_TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %27 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %26, i32 0, i32 2
  %28 = load %struct.TYPE_31__*, %struct.TYPE_31__** %27, align 8
  %29 = icmp ne %struct.TYPE_31__* %28, null
  br i1 %29, label %30, label %59

30:                                               ; preds = %19
  %31 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %32 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %31, i32 0, i32 2
  %33 = load %struct.TYPE_31__*, %struct.TYPE_31__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %38 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %37, i32 0, i32 2
  %39 = load %struct.TYPE_31__*, %struct.TYPE_31__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %46 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %45, i32 0, i32 2
  %47 = load %struct.TYPE_31__*, %struct.TYPE_31__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %54 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %53, i32 0, i32 2
  %55 = load %struct.TYPE_31__*, %struct.TYPE_31__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i8*, ...) @SURFACE_TRACE(i8* getelementptr inbounds ([166 x i8], [166 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %44, i32 %52, i32 %57)
  br label %59

59:                                               ; preds = %30, %19
  %60 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %61 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %60, i32 0, i32 1
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %61, align 8
  %63 = icmp ne %struct.TYPE_20__* %62, null
  br i1 %63, label %64, label %231

64:                                               ; preds = %59
  %65 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %66 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %65, i32 0, i32 1
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %71 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %70, i32 0, i32 1
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %76 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %75, i32 0, i32 1
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %82 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %81, i32 0, i32 1
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %89 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %88, i32 0, i32 1
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %96 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %95, i32 0, i32 1
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %103 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %102, i32 0, i32 1
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %110 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %109, i32 0, i32 1
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %115 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %114, i32 0, i32 1
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i8*, ...) @SURFACE_TRACE(i8* getelementptr inbounds ([343 x i8], [343 x i8]* @.str.2, i64 0, i64 0), i32 %69, i32 %74, i32 %80, i32 %87, i32 %94, i32 %101, i32 %108, i32 %113, i32 %118)
  %120 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %121 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %120, i32 0, i32 1
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %124, i32 0, i32 12
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %128 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %127, i32 0, i32 1
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %131, i32 0, i32 11
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %135 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %134, i32 0, i32 1
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %138, i32 0, i32 10
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %142 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %141, i32 0, i32 1
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %145, i32 0, i32 9
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %149 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %148, i32 0, i32 1
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %152, i32 0, i32 8
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %156 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %155, i32 0, i32 1
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %159, i32 0, i32 7
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %163 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %162, i32 0, i32 1
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %170 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %169, i32 0, i32 1
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %177 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %176, i32 0, i32 1
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %184 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %183, i32 0, i32 1
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %191 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %190, i32 0, i32 1
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = call i32 (i8*, ...) @SURFACE_TRACE(i8* getelementptr inbounds ([518 x i8], [518 x i8]* @.str.3, i64 0, i64 0), i32 %126, i32 %133, i32 %140, i32 %147, i32 %154, i32 %161, i32 %168, i32 %175, i32 %182, i32 %189, i32 %196)
  %198 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %199 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %198, i32 0, i32 1
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %206 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %205, i32 0, i32 1
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %213 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %212, i32 0, i32 1
  %214 = load %struct.TYPE_20__*, %struct.TYPE_20__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %218 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %217, i32 0, i32 1
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = call i32 (i8*, ...) @SURFACE_TRACE(i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str.4, i64 0, i64 0), i32 %204, i32 %211, i32 %216, i32 %221)
  %223 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %224 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %223, i32 0, i32 1
  %225 = load %struct.TYPE_20__*, %struct.TYPE_20__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = call i32 (i8*, ...) @SURFACE_TRACE(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %229)
  br label %231

231:                                              ; preds = %64, %59
  %232 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %233 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %232, i32 0, i32 0
  %234 = load %struct.TYPE_25__*, %struct.TYPE_25__** %233, align 8
  %235 = icmp ne %struct.TYPE_25__* %234, null
  br i1 %235, label %236, label %334

236:                                              ; preds = %231
  %237 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %238 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %237, i32 0, i32 0
  %239 = load %struct.TYPE_25__*, %struct.TYPE_25__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %244 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %243, i32 0, i32 0
  %245 = load %struct.TYPE_25__*, %struct.TYPE_25__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %245, i32 0, i32 3
  %247 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %250 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %249, i32 0, i32 0
  %251 = load %struct.TYPE_25__*, %struct.TYPE_25__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %251, i32 0, i32 3
  %253 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %256 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %255, i32 0, i32 0
  %257 = load %struct.TYPE_25__*, %struct.TYPE_25__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %257, i32 0, i32 3
  %259 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %262 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %261, i32 0, i32 0
  %263 = load %struct.TYPE_25__*, %struct.TYPE_25__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %268 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %267, i32 0, i32 0
  %269 = load %struct.TYPE_25__*, %struct.TYPE_25__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %274 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %273, i32 0, i32 0
  %275 = load %struct.TYPE_25__*, %struct.TYPE_25__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %275, i32 0, i32 2
  %277 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %280 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %279, i32 0, i32 0
  %281 = load %struct.TYPE_25__*, %struct.TYPE_25__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %281, i32 0, i32 2
  %283 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %286 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %285, i32 0, i32 0
  %287 = load %struct.TYPE_25__*, %struct.TYPE_25__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %292 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %291, i32 0, i32 0
  %293 = load %struct.TYPE_25__*, %struct.TYPE_25__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %298 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %297, i32 0, i32 0
  %299 = load %struct.TYPE_25__*, %struct.TYPE_25__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %304 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %303, i32 0, i32 0
  %305 = load %struct.TYPE_25__*, %struct.TYPE_25__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %310 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %309, i32 0, i32 0
  %311 = load %struct.TYPE_25__*, %struct.TYPE_25__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %312, i32 0, i32 3
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %316 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %315, i32 0, i32 0
  %317 = load %struct.TYPE_25__*, %struct.TYPE_25__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 4
  %321 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %322 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %321, i32 0, i32 0
  %323 = load %struct.TYPE_25__*, %struct.TYPE_25__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %328 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %327, i32 0, i32 0
  %329 = load %struct.TYPE_25__*, %struct.TYPE_25__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 4
  %333 = call i32 (i8*, ...) @SURFACE_TRACE(i8* getelementptr inbounds ([580 x i8], [580 x i8]* @.str.6, i64 0, i64 0), i32 %242, i32 %248, i32 %254, i32 %260, i32 %266, i32 %272, i32 %278, i32 %284, i32 %290, i32 %296, i32 %302, i32 %308, i32 %314, i32 %320, i32 %326, i32 %332)
  br label %334

334:                                              ; preds = %236, %231
  %335 = call i32 (i8*, ...) @SURFACE_TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %336

336:                                              ; preds = %334
  %337 = load i32, i32* %7, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %7, align 4
  br label %15

339:                                              ; preds = %15
  %340 = call i32 (i8*, ...) @SURFACE_TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
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
