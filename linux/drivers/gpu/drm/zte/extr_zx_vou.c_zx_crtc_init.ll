; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vou.c_zx_crtc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vou.c_zx_crtc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.zx_vou_hw = type { %struct.zx_crtc*, %struct.zx_crtc*, i64, i64, %struct.device* }
%struct.zx_crtc = type { i32, i32, i32*, i32, i32*, i32*, i64, i64, i64, %struct.zx_vou_hw* }
%struct.device = type { i32 }
%struct.zx_plane = type { i32, i32*, i64, i64, i64, i64, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VOU_CHN_MAIN = common dso_local global i32 0, align 4
@MAIN_GL_OFFSET = common dso_local global i64 0, align 8
@MAIN_GL_CSC_OFFSET = common dso_local global i64 0, align 8
@MAIN_HBSC_OFFSET = common dso_local global i64 0, align 8
@MAIN_RSZ_OFFSET = common dso_local global i64 0, align 8
@zx_gl_bits = common dso_local global i32* null, align 8
@OSD_MAIN_CHN = common dso_local global i64 0, align 8
@MAIN_CHN_CSC_OFFSET = common dso_local global i64 0, align 8
@MAIN_DITHER_OFFSET = common dso_local global i64 0, align 8
@main_crtc_regs = common dso_local global i32 0, align 4
@main_crtc_bits = common dso_local global i32 0, align 4
@AUX_GL_OFFSET = common dso_local global i64 0, align 8
@AUX_GL_CSC_OFFSET = common dso_local global i64 0, align 8
@AUX_HBSC_OFFSET = common dso_local global i64 0, align 8
@AUX_RSZ_OFFSET = common dso_local global i64 0, align 8
@OSD_AUX_CHN = common dso_local global i64 0, align 8
@AUX_CHN_CSC_OFFSET = common dso_local global i64 0, align 8
@AUX_DITHER_OFFSET = common dso_local global i64 0, align 8
@aux_crtc_regs = common dso_local global i32 0, align 4
@aux_crtc_bits = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"main_wclk\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"aux_wclk\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to get pix clk: %d\0A\00", align 1
@DRM_PLANE_TYPE_PRIMARY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"failed to init primary plane: %d\0A\00", align 1
@zx_crtc_funcs = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to init drm crtc: %d\0A\00", align 1
@zx_crtc_helper_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.zx_vou_hw*, i32)* @zx_crtc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_crtc_init(%struct.drm_device* %0, %struct.zx_vou_hw* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.zx_vou_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.zx_plane*, align 8
  %10 = alloca %struct.zx_crtc*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.zx_vou_hw* %1, %struct.zx_vou_hw** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %6, align 8
  %13 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %12, i32 0, i32 4
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %8, align 8
  %15 = load %struct.device*, %struct.device** %8, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @devm_kzalloc(%struct.device* %15, i32 72, i32 %16)
  %18 = bitcast i8* %17 to %struct.zx_crtc*
  store %struct.zx_crtc* %18, %struct.zx_crtc** %10, align 8
  %19 = load %struct.zx_crtc*, %struct.zx_crtc** %10, align 8
  %20 = icmp ne %struct.zx_crtc* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %234

24:                                               ; preds = %3
  %25 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %6, align 8
  %26 = load %struct.zx_crtc*, %struct.zx_crtc** %10, align 8
  %27 = getelementptr inbounds %struct.zx_crtc, %struct.zx_crtc* %26, i32 0, i32 9
  store %struct.zx_vou_hw* %25, %struct.zx_vou_hw** %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.zx_crtc*, %struct.zx_crtc** %10, align 8
  %30 = getelementptr inbounds %struct.zx_crtc, %struct.zx_crtc* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.device*, %struct.device** %8, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8* @devm_kzalloc(%struct.device* %31, i32 56, i32 %32)
  %34 = bitcast i8* %33 to %struct.zx_plane*
  store %struct.zx_plane* %34, %struct.zx_plane** %9, align 8
  %35 = load %struct.zx_plane*, %struct.zx_plane** %9, align 8
  %36 = icmp ne %struct.zx_plane* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %24
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %234

40:                                               ; preds = %24
  %41 = load %struct.device*, %struct.device** %8, align 8
  %42 = load %struct.zx_plane*, %struct.zx_plane** %9, align 8
  %43 = getelementptr inbounds %struct.zx_plane, %struct.zx_plane* %42, i32 0, i32 6
  store %struct.device* %41, %struct.device** %43, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @VOU_CHN_MAIN, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %105

47:                                               ; preds = %40
  %48 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %6, align 8
  %49 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @MAIN_GL_OFFSET, align 8
  %52 = add nsw i64 %50, %51
  %53 = load %struct.zx_plane*, %struct.zx_plane** %9, align 8
  %54 = getelementptr inbounds %struct.zx_plane, %struct.zx_plane* %53, i32 0, i32 5
  store i64 %52, i64* %54, align 8
  %55 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %6, align 8
  %56 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @MAIN_GL_CSC_OFFSET, align 8
  %59 = add nsw i64 %57, %58
  %60 = load %struct.zx_plane*, %struct.zx_plane** %9, align 8
  %61 = getelementptr inbounds %struct.zx_plane, %struct.zx_plane* %60, i32 0, i32 4
  store i64 %59, i64* %61, align 8
  %62 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %6, align 8
  %63 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MAIN_HBSC_OFFSET, align 8
  %66 = add nsw i64 %64, %65
  %67 = load %struct.zx_plane*, %struct.zx_plane** %9, align 8
  %68 = getelementptr inbounds %struct.zx_plane, %struct.zx_plane* %67, i32 0, i32 3
  store i64 %66, i64* %68, align 8
  %69 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %6, align 8
  %70 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @MAIN_RSZ_OFFSET, align 8
  %73 = add nsw i64 %71, %72
  %74 = load %struct.zx_plane*, %struct.zx_plane** %9, align 8
  %75 = getelementptr inbounds %struct.zx_plane, %struct.zx_plane* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load i32*, i32** @zx_gl_bits, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load %struct.zx_plane*, %struct.zx_plane** %9, align 8
  %79 = getelementptr inbounds %struct.zx_plane, %struct.zx_plane* %78, i32 0, i32 1
  store i32* %77, i32** %79, align 8
  %80 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %6, align 8
  %81 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @OSD_MAIN_CHN, align 8
  %84 = add nsw i64 %82, %83
  %85 = load %struct.zx_crtc*, %struct.zx_crtc** %10, align 8
  %86 = getelementptr inbounds %struct.zx_crtc, %struct.zx_crtc* %85, i32 0, i32 8
  store i64 %84, i64* %86, align 8
  %87 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %6, align 8
  %88 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @MAIN_CHN_CSC_OFFSET, align 8
  %91 = add nsw i64 %89, %90
  %92 = load %struct.zx_crtc*, %struct.zx_crtc** %10, align 8
  %93 = getelementptr inbounds %struct.zx_crtc, %struct.zx_crtc* %92, i32 0, i32 7
  store i64 %91, i64* %93, align 8
  %94 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %6, align 8
  %95 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @MAIN_DITHER_OFFSET, align 8
  %98 = add nsw i64 %96, %97
  %99 = load %struct.zx_crtc*, %struct.zx_crtc** %10, align 8
  %100 = getelementptr inbounds %struct.zx_crtc, %struct.zx_crtc* %99, i32 0, i32 6
  store i64 %98, i64* %100, align 8
  %101 = load %struct.zx_crtc*, %struct.zx_crtc** %10, align 8
  %102 = getelementptr inbounds %struct.zx_crtc, %struct.zx_crtc* %101, i32 0, i32 5
  store i32* @main_crtc_regs, i32** %102, align 8
  %103 = load %struct.zx_crtc*, %struct.zx_crtc** %10, align 8
  %104 = getelementptr inbounds %struct.zx_crtc, %struct.zx_crtc* %103, i32 0, i32 4
  store i32* @main_crtc_bits, i32** %104, align 8
  br label %163

105:                                              ; preds = %40
  %106 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %6, align 8
  %107 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @AUX_GL_OFFSET, align 8
  %110 = add nsw i64 %108, %109
  %111 = load %struct.zx_plane*, %struct.zx_plane** %9, align 8
  %112 = getelementptr inbounds %struct.zx_plane, %struct.zx_plane* %111, i32 0, i32 5
  store i64 %110, i64* %112, align 8
  %113 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %6, align 8
  %114 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @AUX_GL_CSC_OFFSET, align 8
  %117 = add nsw i64 %115, %116
  %118 = load %struct.zx_plane*, %struct.zx_plane** %9, align 8
  %119 = getelementptr inbounds %struct.zx_plane, %struct.zx_plane* %118, i32 0, i32 4
  store i64 %117, i64* %119, align 8
  %120 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %6, align 8
  %121 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @AUX_HBSC_OFFSET, align 8
  %124 = add nsw i64 %122, %123
  %125 = load %struct.zx_plane*, %struct.zx_plane** %9, align 8
  %126 = getelementptr inbounds %struct.zx_plane, %struct.zx_plane* %125, i32 0, i32 3
  store i64 %124, i64* %126, align 8
  %127 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %6, align 8
  %128 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @AUX_RSZ_OFFSET, align 8
  %131 = add nsw i64 %129, %130
  %132 = load %struct.zx_plane*, %struct.zx_plane** %9, align 8
  %133 = getelementptr inbounds %struct.zx_plane, %struct.zx_plane* %132, i32 0, i32 2
  store i64 %131, i64* %133, align 8
  %134 = load i32*, i32** @zx_gl_bits, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  %136 = load %struct.zx_plane*, %struct.zx_plane** %9, align 8
  %137 = getelementptr inbounds %struct.zx_plane, %struct.zx_plane* %136, i32 0, i32 1
  store i32* %135, i32** %137, align 8
  %138 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %6, align 8
  %139 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @OSD_AUX_CHN, align 8
  %142 = add nsw i64 %140, %141
  %143 = load %struct.zx_crtc*, %struct.zx_crtc** %10, align 8
  %144 = getelementptr inbounds %struct.zx_crtc, %struct.zx_crtc* %143, i32 0, i32 8
  store i64 %142, i64* %144, align 8
  %145 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %6, align 8
  %146 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @AUX_CHN_CSC_OFFSET, align 8
  %149 = add nsw i64 %147, %148
  %150 = load %struct.zx_crtc*, %struct.zx_crtc** %10, align 8
  %151 = getelementptr inbounds %struct.zx_crtc, %struct.zx_crtc* %150, i32 0, i32 7
  store i64 %149, i64* %151, align 8
  %152 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %6, align 8
  %153 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @AUX_DITHER_OFFSET, align 8
  %156 = add nsw i64 %154, %155
  %157 = load %struct.zx_crtc*, %struct.zx_crtc** %10, align 8
  %158 = getelementptr inbounds %struct.zx_crtc, %struct.zx_crtc* %157, i32 0, i32 6
  store i64 %156, i64* %158, align 8
  %159 = load %struct.zx_crtc*, %struct.zx_crtc** %10, align 8
  %160 = getelementptr inbounds %struct.zx_crtc, %struct.zx_crtc* %159, i32 0, i32 5
  store i32* @aux_crtc_regs, i32** %160, align 8
  %161 = load %struct.zx_crtc*, %struct.zx_crtc** %10, align 8
  %162 = getelementptr inbounds %struct.zx_crtc, %struct.zx_crtc* %161, i32 0, i32 4
  store i32* @aux_crtc_bits, i32** %162, align 8
  br label %163

163:                                              ; preds = %105, %47
  %164 = load %struct.device*, %struct.device** %8, align 8
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* @VOU_CHN_MAIN, align 4
  %167 = icmp eq i32 %165, %166
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)
  %170 = call i32 @devm_clk_get(%struct.device* %164, i8* %169)
  %171 = load %struct.zx_crtc*, %struct.zx_crtc** %10, align 8
  %172 = getelementptr inbounds %struct.zx_crtc, %struct.zx_crtc* %171, i32 0, i32 3
  store i32 %170, i32* %172, align 8
  %173 = load %struct.zx_crtc*, %struct.zx_crtc** %10, align 8
  %174 = getelementptr inbounds %struct.zx_crtc, %struct.zx_crtc* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = call i64 @IS_ERR(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %187

178:                                              ; preds = %163
  %179 = load %struct.zx_crtc*, %struct.zx_crtc** %10, align 8
  %180 = getelementptr inbounds %struct.zx_crtc, %struct.zx_crtc* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @PTR_ERR(i32 %181)
  store i32 %182, i32* %11, align 4
  %183 = load %struct.device*, %struct.device** %8, align 8
  %184 = load i32, i32* %11, align 4
  %185 = call i32 @DRM_DEV_ERROR(%struct.device* %183, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %184)
  %186 = load i32, i32* %11, align 4
  store i32 %186, i32* %4, align 4
  br label %234

187:                                              ; preds = %163
  %188 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %189 = load %struct.zx_plane*, %struct.zx_plane** %9, align 8
  %190 = load i32, i32* @DRM_PLANE_TYPE_PRIMARY, align 4
  %191 = call i32 @zx_plane_init(%struct.drm_device* %188, %struct.zx_plane* %189, i32 %190)
  store i32 %191, i32* %11, align 4
  %192 = load i32, i32* %11, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %187
  %195 = load %struct.device*, %struct.device** %8, align 8
  %196 = load i32, i32* %11, align 4
  %197 = call i32 @DRM_DEV_ERROR(%struct.device* %195, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %196)
  %198 = load i32, i32* %11, align 4
  store i32 %198, i32* %4, align 4
  br label %234

199:                                              ; preds = %187
  %200 = load %struct.zx_plane*, %struct.zx_plane** %9, align 8
  %201 = getelementptr inbounds %struct.zx_plane, %struct.zx_plane* %200, i32 0, i32 0
  %202 = load %struct.zx_crtc*, %struct.zx_crtc** %10, align 8
  %203 = getelementptr inbounds %struct.zx_crtc, %struct.zx_crtc* %202, i32 0, i32 2
  store i32* %201, i32** %203, align 8
  %204 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %205 = load %struct.zx_crtc*, %struct.zx_crtc** %10, align 8
  %206 = getelementptr inbounds %struct.zx_crtc, %struct.zx_crtc* %205, i32 0, i32 1
  %207 = load %struct.zx_crtc*, %struct.zx_crtc** %10, align 8
  %208 = getelementptr inbounds %struct.zx_crtc, %struct.zx_crtc* %207, i32 0, i32 2
  %209 = load i32*, i32** %208, align 8
  %210 = call i32 @drm_crtc_init_with_planes(%struct.drm_device* %204, i32* %206, i32* %209, i32* null, i32* @zx_crtc_funcs, i32* null)
  store i32 %210, i32* %11, align 4
  %211 = load i32, i32* %11, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %199
  %214 = load %struct.device*, %struct.device** %8, align 8
  %215 = load i32, i32* %11, align 4
  %216 = call i32 @DRM_DEV_ERROR(%struct.device* %214, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %215)
  %217 = load i32, i32* %11, align 4
  store i32 %217, i32* %4, align 4
  br label %234

218:                                              ; preds = %199
  %219 = load %struct.zx_crtc*, %struct.zx_crtc** %10, align 8
  %220 = getelementptr inbounds %struct.zx_crtc, %struct.zx_crtc* %219, i32 0, i32 1
  %221 = call i32 @drm_crtc_helper_add(i32* %220, i32* @zx_crtc_helper_funcs)
  %222 = load i32, i32* %7, align 4
  %223 = load i32, i32* @VOU_CHN_MAIN, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %229

225:                                              ; preds = %218
  %226 = load %struct.zx_crtc*, %struct.zx_crtc** %10, align 8
  %227 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %6, align 8
  %228 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %227, i32 0, i32 1
  store %struct.zx_crtc* %226, %struct.zx_crtc** %228, align 8
  br label %233

229:                                              ; preds = %218
  %230 = load %struct.zx_crtc*, %struct.zx_crtc** %10, align 8
  %231 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %6, align 8
  %232 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %231, i32 0, i32 0
  store %struct.zx_crtc* %230, %struct.zx_crtc** %232, align 8
  br label %233

233:                                              ; preds = %229, %225
  store i32 0, i32* %4, align 4
  br label %234

234:                                              ; preds = %233, %213, %194, %178, %37, %21
  %235 = load i32, i32* %4, align 4
  ret i32 %235
}

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*, i32) #1

declare dso_local i32 @zx_plane_init(%struct.drm_device*, %struct.zx_plane*, i32) #1

declare dso_local i32 @drm_crtc_init_with_planes(%struct.drm_device*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @drm_crtc_helper_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
