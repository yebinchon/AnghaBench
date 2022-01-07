; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_ast_get_vbios_mode_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_ast_get_vbios_mode_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_vbios_enhtable = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.drm_crtc = type { %struct.TYPE_8__, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_5__ = type { %struct.ast_private* }
%struct.ast_private = type { i64 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ast_vbios_mode_info = type { %struct.ast_vbios_enhtable*, i32* }

@vbios_stdtable = common dso_local global i32* null, align 8
@VGAModeIndex = common dso_local global i64 0, align 8
@HiCModeIndex = common dso_local global i64 0, align 8
@TrueCModeIndex = common dso_local global i64 0, align 8
@res_640x480 = common dso_local global %struct.ast_vbios_enhtable* null, align 8
@res_800x600 = common dso_local global %struct.ast_vbios_enhtable* null, align 8
@res_1024x768 = common dso_local global %struct.ast_vbios_enhtable* null, align 8
@res_1280x800 = common dso_local global %struct.ast_vbios_enhtable* null, align 8
@res_1280x1024 = common dso_local global %struct.ast_vbios_enhtable* null, align 8
@res_1360x768 = common dso_local global %struct.ast_vbios_enhtable* null, align 8
@res_1440x900 = common dso_local global %struct.ast_vbios_enhtable* null, align 8
@res_1600x900 = common dso_local global %struct.ast_vbios_enhtable* null, align 8
@res_1600x1200 = common dso_local global %struct.ast_vbios_enhtable* null, align 8
@res_1680x1050 = common dso_local global %struct.ast_vbios_enhtable* null, align 8
@res_1920x1080 = common dso_local global %struct.ast_vbios_enhtable* null, align 8
@res_1920x1200 = common dso_local global %struct.ast_vbios_enhtable* null, align 8
@WideScreenMode = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NVSYNC = common dso_local global i32 0, align 4
@PVSync = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@NVSync = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@PHSync = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@NHSync = common dso_local global i32 0, align 4
@HBorder = common dso_local global i32 0, align 4
@VBorder = common dso_local global i32 0, align 4
@AST1180 = common dso_local global i64 0, align 8
@AST_IO_CRTC_PORT = common dso_local global i32 0, align 4
@NewModeInfo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_display_mode*, %struct.drm_display_mode*, %struct.ast_vbios_mode_info*)* @ast_get_vbios_mode_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ast_get_vbios_mode_info(%struct.drm_crtc* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2, %struct.ast_vbios_mode_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca %struct.drm_display_mode*, align 8
  %9 = alloca %struct.ast_vbios_mode_info*, align 8
  %10 = alloca %struct.ast_private*, align 8
  %11 = alloca %struct.drm_framebuffer*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.ast_vbios_enhtable*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.ast_vbios_enhtable*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %6, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %7, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %8, align 8
  store %struct.ast_vbios_mode_info* %3, %struct.ast_vbios_mode_info** %9, align 8
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %22 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %21, i32 0, i32 2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.ast_private*, %struct.ast_private** %24, align 8
  store %struct.ast_private* %25, %struct.ast_private** %10, align 8
  %26 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %27 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %29, align 8
  store %struct.drm_framebuffer* %30, %struct.drm_framebuffer** %11, align 8
  store i64 0, i64* %12, align 8
  store %struct.ast_vbios_enhtable* null, %struct.ast_vbios_enhtable** %16, align 8
  %31 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %32 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %37, 8
  switch i32 %38, label %61 [
    i32 8, label %39
    i32 16, label %47
    i32 24, label %54
    i32 32, label %54
  ]

39:                                               ; preds = %4
  %40 = load i32*, i32** @vbios_stdtable, align 8
  %41 = load i64, i64* @VGAModeIndex, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %9, align 8
  %44 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %43, i32 0, i32 1
  store i32* %42, i32** %44, align 8
  %45 = load i64, i64* @VGAModeIndex, align 8
  %46 = sub i64 %45, 1
  store i64 %46, i64* %14, align 8
  br label %62

47:                                               ; preds = %4
  %48 = load i32*, i32** @vbios_stdtable, align 8
  %49 = load i64, i64* @HiCModeIndex, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %9, align 8
  %52 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %51, i32 0, i32 1
  store i32* %50, i32** %52, align 8
  %53 = load i64, i64* @HiCModeIndex, align 8
  store i64 %53, i64* %14, align 8
  br label %62

54:                                               ; preds = %4, %4
  %55 = load i32*, i32** @vbios_stdtable, align 8
  %56 = load i64, i64* @TrueCModeIndex, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %9, align 8
  %59 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %58, i32 0, i32 1
  store i32* %57, i32** %59, align 8
  %60 = load i64, i64* @TrueCModeIndex, align 8
  store i64 %60, i64* %14, align 8
  br label %62

61:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %523

62:                                               ; preds = %54, %47, %39
  %63 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %64 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  switch i32 %66, label %160 [
    i32 640, label %67
    i32 800, label %73
    i32 1024, label %79
    i32 1280, label %85
    i32 1360, label %104
    i32 1440, label %110
    i32 1600, label %116
    i32 1680, label %135
    i32 1920, label %141
  ]

67:                                               ; preds = %62
  %68 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** @res_640x480, align 8
  %69 = load i64, i64* %12, align 8
  %70 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %68, i64 %69
  %71 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %9, align 8
  %72 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %71, i32 0, i32 0
  store %struct.ast_vbios_enhtable* %70, %struct.ast_vbios_enhtable** %72, align 8
  br label %161

73:                                               ; preds = %62
  %74 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** @res_800x600, align 8
  %75 = load i64, i64* %12, align 8
  %76 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %74, i64 %75
  %77 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %9, align 8
  %78 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %77, i32 0, i32 0
  store %struct.ast_vbios_enhtable* %76, %struct.ast_vbios_enhtable** %78, align 8
  br label %161

79:                                               ; preds = %62
  %80 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** @res_1024x768, align 8
  %81 = load i64, i64* %12, align 8
  %82 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %80, i64 %81
  %83 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %9, align 8
  %84 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %83, i32 0, i32 0
  store %struct.ast_vbios_enhtable* %82, %struct.ast_vbios_enhtable** %84, align 8
  br label %161

85:                                               ; preds = %62
  %86 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %87 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 800
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** @res_1280x800, align 8
  %93 = load i64, i64* %12, align 8
  %94 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %92, i64 %93
  %95 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %9, align 8
  %96 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %95, i32 0, i32 0
  store %struct.ast_vbios_enhtable* %94, %struct.ast_vbios_enhtable** %96, align 8
  br label %103

97:                                               ; preds = %85
  %98 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** @res_1280x1024, align 8
  %99 = load i64, i64* %12, align 8
  %100 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %98, i64 %99
  %101 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %9, align 8
  %102 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %101, i32 0, i32 0
  store %struct.ast_vbios_enhtable* %100, %struct.ast_vbios_enhtable** %102, align 8
  br label %103

103:                                              ; preds = %97, %91
  br label %161

104:                                              ; preds = %62
  %105 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** @res_1360x768, align 8
  %106 = load i64, i64* %12, align 8
  %107 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %105, i64 %106
  %108 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %9, align 8
  %109 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %108, i32 0, i32 0
  store %struct.ast_vbios_enhtable* %107, %struct.ast_vbios_enhtable** %109, align 8
  br label %161

110:                                              ; preds = %62
  %111 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** @res_1440x900, align 8
  %112 = load i64, i64* %12, align 8
  %113 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %111, i64 %112
  %114 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %9, align 8
  %115 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %114, i32 0, i32 0
  store %struct.ast_vbios_enhtable* %113, %struct.ast_vbios_enhtable** %115, align 8
  br label %161

116:                                              ; preds = %62
  %117 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %118 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 900
  br i1 %121, label %122, label %128

122:                                              ; preds = %116
  %123 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** @res_1600x900, align 8
  %124 = load i64, i64* %12, align 8
  %125 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %123, i64 %124
  %126 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %9, align 8
  %127 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %126, i32 0, i32 0
  store %struct.ast_vbios_enhtable* %125, %struct.ast_vbios_enhtable** %127, align 8
  br label %134

128:                                              ; preds = %116
  %129 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** @res_1600x1200, align 8
  %130 = load i64, i64* %12, align 8
  %131 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %129, i64 %130
  %132 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %9, align 8
  %133 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %132, i32 0, i32 0
  store %struct.ast_vbios_enhtable* %131, %struct.ast_vbios_enhtable** %133, align 8
  br label %134

134:                                              ; preds = %128, %122
  br label %161

135:                                              ; preds = %62
  %136 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** @res_1680x1050, align 8
  %137 = load i64, i64* %12, align 8
  %138 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %136, i64 %137
  %139 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %9, align 8
  %140 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %139, i32 0, i32 0
  store %struct.ast_vbios_enhtable* %138, %struct.ast_vbios_enhtable** %140, align 8
  br label %161

141:                                              ; preds = %62
  %142 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %143 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, 1080
  br i1 %146, label %147, label %153

147:                                              ; preds = %141
  %148 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** @res_1920x1080, align 8
  %149 = load i64, i64* %12, align 8
  %150 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %148, i64 %149
  %151 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %9, align 8
  %152 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %151, i32 0, i32 0
  store %struct.ast_vbios_enhtable* %150, %struct.ast_vbios_enhtable** %152, align 8
  br label %159

153:                                              ; preds = %141
  %154 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** @res_1920x1200, align 8
  %155 = load i64, i64* %12, align 8
  %156 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %154, i64 %155
  %157 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %9, align 8
  %158 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %157, i32 0, i32 0
  store %struct.ast_vbios_enhtable* %156, %struct.ast_vbios_enhtable** %158, align 8
  br label %159

159:                                              ; preds = %153, %147
  br label %161

160:                                              ; preds = %62
  store i32 0, i32* %5, align 4
  br label %523

161:                                              ; preds = %159, %135, %134, %110, %104, %103, %79, %73, %67
  %162 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %163 = call i64 @drm_mode_vrefresh(%struct.drm_display_mode* %162)
  store i64 %163, i64* %15, align 8
  %164 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %9, align 8
  %165 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %164, i32 0, i32 0
  %166 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** %165, align 8
  %167 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @WideScreenMode, align 4
  %170 = and i32 %168, %169
  store i32 %170, i32* %19, align 4
  br label %171

171:                                              ; preds = %273, %161
  %172 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %9, align 8
  %173 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %172, i32 0, i32 0
  %174 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** %173, align 8
  store %struct.ast_vbios_enhtable* %174, %struct.ast_vbios_enhtable** %20, align 8
  br label %175

175:                                              ; preds = %262, %239, %171
  %176 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** %20, align 8
  %177 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 255
  br i1 %179, label %180, label %265

180:                                              ; preds = %175
  %181 = load i32, i32* %19, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %242

183:                                              ; preds = %180
  %184 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %185 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %183
  %191 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** %20, align 8
  %192 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @PVSync, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %239, label %197

197:                                              ; preds = %190, %183
  %198 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %199 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %197
  %205 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** %20, align 8
  %206 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @NVSync, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %239, label %211

211:                                              ; preds = %204, %197
  %212 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %213 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %225

218:                                              ; preds = %211
  %219 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** %20, align 8
  %220 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @PHSync, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %239, label %225

225:                                              ; preds = %218, %211
  %226 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %227 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %242

232:                                              ; preds = %225
  %233 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** %20, align 8
  %234 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @NHSync, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %232, %218, %204, %190
  %240 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** %20, align 8
  %241 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %240, i32 1
  store %struct.ast_vbios_enhtable* %241, %struct.ast_vbios_enhtable** %20, align 8
  br label %175

242:                                              ; preds = %232, %225, %180
  %243 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** %20, align 8
  %244 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = sext i32 %245 to i64
  %247 = load i64, i64* %15, align 8
  %248 = icmp ule i64 %246, %247
  br i1 %248, label %249, label %262

249:                                              ; preds = %242
  %250 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** %16, align 8
  %251 = icmp ne %struct.ast_vbios_enhtable* %250, null
  br i1 %251, label %252, label %260

252:                                              ; preds = %249
  %253 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** %20, align 8
  %254 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** %16, align 8
  %257 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = icmp sgt i32 %255, %258
  br i1 %259, label %260, label %262

260:                                              ; preds = %252, %249
  %261 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** %20, align 8
  store %struct.ast_vbios_enhtable* %261, %struct.ast_vbios_enhtable** %16, align 8
  br label %262

262:                                              ; preds = %260, %252, %242
  %263 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** %20, align 8
  %264 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %263, i32 1
  store %struct.ast_vbios_enhtable* %264, %struct.ast_vbios_enhtable** %20, align 8
  br label %175

265:                                              ; preds = %175
  %266 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** %16, align 8
  %267 = icmp ne %struct.ast_vbios_enhtable* %266, null
  br i1 %267, label %271, label %268

268:                                              ; preds = %265
  %269 = load i32, i32* %19, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %272, label %271

271:                                              ; preds = %268, %265
  br label %274

272:                                              ; preds = %268
  store i32 0, i32* %19, align 4
  br label %273

273:                                              ; preds = %272
  br i1 true, label %171, label %274

274:                                              ; preds = %273, %271
  %275 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** %16, align 8
  %276 = icmp ne %struct.ast_vbios_enhtable* %275, null
  br i1 %276, label %277, label %281

277:                                              ; preds = %274
  %278 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** %16, align 8
  %279 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %9, align 8
  %280 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %279, i32 0, i32 0
  store %struct.ast_vbios_enhtable* %278, %struct.ast_vbios_enhtable** %280, align 8
  br label %281

281:                                              ; preds = %277, %274
  %282 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %9, align 8
  %283 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %282, i32 0, i32 0
  %284 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** %283, align 8
  %285 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @HBorder, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  %290 = zext i1 %289 to i64
  %291 = select i1 %289, i32 8, i32 0
  %292 = sext i32 %291 to i64
  store i64 %292, i64* %17, align 8
  %293 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %9, align 8
  %294 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %293, i32 0, i32 0
  %295 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** %294, align 8
  %296 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = load i32, i32* @VBorder, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  %301 = zext i1 %300 to i64
  %302 = select i1 %300, i32 8, i32 0
  %303 = sext i32 %302 to i64
  store i64 %303, i64* %18, align 8
  %304 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %9, align 8
  %305 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %304, i32 0, i32 0
  %306 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** %305, align 8
  %307 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %306, i32 0, i32 11
  %308 = load i64, i64* %307, align 8
  %309 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %310 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %309, i32 0, i32 13
  store i64 %308, i64* %310, align 8
  %311 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %9, align 8
  %312 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %311, i32 0, i32 0
  %313 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** %312, align 8
  %314 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %313, i32 0, i32 10
  %315 = load i64, i64* %314, align 8
  %316 = load i64, i64* %17, align 8
  %317 = add i64 %315, %316
  %318 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %319 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %318, i32 0, i32 12
  store i64 %317, i64* %319, align 8
  %320 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %9, align 8
  %321 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %320, i32 0, i32 0
  %322 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** %321, align 8
  %323 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %322, i32 0, i32 11
  %324 = load i64, i64* %323, align 8
  %325 = load i64, i64* %17, align 8
  %326 = sub i64 %324, %325
  %327 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %328 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %327, i32 0, i32 11
  store i64 %326, i64* %328, align 8
  %329 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %9, align 8
  %330 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %329, i32 0, i32 0
  %331 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** %330, align 8
  %332 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %331, i32 0, i32 10
  %333 = load i64, i64* %332, align 8
  %334 = load i64, i64* %17, align 8
  %335 = add i64 %333, %334
  %336 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %9, align 8
  %337 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %336, i32 0, i32 0
  %338 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** %337, align 8
  %339 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %338, i32 0, i32 9
  %340 = load i64, i64* %339, align 8
  %341 = add i64 %335, %340
  %342 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %343 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %342, i32 0, i32 10
  store i64 %341, i64* %343, align 8
  %344 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %9, align 8
  %345 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %344, i32 0, i32 0
  %346 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** %345, align 8
  %347 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %346, i32 0, i32 10
  %348 = load i64, i64* %347, align 8
  %349 = load i64, i64* %17, align 8
  %350 = add i64 %348, %349
  %351 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %9, align 8
  %352 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %351, i32 0, i32 0
  %353 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** %352, align 8
  %354 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %353, i32 0, i32 9
  %355 = load i64, i64* %354, align 8
  %356 = add i64 %350, %355
  %357 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %9, align 8
  %358 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %357, i32 0, i32 0
  %359 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** %358, align 8
  %360 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %359, i32 0, i32 8
  %361 = load i64, i64* %360, align 8
  %362 = add i64 %356, %361
  %363 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %364 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %363, i32 0, i32 9
  store i64 %362, i64* %364, align 8
  %365 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %9, align 8
  %366 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %365, i32 0, i32 0
  %367 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** %366, align 8
  %368 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %367, i32 0, i32 7
  %369 = load i64, i64* %368, align 8
  %370 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %371 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %370, i32 0, i32 8
  store i64 %369, i64* %371, align 8
  %372 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %9, align 8
  %373 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %372, i32 0, i32 0
  %374 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** %373, align 8
  %375 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %374, i32 0, i32 6
  %376 = load i64, i64* %375, align 8
  %377 = load i64, i64* %18, align 8
  %378 = add i64 %376, %377
  %379 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %380 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %379, i32 0, i32 7
  store i64 %378, i64* %380, align 8
  %381 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %9, align 8
  %382 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %381, i32 0, i32 0
  %383 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** %382, align 8
  %384 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %383, i32 0, i32 7
  %385 = load i64, i64* %384, align 8
  %386 = load i64, i64* %18, align 8
  %387 = sub i64 %385, %386
  %388 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %389 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %388, i32 0, i32 6
  store i64 %387, i64* %389, align 8
  %390 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %9, align 8
  %391 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %390, i32 0, i32 0
  %392 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** %391, align 8
  %393 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %392, i32 0, i32 6
  %394 = load i64, i64* %393, align 8
  %395 = load i64, i64* %18, align 8
  %396 = add i64 %394, %395
  %397 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %9, align 8
  %398 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %397, i32 0, i32 0
  %399 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** %398, align 8
  %400 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %399, i32 0, i32 5
  %401 = load i64, i64* %400, align 8
  %402 = add i64 %396, %401
  %403 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %404 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %403, i32 0, i32 5
  store i64 %402, i64* %404, align 8
  %405 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %9, align 8
  %406 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %405, i32 0, i32 0
  %407 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** %406, align 8
  %408 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %407, i32 0, i32 6
  %409 = load i64, i64* %408, align 8
  %410 = load i64, i64* %18, align 8
  %411 = add i64 %409, %410
  %412 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %9, align 8
  %413 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %412, i32 0, i32 0
  %414 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** %413, align 8
  %415 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %414, i32 0, i32 5
  %416 = load i64, i64* %415, align 8
  %417 = add i64 %411, %416
  %418 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %9, align 8
  %419 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %418, i32 0, i32 0
  %420 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** %419, align 8
  %421 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %420, i32 0, i32 4
  %422 = load i64, i64* %421, align 8
  %423 = add i64 %417, %422
  %424 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %425 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %424, i32 0, i32 4
  store i64 %423, i64* %425, align 8
  %426 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %9, align 8
  %427 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %426, i32 0, i32 0
  %428 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** %427, align 8
  %429 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %428, i32 0, i32 2
  %430 = load i64, i64* %429, align 8
  store i64 %430, i64* %12, align 8
  %431 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %9, align 8
  %432 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %431, i32 0, i32 0
  %433 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** %432, align 8
  %434 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %433, i32 0, i32 3
  %435 = load i64, i64* %434, align 8
  store i64 %435, i64* %13, align 8
  %436 = load %struct.ast_private*, %struct.ast_private** %10, align 8
  %437 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %436, i32 0, i32 0
  %438 = load i64, i64* %437, align 8
  %439 = load i64, i64* @AST1180, align 8
  %440 = icmp eq i64 %438, %439
  br i1 %440, label %441, label %442

441:                                              ; preds = %281
  br label %522

442:                                              ; preds = %281
  %443 = load %struct.ast_private*, %struct.ast_private** %10, align 8
  %444 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %445 = load i64, i64* %14, align 8
  %446 = and i64 %445, 15
  %447 = shl i64 %446, 4
  %448 = trunc i64 %447 to i32
  %449 = call i32 @ast_set_index_reg(%struct.ast_private* %443, i32 %444, i32 140, i32 %448)
  %450 = load %struct.ast_private*, %struct.ast_private** %10, align 8
  %451 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %452 = load i64, i64* %12, align 8
  %453 = and i64 %452, 255
  %454 = trunc i64 %453 to i32
  %455 = call i32 @ast_set_index_reg(%struct.ast_private* %450, i32 %451, i32 141, i32 %454)
  %456 = load %struct.ast_private*, %struct.ast_private** %10, align 8
  %457 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %458 = load i64, i64* %13, align 8
  %459 = and i64 %458, 255
  %460 = trunc i64 %459 to i32
  %461 = call i32 @ast_set_index_reg(%struct.ast_private* %456, i32 %457, i32 142, i32 %460)
  %462 = load %struct.ast_private*, %struct.ast_private** %10, align 8
  %463 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %464 = call i32 @ast_set_index_reg(%struct.ast_private* %462, i32 %463, i32 145, i32 0)
  %465 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %9, align 8
  %466 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %465, i32 0, i32 0
  %467 = load %struct.ast_vbios_enhtable*, %struct.ast_vbios_enhtable** %466, align 8
  %468 = getelementptr inbounds %struct.ast_vbios_enhtable, %struct.ast_vbios_enhtable* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 8
  %470 = load i32, i32* @NewModeInfo, align 4
  %471 = and i32 %469, %470
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %473, label %521

473:                                              ; preds = %442
  %474 = load %struct.ast_private*, %struct.ast_private** %10, align 8
  %475 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %476 = call i32 @ast_set_index_reg(%struct.ast_private* %474, i32 %475, i32 145, i32 168)
  %477 = load %struct.ast_private*, %struct.ast_private** %10, align 8
  %478 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %479 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %480 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %479, i32 0, i32 0
  %481 = load %struct.TYPE_7__*, %struct.TYPE_7__** %480, align 8
  %482 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %481, i32 0, i32 0
  %483 = load i32*, i32** %482, align 8
  %484 = getelementptr inbounds i32, i32* %483, i64 0
  %485 = load i32, i32* %484, align 4
  %486 = mul nsw i32 %485, 8
  %487 = call i32 @ast_set_index_reg(%struct.ast_private* %477, i32 %478, i32 146, i32 %486)
  %488 = load %struct.ast_private*, %struct.ast_private** %10, align 8
  %489 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %490 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %491 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %490, i32 0, i32 1
  %492 = load i32, i32* %491, align 4
  %493 = sdiv i32 %492, 1000
  %494 = call i32 @ast_set_index_reg(%struct.ast_private* %488, i32 %489, i32 147, i32 %493)
  %495 = load %struct.ast_private*, %struct.ast_private** %10, align 8
  %496 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %497 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %498 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %497, i32 0, i32 2
  %499 = load i32, i32* %498, align 8
  %500 = call i32 @ast_set_index_reg(%struct.ast_private* %495, i32 %496, i32 148, i32 %499)
  %501 = load %struct.ast_private*, %struct.ast_private** %10, align 8
  %502 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %503 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %504 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %503, i32 0, i32 2
  %505 = load i32, i32* %504, align 8
  %506 = ashr i32 %505, 8
  %507 = call i32 @ast_set_index_reg(%struct.ast_private* %501, i32 %502, i32 149, i32 %506)
  %508 = load %struct.ast_private*, %struct.ast_private** %10, align 8
  %509 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %510 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %511 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %510, i32 0, i32 3
  %512 = load i32, i32* %511, align 4
  %513 = call i32 @ast_set_index_reg(%struct.ast_private* %508, i32 %509, i32 150, i32 %512)
  %514 = load %struct.ast_private*, %struct.ast_private** %10, align 8
  %515 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %516 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %517 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %516, i32 0, i32 3
  %518 = load i32, i32* %517, align 4
  %519 = ashr i32 %518, 8
  %520 = call i32 @ast_set_index_reg(%struct.ast_private* %514, i32 %515, i32 151, i32 %519)
  br label %521

521:                                              ; preds = %473, %442
  br label %522

522:                                              ; preds = %521, %441
  store i32 1, i32* %5, align 4
  br label %523

523:                                              ; preds = %522, %160, %61
  %524 = load i32, i32* %5, align 4
  ret i32 %524
}

declare dso_local i64 @drm_mode_vrefresh(%struct.drm_display_mode*) #1

declare dso_local i32 @ast_set_index_reg(%struct.ast_private*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
