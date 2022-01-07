; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dpi.c_mtk_dpi_set_display_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dpi.c_mtk_dpi_set_display_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_dpi = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)* }
%struct.drm_display_mode = type { i32, i32 }
%struct.mtk_dpi_yc_limit = type { i32, i32, i32, i32 }
%struct.mtk_dpi_polarities = type { i8*, i8*, i8*, i8* }
%struct.mtk_dpi_sync_param = type { i32, i32, i32, i32, i32 }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Want PLL %lu Hz, pixel clock %lu Hz\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Got  PLL %lu Hz, pixel clock %lu Hz\0A\00", align 1
@MTK_DPI_POLARITY_FALLING = common dso_local global i8* null, align 8
@MTK_DPI_POLARITY_RISING = common dso_local global i8* null, align 8
@DISPLAY_FLAGS_HSYNC_HIGH = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_VSYNC_HIGH = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_INTERLACED = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_3D_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_dpi*, %struct.drm_display_mode*)* @mtk_dpi_set_display_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_dpi_set_display_mode(%struct.mtk_dpi* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.mtk_dpi*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.mtk_dpi_yc_limit, align 4
  %6 = alloca %struct.mtk_dpi_polarities, align 8
  %7 = alloca %struct.mtk_dpi_sync_param, align 4
  %8 = alloca %struct.mtk_dpi_sync_param, align 4
  %9 = alloca %struct.mtk_dpi_sync_param, align 4
  %10 = alloca %struct.mtk_dpi_sync_param, align 4
  %11 = alloca %struct.mtk_dpi_sync_param, align 4
  %12 = alloca %struct.videomode, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.mtk_dpi* %0, %struct.mtk_dpi** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %15 = bitcast %struct.mtk_dpi_sync_param* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 20, i1 false)
  %16 = bitcast %struct.mtk_dpi_sync_param* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 20, i1 false)
  %17 = bitcast %struct.mtk_dpi_sync_param* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 20, i1 false)
  %18 = bitcast %struct.mtk_dpi_sync_param* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 20, i1 false)
  %19 = bitcast %struct.videomode* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 44, i1 false)
  %20 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %21 = getelementptr inbounds %struct.mtk_dpi, %struct.mtk_dpi* %20, i32 0, i32 7
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (i32)*, i32 (i32)** %23, align 8
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %26 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 %24(i32 %27)
  store i32 %28, i32* %14, align 4
  %29 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %30 = call i32 @drm_display_mode_to_videomode(%struct.drm_display_mode* %29, %struct.videomode* %12)
  %31 = getelementptr inbounds %struct.videomode, %struct.videomode* %12, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %14, align 4
  %34 = mul i32 %32, %33
  %35 = zext i32 %34 to i64
  store i64 %35, i64* %13, align 8
  %36 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %37 = getelementptr inbounds %struct.mtk_dpi, %struct.mtk_dpi* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load i64, i64* %13, align 8
  %40 = getelementptr inbounds %struct.videomode, %struct.videomode* %12, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_dbg(i32 %38, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %39, i32 %41)
  %43 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %44 = getelementptr inbounds %struct.mtk_dpi, %struct.mtk_dpi* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = load i64, i64* %13, align 8
  %47 = call i32 @clk_set_rate(i32 %45, i64 %46)
  %48 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %49 = getelementptr inbounds %struct.mtk_dpi, %struct.mtk_dpi* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = call i8* @clk_get_rate(i32 %50)
  %52 = ptrtoint i8* %51 to i64
  store i64 %52, i64* %13, align 8
  %53 = load i64, i64* %13, align 8
  %54 = load i32, i32* %14, align 4
  %55 = zext i32 %54 to i64
  %56 = udiv i64 %53, %55
  %57 = trunc i64 %56 to i32
  %58 = getelementptr inbounds %struct.videomode, %struct.videomode* %12, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %60 = getelementptr inbounds %struct.mtk_dpi, %struct.mtk_dpi* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.videomode, %struct.videomode* %12, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = zext i32 %63 to i64
  %65 = call i32 @clk_set_rate(i32 %61, i64 %64)
  %66 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %67 = getelementptr inbounds %struct.mtk_dpi, %struct.mtk_dpi* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @clk_get_rate(i32 %68)
  %70 = ptrtoint i8* %69 to i32
  %71 = getelementptr inbounds %struct.videomode, %struct.videomode* %12, i32 0, i32 0
  store i32 %70, i32* %71, align 4
  %72 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %73 = getelementptr inbounds %struct.mtk_dpi, %struct.mtk_dpi* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load i64, i64* %13, align 8
  %76 = getelementptr inbounds %struct.videomode, %struct.videomode* %12, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @dev_dbg(i32 %74, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %75, i32 %77)
  %79 = getelementptr inbounds %struct.mtk_dpi_yc_limit, %struct.mtk_dpi_yc_limit* %5, i32 0, i32 0
  store i32 16, i32* %79, align 4
  %80 = getelementptr inbounds %struct.mtk_dpi_yc_limit, %struct.mtk_dpi_yc_limit* %5, i32 0, i32 1
  store i32 4064, i32* %80, align 4
  %81 = getelementptr inbounds %struct.mtk_dpi_yc_limit, %struct.mtk_dpi_yc_limit* %5, i32 0, i32 2
  store i32 16, i32* %81, align 4
  %82 = getelementptr inbounds %struct.mtk_dpi_yc_limit, %struct.mtk_dpi_yc_limit* %5, i32 0, i32 3
  store i32 4064, i32* %82, align 4
  %83 = load i8*, i8** @MTK_DPI_POLARITY_FALLING, align 8
  %84 = getelementptr inbounds %struct.mtk_dpi_polarities, %struct.mtk_dpi_polarities* %6, i32 0, i32 3
  store i8* %83, i8** %84, align 8
  %85 = load i8*, i8** @MTK_DPI_POLARITY_RISING, align 8
  %86 = getelementptr inbounds %struct.mtk_dpi_polarities, %struct.mtk_dpi_polarities* %6, i32 0, i32 2
  store i8* %85, i8** %86, align 8
  %87 = getelementptr inbounds %struct.videomode, %struct.videomode* %12, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @DISPLAY_FLAGS_HSYNC_HIGH, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %2
  %93 = load i8*, i8** @MTK_DPI_POLARITY_FALLING, align 8
  br label %96

