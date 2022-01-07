; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_fill_plane_buffer_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_fill_plane_buffer_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_framebuffer = type { i64, %struct.drm_framebuffer }
%struct.drm_framebuffer = type { i32, i32, i32*, %struct.TYPE_14__*, i64* }
%struct.TYPE_14__ = type { i32* }
%union.dc_tiling_info = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i8*, i8*, i32 }
%struct.plane_size = type { i32, i32, %struct.TYPE_22__, %struct.TYPE_18__, %struct.TYPE_17__, i32, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__ }
%struct.TYPE_22__ = type { i32, i8*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i8*, i8* }
%struct.TYPE_15__ = type { i8*, i8* }
%struct.TYPE_26__ = type { i32, i32, i64, i64 }
%struct.TYPE_25__ = type { i32, i32, i64, i64 }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i8*, i8* }
%struct.dc_plane_dcc_param = type { i32, i32, %struct.TYPE_22__, %struct.TYPE_18__, %struct.TYPE_17__, i32, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__ }
%struct.dc_plane_address = type { i32, i32, %struct.TYPE_22__, %struct.TYPE_18__, %struct.TYPE_17__, i32, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__ }

@SURFACE_PIXEL_FORMAT_VIDEO_BEGIN = common dso_local global i32 0, align 4
@PLN_ADDR_TYPE_GRAPHICS = common dso_local global i32 0, align 4
@SURFACE_PIXEL_FORMAT_INVALID = common dso_local global i32 0, align 4
@PLN_ADDR_TYPE_VIDEO_PROGRESSIVE = common dso_local global i32 0, align 4
@ARRAY_MODE = common dso_local global i32 0, align 4
@DC_ARRAY_2D_TILED_THIN1 = common dso_local global i8* null, align 8
@BANK_WIDTH = common dso_local global i32 0, align 4
@BANK_HEIGHT = common dso_local global i32 0, align 4
@MACRO_TILE_ASPECT = common dso_local global i32 0, align 4
@TILE_SPLIT = common dso_local global i32 0, align 4
@NUM_BANKS = common dso_local global i32 0, align 4
@DC_ADDR_SURF_MICRO_TILING_DISPLAY = common dso_local global i32 0, align 4
@DC_ARRAY_1D_TILED_THIN1 = common dso_local global i8* null, align 8
@PIPE_CONFIG = common dso_local global i32 0, align 4
@CHIP_VEGA10 = common dso_local global i64 0, align 8
@CHIP_VEGA12 = common dso_local global i64 0, align 8
@CHIP_VEGA20 = common dso_local global i64 0, align 8
@CHIP_RAVEN = common dso_local global i64 0, align 8
@SWIZZLE_MODE = common dso_local global i32 0, align 4
@CHIP_NAVI10 = common dso_local global i64 0, align 8
@CHIP_NAVI12 = common dso_local global i64 0, align 8
@CHIP_NAVI14 = common dso_local global i64 0, align 8
@CHIP_RENOIR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_framebuffer*, i32, i32, i64, %union.dc_tiling_info*, %struct.plane_size*, %struct.dc_plane_dcc_param*, %struct.dc_plane_address*)* @fill_plane_buffer_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_plane_buffer_attributes(%struct.amdgpu_device* %0, %struct.amdgpu_framebuffer* %1, i32 %2, i32 %3, i64 %4, %union.dc_tiling_info* %5, %struct.plane_size* %6, %struct.dc_plane_dcc_param* %7, %struct.dc_plane_address* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.amdgpu_device*, align 8
  %12 = alloca %struct.amdgpu_framebuffer*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %union.dc_tiling_info*, align 8
  %17 = alloca %struct.plane_size*, align 8
  %18 = alloca %struct.dc_plane_dcc_param*, align 8
  %19 = alloca %struct.dc_plane_address*, align 8
  %20 = alloca %struct.drm_framebuffer*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %11, align 8
  store %struct.amdgpu_framebuffer* %1, %struct.amdgpu_framebuffer** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i64 %4, i64* %15, align 8
  store %union.dc_tiling_info* %5, %union.dc_tiling_info** %16, align 8
  store %struct.plane_size* %6, %struct.plane_size** %17, align 8
  store %struct.dc_plane_dcc_param* %7, %struct.dc_plane_dcc_param** %18, align 8
  store %struct.dc_plane_address* %8, %struct.dc_plane_address** %19, align 8
  %28 = load %struct.amdgpu_framebuffer*, %struct.amdgpu_framebuffer** %12, align 8
  %29 = getelementptr inbounds %struct.amdgpu_framebuffer, %struct.amdgpu_framebuffer* %28, i32 0, i32 1
  store %struct.drm_framebuffer* %29, %struct.drm_framebuffer** %20, align 8
  %30 = load %union.dc_tiling_info*, %union.dc_tiling_info** %16, align 8
  %31 = call i32 @memset(%union.dc_tiling_info* %30, i32 0, i32 48)
  %32 = load %struct.plane_size*, %struct.plane_size** %17, align 8
  %33 = bitcast %struct.plane_size* %32 to %union.dc_tiling_info*
  %34 = call i32 @memset(%union.dc_tiling_info* %33, i32 0, i32 200)
  %35 = load %struct.dc_plane_dcc_param*, %struct.dc_plane_dcc_param** %18, align 8
  %36 = bitcast %struct.dc_plane_dcc_param* %35 to %union.dc_tiling_info*
  %37 = call i32 @memset(%union.dc_tiling_info* %36, i32 0, i32 200)
  %38 = load %struct.dc_plane_address*, %struct.dc_plane_address** %19, align 8
  %39 = bitcast %struct.dc_plane_address* %38 to %union.dc_tiling_info*
  %40 = call i32 @memset(%union.dc_tiling_info* %39, i32 0, i32 200)
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @SURFACE_PIXEL_FORMAT_VIDEO_BEGIN, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %97

44:                                               ; preds = %9
  %45 = load %struct.plane_size*, %struct.plane_size** %17, align 8
  %46 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %45, i32 0, i32 7
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = load %struct.plane_size*, %struct.plane_size** %17, align 8
  %49 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %48, i32 0, i32 7
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %20, align 8
  %52 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.plane_size*, %struct.plane_size** %17, align 8
  %55 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %54, i32 0, i32 7
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  %57 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %20, align 8
  %58 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.plane_size*, %struct.plane_size** %17, align 8
  %61 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %60, i32 0, i32 7
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  %63 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %20, align 8
  %64 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %20, align 8
  %69 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %68, i32 0, i32 3
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = sdiv i32 %67, %74
  %76 = load %struct.plane_size*, %struct.plane_size** %17, align 8
  %77 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @PLN_ADDR_TYPE_GRAPHICS, align 4
  %79 = load %struct.dc_plane_address*, %struct.dc_plane_address** %19, align 8
  %80 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 8
  %81 = load %struct.amdgpu_framebuffer*, %struct.amdgpu_framebuffer** %12, align 8
  %82 = getelementptr inbounds %struct.amdgpu_framebuffer, %struct.amdgpu_framebuffer* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i8* @lower_32_bits(i64 %83)
  %85 = load %struct.dc_plane_address*, %struct.dc_plane_address** %19, align 8
  %86 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %85, i32 0, i32 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 1
  store i8* %84, i8** %88, align 8
  %89 = load %struct.amdgpu_framebuffer*, %struct.amdgpu_framebuffer** %12, align 8
  %90 = getelementptr inbounds %struct.amdgpu_framebuffer, %struct.amdgpu_framebuffer* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i8* @upper_32_bits(i64 %91)
  %93 = load %struct.dc_plane_address*, %struct.dc_plane_address** %19, align 8
  %94 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %93, i32 0, i32 8
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 0
  store i8* %92, i8** %96, align 8
  br label %211

97:                                               ; preds = %9
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* @SURFACE_PIXEL_FORMAT_INVALID, align 4
  %100 = icmp ult i32 %98, %99
  br i1 %100, label %101, label %210

101:                                              ; preds = %97
  %102 = load %struct.amdgpu_framebuffer*, %struct.amdgpu_framebuffer** %12, align 8
  %103 = getelementptr inbounds %struct.amdgpu_framebuffer, %struct.amdgpu_framebuffer* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %20, align 8
  %106 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %105, i32 0, i32 4
  %107 = load i64*, i64** %106, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 1
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %104, %109
  store i64 %110, i64* %22, align 8
  %111 = load %struct.plane_size*, %struct.plane_size** %17, align 8
  %112 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %111, i32 0, i32 7
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %112, i32 0, i32 3
  store i64 0, i64* %113, align 8
  %114 = load %struct.plane_size*, %struct.plane_size** %17, align 8
  %115 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %114, i32 0, i32 7
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 2
  store i64 0, i64* %116, align 8
  %117 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %20, align 8
  %118 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.plane_size*, %struct.plane_size** %17, align 8
  %121 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %120, i32 0, i32 7
  %122 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 8
  %123 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %20, align 8
  %124 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.plane_size*, %struct.plane_size** %17, align 8
  %127 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %126, i32 0, i32 7
  %128 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %127, i32 0, i32 1
  store i32 %125, i32* %128, align 4
  %129 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %20, align 8
  %130 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %20, align 8
  %135 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %134, i32 0, i32 3
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = sdiv i32 %133, %140
  %142 = load %struct.plane_size*, %struct.plane_size** %17, align 8
  %143 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load %struct.plane_size*, %struct.plane_size** %17, align 8
  %145 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %144, i32 0, i32 6
  %146 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %145, i32 0, i32 3
  store i64 0, i64* %146, align 8
  %147 = load %struct.plane_size*, %struct.plane_size** %17, align 8
  %148 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %147, i32 0, i32 6
  %149 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %148, i32 0, i32 2
  store i64 0, i64* %149, align 8
  %150 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %20, align 8
  %151 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = sdiv i32 %152, 2
  %154 = load %struct.plane_size*, %struct.plane_size** %17, align 8
  %155 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %154, i32 0, i32 6
  %156 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %155, i32 0, i32 0
  store i32 %153, i32* %156, align 8
  %157 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %20, align 8
  %158 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = sdiv i32 %159, 2
  %161 = load %struct.plane_size*, %struct.plane_size** %17, align 8
  %162 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %161, i32 0, i32 6
  %163 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %162, i32 0, i32 1
  store i32 %160, i32* %163, align 4
  %164 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %20, align 8
  %165 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %20, align 8
  %170 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %169, i32 0, i32 3
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 1
  %175 = load i32, i32* %174, align 4
  %176 = sdiv i32 %168, %175
  %177 = load %struct.plane_size*, %struct.plane_size** %17, align 8
  %178 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 4
  %179 = load i32, i32* @PLN_ADDR_TYPE_VIDEO_PROGRESSIVE, align 4
  %180 = load %struct.dc_plane_address*, %struct.dc_plane_address** %19, align 8
  %181 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %180, i32 0, i32 5
  store i32 %179, i32* %181, align 8
  %182 = load %struct.amdgpu_framebuffer*, %struct.amdgpu_framebuffer** %12, align 8
  %183 = getelementptr inbounds %struct.amdgpu_framebuffer, %struct.amdgpu_framebuffer* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = call i8* @lower_32_bits(i64 %184)
  %186 = load %struct.dc_plane_address*, %struct.dc_plane_address** %19, align 8
  %187 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %186, i32 0, i32 4
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 1
  store i8* %185, i8** %189, align 8
  %190 = load %struct.amdgpu_framebuffer*, %struct.amdgpu_framebuffer** %12, align 8
  %191 = getelementptr inbounds %struct.amdgpu_framebuffer, %struct.amdgpu_framebuffer* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = call i8* @upper_32_bits(i64 %192)
  %194 = load %struct.dc_plane_address*, %struct.dc_plane_address** %19, align 8
  %195 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %194, i32 0, i32 4
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 0
  store i8* %193, i8** %197, align 8
  %198 = load i64, i64* %22, align 8
  %199 = call i8* @lower_32_bits(i64 %198)
  %200 = load %struct.dc_plane_address*, %struct.dc_plane_address** %19, align 8
  %201 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %200, i32 0, i32 4
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 1
  store i8* %199, i8** %203, align 8
  %204 = load i64, i64* %22, align 8
  %205 = call i8* @upper_32_bits(i64 %204)
  %206 = load %struct.dc_plane_address*, %struct.dc_plane_address** %19, align 8
  %207 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %206, i32 0, i32 4
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 0
  store i8* %205, i8** %209, align 8
  br label %210

210:                                              ; preds = %101, %97
  br label %211

211:                                              ; preds = %210, %44
  %212 = load i64, i64* %15, align 8
  %213 = load i32, i32* @ARRAY_MODE, align 4
  %214 = call i8* @AMDGPU_TILING_GET(i64 %212, i32 %213)
  %215 = load i8*, i8** @DC_ARRAY_2D_TILED_THIN1, align 8
  %216 = icmp eq i8* %214, %215
  br i1 %216, label %217, label %266

217:                                              ; preds = %211
  %218 = load i64, i64* %15, align 8
  %219 = load i32, i32* @BANK_WIDTH, align 4
  %220 = call i8* @AMDGPU_TILING_GET(i64 %218, i32 %219)
  %221 = ptrtoint i8* %220 to i32
  store i32 %221, i32* %23, align 4
  %222 = load i64, i64* %15, align 8
  %223 = load i32, i32* @BANK_HEIGHT, align 4
  %224 = call i8* @AMDGPU_TILING_GET(i64 %222, i32 %223)
  %225 = ptrtoint i8* %224 to i32
  store i32 %225, i32* %24, align 4
  %226 = load i64, i64* %15, align 8
  %227 = load i32, i32* @MACRO_TILE_ASPECT, align 4
  %228 = call i8* @AMDGPU_TILING_GET(i64 %226, i32 %227)
  %229 = ptrtoint i8* %228 to i32
  store i32 %229, i32* %25, align 4
  %230 = load i64, i64* %15, align 8
  %231 = load i32, i32* @TILE_SPLIT, align 4
  %232 = call i8* @AMDGPU_TILING_GET(i64 %230, i32 %231)
  %233 = ptrtoint i8* %232 to i32
  store i32 %233, i32* %26, align 4
  %234 = load i64, i64* %15, align 8
  %235 = load i32, i32* @NUM_BANKS, align 4
  %236 = call i8* @AMDGPU_TILING_GET(i64 %234, i32 %235)
  %237 = ptrtoint i8* %236 to i32
  store i32 %237, i32* %27, align 4
  %238 = load i32, i32* %27, align 4
  %239 = load %union.dc_tiling_info*, %union.dc_tiling_info** %16, align 8
  %240 = bitcast %union.dc_tiling_info* %239 to %struct.TYPE_18__*
  %241 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %240, i32 0, i32 0
  store i32 %238, i32* %241, align 8
  %242 = load i8*, i8** @DC_ARRAY_2D_TILED_THIN1, align 8
  %243 = load %union.dc_tiling_info*, %union.dc_tiling_info** %16, align 8
  %244 = bitcast %union.dc_tiling_info* %243 to %struct.TYPE_18__*
  %245 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %244, i32 0, i32 6
  store i8* %242, i8** %245, align 8
  %246 = load i32, i32* %26, align 4
  %247 = load %union.dc_tiling_info*, %union.dc_tiling_info** %16, align 8
  %248 = bitcast %union.dc_tiling_info* %247 to %struct.TYPE_18__*
  %249 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %248, i32 0, i32 1
  store i32 %246, i32* %249, align 4
  %250 = load i32, i32* %23, align 4
  %251 = load %union.dc_tiling_info*, %union.dc_tiling_info** %16, align 8
  %252 = bitcast %union.dc_tiling_info* %251 to %struct.TYPE_18__*
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i32 0, i32 2
  store i32 %250, i32* %253, align 8
  %254 = load i32, i32* %24, align 4
  %255 = load %union.dc_tiling_info*, %union.dc_tiling_info** %16, align 8
  %256 = bitcast %union.dc_tiling_info* %255 to %struct.TYPE_18__*
  %257 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %256, i32 0, i32 3
  store i32 %254, i32* %257, align 4
  %258 = load i32, i32* %25, align 4
  %259 = load %union.dc_tiling_info*, %union.dc_tiling_info** %16, align 8
  %260 = bitcast %union.dc_tiling_info* %259 to %struct.TYPE_18__*
  %261 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %260, i32 0, i32 4
  store i32 %258, i32* %261, align 8
  %262 = load i32, i32* @DC_ADDR_SURF_MICRO_TILING_DISPLAY, align 4
  %263 = load %union.dc_tiling_info*, %union.dc_tiling_info** %16, align 8
  %264 = bitcast %union.dc_tiling_info* %263 to %struct.TYPE_18__*
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 7
  store i32 %262, i32* %265, align 8
  br label %278

266:                                              ; preds = %211
  %267 = load i64, i64* %15, align 8
  %268 = load i32, i32* @ARRAY_MODE, align 4
  %269 = call i8* @AMDGPU_TILING_GET(i64 %267, i32 %268)
  %270 = load i8*, i8** @DC_ARRAY_1D_TILED_THIN1, align 8
  %271 = icmp eq i8* %269, %270
  br i1 %271, label %272, label %277

272:                                              ; preds = %266
  %273 = load i8*, i8** @DC_ARRAY_1D_TILED_THIN1, align 8
  %274 = load %union.dc_tiling_info*, %union.dc_tiling_info** %16, align 8
  %275 = bitcast %union.dc_tiling_info* %274 to %struct.TYPE_18__*
  %276 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %275, i32 0, i32 6
  store i8* %273, i8** %276, align 8
  br label %277

277:                                              ; preds = %272, %266
  br label %278

278:                                              ; preds = %277, %217
  %279 = load i64, i64* %15, align 8
  %280 = load i32, i32* @PIPE_CONFIG, align 4
  %281 = call i8* @AMDGPU_TILING_GET(i64 %279, i32 %280)
  %282 = load %union.dc_tiling_info*, %union.dc_tiling_info** %16, align 8
  %283 = bitcast %union.dc_tiling_info* %282 to %struct.TYPE_18__*
  %284 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %283, i32 0, i32 5
  store i8* %281, i8** %284, align 8
  %285 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %286 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* @CHIP_VEGA10, align 8
  %289 = icmp eq i64 %287, %288
  br i1 %289, label %308, label %290

290:                                              ; preds = %278
  %291 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %292 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @CHIP_VEGA12, align 8
  %295 = icmp eq i64 %293, %294
  br i1 %295, label %308, label %296

296:                                              ; preds = %290
  %297 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %298 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = load i64, i64* @CHIP_VEGA20, align 8
  %301 = icmp eq i64 %299, %300
  br i1 %301, label %308, label %302

302:                                              ; preds = %296
  %303 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %304 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* @CHIP_RAVEN, align 8
  %307 = icmp eq i64 %305, %306
  br i1 %307, label %308, label %390

308:                                              ; preds = %302, %296, %290, %278
  %309 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %310 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %312, i32 0, i32 5
  %314 = load i32, i32* %313, align 4
  %315 = load %union.dc_tiling_info*, %union.dc_tiling_info** %16, align 8
  %316 = bitcast %union.dc_tiling_info* %315 to %struct.TYPE_22__*
  %317 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %316, i32 0, i32 7
  store i32 %314, i32* %317, align 4
  %318 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %319 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %321, i32 0, i32 4
  %323 = load i32, i32* %322, align 8
  %324 = load %union.dc_tiling_info*, %union.dc_tiling_info** %16, align 8
  %325 = bitcast %union.dc_tiling_info* %324 to %struct.TYPE_22__*
  %326 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %325, i32 0, i32 6
  store i32 %323, i32* %326, align 8
  %327 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %328 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %327, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %330, i32 0, i32 3
  %332 = load i32, i32* %331, align 4
  %333 = load %union.dc_tiling_info*, %union.dc_tiling_info** %16, align 8
  %334 = bitcast %union.dc_tiling_info* %333 to %struct.TYPE_22__*
  %335 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %334, i32 0, i32 5
  store i32 %332, i32* %335, align 4
  %336 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %337 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 8
  %342 = load %union.dc_tiling_info*, %union.dc_tiling_info** %16, align 8
  %343 = bitcast %union.dc_tiling_info* %342 to %struct.TYPE_22__*
  %344 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %343, i32 0, i32 4
  store i32 %341, i32* %344, align 8
  %345 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %346 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %345, i32 0, i32 1
  %347 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = load %union.dc_tiling_info*, %union.dc_tiling_info** %16, align 8
  %352 = bitcast %union.dc_tiling_info* %351 to %struct.TYPE_22__*
  %353 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %352, i32 0, i32 3
  store i32 %350, i32* %353, align 4
  %354 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %355 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %354, i32 0, i32 1
  %356 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = load %union.dc_tiling_info*, %union.dc_tiling_info** %16, align 8
  %361 = bitcast %union.dc_tiling_info* %360 to %struct.TYPE_22__*
  %362 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %361, i32 0, i32 2
  store i32 %359, i32* %362, align 8
  %363 = load i64, i64* %15, align 8
  %364 = load i32, i32* @SWIZZLE_MODE, align 4
  %365 = call i8* @AMDGPU_TILING_GET(i64 %363, i32 %364)
  %366 = load %union.dc_tiling_info*, %union.dc_tiling_info** %16, align 8
  %367 = bitcast %union.dc_tiling_info* %366 to %struct.TYPE_22__*
  %368 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %367, i32 0, i32 1
  store i8* %365, i8** %368, align 8
  %369 = load %union.dc_tiling_info*, %union.dc_tiling_info** %16, align 8
  %370 = bitcast %union.dc_tiling_info* %369 to %struct.TYPE_22__*
  %371 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %370, i32 0, i32 0
  store i32 1, i32* %371, align 8
  %372 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %373 = load %struct.amdgpu_framebuffer*, %struct.amdgpu_framebuffer** %12, align 8
  %374 = load i32, i32* %13, align 4
  %375 = load i32, i32* %14, align 4
  %376 = load %struct.plane_size*, %struct.plane_size** %17, align 8
  %377 = bitcast %struct.plane_size* %376 to %union.dc_tiling_info*
  %378 = load %union.dc_tiling_info*, %union.dc_tiling_info** %16, align 8
  %379 = load i64, i64* %15, align 8
  %380 = load %struct.dc_plane_dcc_param*, %struct.dc_plane_dcc_param** %18, align 8
  %381 = bitcast %struct.dc_plane_dcc_param* %380 to %union.dc_tiling_info*
  %382 = load %struct.dc_plane_address*, %struct.dc_plane_address** %19, align 8
  %383 = bitcast %struct.dc_plane_address* %382 to %union.dc_tiling_info*
  %384 = call i32 @fill_plane_dcc_attributes(%struct.amdgpu_device* %372, %struct.amdgpu_framebuffer* %373, i32 %374, i32 %375, %union.dc_tiling_info* %377, %union.dc_tiling_info* %378, i64 %379, %union.dc_tiling_info* %381, %union.dc_tiling_info* %383)
  store i32 %384, i32* %21, align 4
  %385 = load i32, i32* %21, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %389

387:                                              ; preds = %308
  %388 = load i32, i32* %21, align 4
  store i32 %388, i32* %10, align 4
  br label %391

389:                                              ; preds = %308
  br label %390

390:                                              ; preds = %389, %302
  store i32 0, i32* %10, align 4
  br label %391

391:                                              ; preds = %390, %387
  %392 = load i32, i32* %10, align 4
  ret i32 %392
}

declare dso_local i32 @memset(%union.dc_tiling_info*, i32, i32) #1

declare dso_local i8* @lower_32_bits(i64) #1

declare dso_local i8* @upper_32_bits(i64) #1

declare dso_local i8* @AMDGPU_TILING_GET(i64, i32) #1

declare dso_local i32 @fill_plane_dcc_attributes(%struct.amdgpu_device*, %struct.amdgpu_framebuffer*, i32, i32, %union.dc_tiling_info*, %union.dc_tiling_info*, i64, %union.dc_tiling_info*, %union.dc_tiling_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