94:                                               ; preds = %2
  %95 = load i8*, i8** @MTK_DPI_POLARITY_RISING, align 8
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i8* [ %93, %92 ], [ %95, %94 ]
  %98 = getelementptr inbounds %struct.mtk_dpi_polarities, %struct.mtk_dpi_polarities* %6, i32 0, i32 1
  store i8* %97, i8** %98, align 8
  %99 = getelementptr inbounds %struct.videomode, %struct.videomode* %12, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @DISPLAY_FLAGS_VSYNC_HIGH, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %96
  %105 = load i8*, i8** @MTK_DPI_POLARITY_FALLING, align 8
  br label %108

106:                                              ; preds = %96
  %107 = load i8*, i8** @MTK_DPI_POLARITY_RISING, align 8
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i8* [ %105, %104 ], [ %107, %106 ]
  %110 = getelementptr inbounds %struct.mtk_dpi_polarities, %struct.mtk_dpi_polarities* %6, i32 0, i32 0
  store i8* %109, i8** %110, align 8
  %111 = getelementptr inbounds %struct.videomode, %struct.videomode* %12, i32 0, i32 9
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.mtk_dpi_sync_param, %struct.mtk_dpi_sync_param* %7, i32 0, i32 3
  store i32 %112, i32* %113, align 4
  %114 = getelementptr inbounds %struct.videomode, %struct.videomode* %12, i32 0, i32 8
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.mtk_dpi_sync_param, %struct.mtk_dpi_sync_param* %7, i32 0, i32 2
  store i32 %115, i32* %116, align 4
  %117 = getelementptr inbounds %struct.videomode, %struct.videomode* %12, i32 0, i32 7
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.mtk_dpi_sync_param, %struct.mtk_dpi_sync_param* %7, i32 0, i32 1
  store i32 %118, i32* %119, align 4
  %120 = getelementptr inbounds %struct.mtk_dpi_sync_param, %struct.mtk_dpi_sync_param* %7, i32 0, i32 0
  store i32 0, i32* %120, align 4
  %121 = getelementptr inbounds %struct.videomode, %struct.videomode* %12, i32 0, i32 6
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.mtk_dpi_sync_param, %struct.mtk_dpi_sync_param* %8, i32 0, i32 3
  store i32 %122, i32* %123, align 4
  %124 = getelementptr inbounds %struct.videomode, %struct.videomode* %12, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.mtk_dpi_sync_param, %struct.mtk_dpi_sync_param* %8, i32 0, i32 2
  store i32 %125, i32* %126, align 4
  %127 = getelementptr inbounds %struct.videomode, %struct.videomode* %12, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.mtk_dpi_sync_param, %struct.mtk_dpi_sync_param* %8, i32 0, i32 1
  store i32 %128, i32* %129, align 4
  %130 = getelementptr inbounds %struct.mtk_dpi_sync_param, %struct.mtk_dpi_sync_param* %8, i32 0, i32 0
  store i32 0, i32* %130, align 4
  %131 = getelementptr inbounds %struct.videomode, %struct.videomode* %12, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @DISPLAY_FLAGS_INTERLACED, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %152

136:                                              ; preds = %108
  %137 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %138 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @DRM_MODE_FLAG_3D_MASK, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %136
  %144 = bitcast %struct.mtk_dpi_sync_param* %9 to i8*
  %145 = bitcast %struct.mtk_dpi_sync_param* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %144, i8* align 4 %145, i64 20, i1 false)
  %146 = bitcast %struct.mtk_dpi_sync_param* %10 to i8*
  %147 = bitcast %struct.mtk_dpi_sync_param* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %146, i8* align 4 %147, i64 20, i1 false)
  %148 = bitcast %struct.mtk_dpi_sync_param* %11 to i8*
  %149 = bitcast %struct.mtk_dpi_sync_param* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %148, i8* align 4 %149, i64 20, i1 false)
  %150 = getelementptr inbounds %struct.mtk_dpi_sync_param, %struct.mtk_dpi_sync_param* %9, i32 0, i32 0
  store i32 1, i32* %150, align 4
  %151 = getelementptr inbounds %struct.mtk_dpi_sync_param, %struct.mtk_dpi_sync_param* %11, i32 0, i32 0
  store i32 1, i32* %151, align 4
  br label %187

152:                                              ; preds = %136, %108
  %153 = getelementptr inbounds %struct.videomode, %struct.videomode* %12, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @DISPLAY_FLAGS_INTERLACED, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %152
  %159 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %160 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @DRM_MODE_FLAG_3D_MASK, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %158
  %166 = bitcast %struct.mtk_dpi_sync_param* %9 to i8*
  %167 = bitcast %struct.mtk_dpi_sync_param* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %166, i8* align 4 %167, i64 20, i1 false)
  %168 = getelementptr inbounds %struct.mtk_dpi_sync_param, %struct.mtk_dpi_sync_param* %9, i32 0, i32 0
  store i32 1, i32* %168, align 4
  br label %186

169:                                              ; preds = %158, %152
  %170 = getelementptr inbounds %struct.videomode, %struct.videomode* %12, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @DISPLAY_FLAGS_INTERLACED, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %185, label %175

175:                                              ; preds = %169
  %176 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %177 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @DRM_MODE_FLAG_3D_MASK, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %175
  %183 = bitcast %struct.mtk_dpi_sync_param* %10 to i8*
  %184 = bitcast %struct.mtk_dpi_sync_param* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %183, i8* align 4 %184, i64 20, i1 false)
  br label %185

185:                                              ; preds = %182, %175, %169
  br label %186

186:                                              ; preds = %185, %165
  br label %187

187:                                              ; preds = %186, %143
  %188 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %189 = call i32 @mtk_dpi_sw_reset(%struct.mtk_dpi* %188, i32 1)
  %190 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %191 = call i32 @mtk_dpi_config_pol(%struct.mtk_dpi* %190, %struct.mtk_dpi_polarities* %6)
  %192 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %193 = call i32 @mtk_dpi_config_hsync(%struct.mtk_dpi* %192, %struct.mtk_dpi_sync_param* %7)
  %194 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %195 = call i32 @mtk_dpi_config_vsync_lodd(%struct.mtk_dpi* %194, %struct.mtk_dpi_sync_param* %8)
  %196 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %197 = call i32 @mtk_dpi_config_vsync_rodd(%struct.mtk_dpi* %196, %struct.mtk_dpi_sync_param* %10)
  %198 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %199 = call i32 @mtk_dpi_config_vsync_leven(%struct.mtk_dpi* %198, %struct.mtk_dpi_sync_param* %9)
  %200 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %201 = call i32 @mtk_dpi_config_vsync_reven(%struct.mtk_dpi* %200, %struct.mtk_dpi_sync_param* %11)
  %202 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %203 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %204 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @DRM_MODE_FLAG_3D_MASK, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  %209 = xor i1 %208, true
  %210 = xor i1 %209, true
  %211 = zext i1 %210 to i32
  %212 = call i32 @mtk_dpi_config_3d(%struct.mtk_dpi* %202, i32 %211)
  %213 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %214 = getelementptr inbounds %struct.videomode, %struct.videomode* %12, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @DISPLAY_FLAGS_INTERLACED, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  %219 = xor i1 %218, true
  %220 = xor i1 %219, true
  %221 = zext i1 %220 to i32
  %222 = call i32 @mtk_dpi_config_interface(%struct.mtk_dpi* %213, i32 %221)
  %223 = getelementptr inbounds %struct.videomode, %struct.videomode* %12, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @DISPLAY_FLAGS_INTERLACED, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %236

228:                                              ; preds = %187
  %229 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %230 = getelementptr inbounds %struct.videomode, %struct.videomode* %12, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = getelementptr inbounds %struct.videomode, %struct.videomode* %12, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = ashr i32 %233, 1
  %235 = call i32 @mtk_dpi_config_fb_size(%struct.mtk_dpi* %229, i32 %231, i32 %234)
  br label %243

236:                                              ; preds = %187
  %237 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %238 = getelementptr inbounds %struct.videomode, %struct.videomode* %12, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = getelementptr inbounds %struct.videomode, %struct.videomode* %12, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @mtk_dpi_config_fb_size(%struct.mtk_dpi* %237, i32 %239, i32 %241)
  br label %243

243:                                              ; preds = %236, %228
  %244 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %245 = call i32 @mtk_dpi_config_channel_limit(%struct.mtk_dpi* %244, %struct.mtk_dpi_yc_limit* %5)
  %246 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %247 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %248 = getelementptr inbounds %struct.mtk_dpi, %struct.mtk_dpi* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @mtk_dpi_config_bit_num(%struct.mtk_dpi* %246, i32 %249)
  %251 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %252 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %253 = getelementptr inbounds %struct.mtk_dpi, %struct.mtk_dpi* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @mtk_dpi_config_channel_swap(%struct.mtk_dpi* %251, i32 %254)
  %256 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %257 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %258 = getelementptr inbounds %struct.mtk_dpi, %struct.mtk_dpi* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @mtk_dpi_config_yc_map(%struct.mtk_dpi* %256, i32 %259)
  %261 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %262 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %263 = getelementptr inbounds %struct.mtk_dpi, %struct.mtk_dpi* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @mtk_dpi_config_color_format(%struct.mtk_dpi* %261, i32 %264)
  %266 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %267 = call i32 @mtk_dpi_config_2n_h_fre(%struct.mtk_dpi* %266)
  %268 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %269 = call i32 @mtk_dpi_config_disable_edge(%struct.mtk_dpi* %268)
  %270 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %271 = call i32 @mtk_dpi_sw_reset(%struct.mtk_dpi* %270, i32 0)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @drm_display_mode_to_videomode(%struct.drm_display_mode*, %struct.videomode*) #2

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32) #2

declare dso_local i32 @clk_set_rate(i32, i64) #2

declare dso_local i8* @clk_get_rate(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mtk_dpi_sw_reset(%struct.mtk_dpi*, i32) #2

declare dso_local i32 @mtk_dpi_config_pol(%struct.mtk_dpi*, %struct.mtk_dpi_polarities*) #2

declare dso_local i32 @mtk_dpi_config_hsync(%struct.mtk_dpi*, %struct.mtk_dpi_sync_param*) #2

declare dso_local i32 @mtk_dpi_config_vsync_lodd(%struct.mtk_dpi*, %struct.mtk_dpi_sync_param*) #2

declare dso_local i32 @mtk_dpi_config_vsync_rodd(%struct.mtk_dpi*, %struct.mtk_dpi_sync_param*) #2

declare dso_local i32 @mtk_dpi_config_vsync_leven(%struct.mtk_dpi*, %struct.mtk_dpi_sync_param*) #2

declare dso_local i32 @mtk_dpi_config_vsync_reven(%struct.mtk_dpi*, %struct.mtk_dpi_sync_param*) #2

declare dso_local i32 @mtk_dpi_config_3d(%struct.mtk_dpi*, i32) #2

declare dso_local i32 @mtk_dpi_config_interface(%struct.mtk_dpi*, i32) #2

declare dso_local i32 @mtk_dpi_config_fb_size(%struct.mtk_dpi*, i32, i32) #2

declare dso_local i32 @mtk_dpi_config_channel_limit(%struct.mtk_dpi*, %struct.mtk_dpi_yc_limit*) #2

declare dso_local i32 @mtk_dpi_config_bit_num(%struct.mtk_dpi*, i32) #2

declare dso_local i32 @mtk_dpi_config_channel_swap(%struct.mtk_dpi*, i32) #2

declare dso_local i32 @mtk_dpi_config_yc_map(%struct.mtk_dpi*, i32) #2

declare dso_local i32 @mtk_dpi_config_color_format(%struct.mtk_dpi*, i32) #2

declare dso_local i32 @mtk_dpi_config_2n_h_fre(%struct.mtk_dpi*) #2

declare dso_local i32 @mtk_dpi_config_disable_edge(%struct.mtk_dpi*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
