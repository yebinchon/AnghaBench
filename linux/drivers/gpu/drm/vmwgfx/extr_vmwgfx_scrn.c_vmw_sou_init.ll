; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_scrn.c_vmw_sou_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_scrn.c_vmw_sou_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32, i32, i32, %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.vmw_screen_object_unit = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, %struct.drm_plane, %struct.drm_plane, i32*, i32, i32, %struct.drm_connector, %struct.drm_encoder, %struct.drm_crtc }
%struct.drm_plane = type { i32 }
%struct.drm_connector = type { i32, i32 }
%struct.drm_encoder = type { i32, i64 }
%struct.drm_crtc = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vmw_sou_plane_funcs = common dso_local global i32 0, align 4
@vmw_primary_plane_formats = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_PRIMARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to initialize primary plane\00", align 1
@vmw_sou_primary_plane_helper_funcs = common dso_local global i32 0, align 4
@vmw_sou_cursor_funcs = common dso_local global i32 0, align 4
@vmw_cursor_plane_formats = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_CURSOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to initialize cursor plane\00", align 1
@vmw_sou_cursor_plane_helper_funcs = common dso_local global i32 0, align 4
@vmw_sou_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_VIRTUAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to initialize connector\0A\00", align 1
@vmw_sou_connector_helper_funcs = common dso_local global i32 0, align 4
@vmw_screen_object_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_VIRTUAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to initialize encoder\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed to register connector\0A\00", align 1
@vmw_screen_object_crtc_funcs = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Failed to initialize CRTC\0A\00", align 1
@vmw_sou_crtc_helper_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_private*, i32)* @vmw_sou_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_sou_init(%struct.vmw_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmw_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmw_screen_object_unit*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_connector*, align 8
  %9 = alloca %struct.drm_encoder*, align 8
  %10 = alloca %struct.drm_plane*, align 8
  %11 = alloca %struct.drm_plane*, align 8
  %12 = alloca %struct.drm_crtc*, align 8
  %13 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %15 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %14, i32 0, i32 3
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %7, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.vmw_screen_object_unit* @kzalloc(i32 72, i32 %17)
  store %struct.vmw_screen_object_unit* %18, %struct.vmw_screen_object_unit** %6, align 8
  %19 = load %struct.vmw_screen_object_unit*, %struct.vmw_screen_object_unit** %6, align 8
  %20 = icmp ne %struct.vmw_screen_object_unit* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %205

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.vmw_screen_object_unit*, %struct.vmw_screen_object_unit** %6, align 8
  %27 = getelementptr inbounds %struct.vmw_screen_object_unit, %struct.vmw_screen_object_unit* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.vmw_screen_object_unit*, %struct.vmw_screen_object_unit** %6, align 8
  %30 = getelementptr inbounds %struct.vmw_screen_object_unit, %struct.vmw_screen_object_unit* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 10
  store %struct.drm_crtc* %31, %struct.drm_crtc** %12, align 8
  %32 = load %struct.vmw_screen_object_unit*, %struct.vmw_screen_object_unit** %6, align 8
  %33 = getelementptr inbounds %struct.vmw_screen_object_unit, %struct.vmw_screen_object_unit* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 9
  store %struct.drm_encoder* %34, %struct.drm_encoder** %9, align 8
  %35 = load %struct.vmw_screen_object_unit*, %struct.vmw_screen_object_unit** %6, align 8
  %36 = getelementptr inbounds %struct.vmw_screen_object_unit, %struct.vmw_screen_object_unit* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 8
  store %struct.drm_connector* %37, %struct.drm_connector** %8, align 8
  %38 = load %struct.vmw_screen_object_unit*, %struct.vmw_screen_object_unit** %6, align 8
  %39 = getelementptr inbounds %struct.vmw_screen_object_unit, %struct.vmw_screen_object_unit* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 4
  store %struct.drm_plane* %40, %struct.drm_plane** %10, align 8
  %41 = load %struct.vmw_screen_object_unit*, %struct.vmw_screen_object_unit** %6, align 8
  %42 = getelementptr inbounds %struct.vmw_screen_object_unit, %struct.vmw_screen_object_unit* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  store %struct.drm_plane* %43, %struct.drm_plane** %11, align 8
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = load %struct.vmw_screen_object_unit*, %struct.vmw_screen_object_unit** %6, align 8
  %48 = getelementptr inbounds %struct.vmw_screen_object_unit, %struct.vmw_screen_object_unit* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %51 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.vmw_screen_object_unit*, %struct.vmw_screen_object_unit** %6, align 8
  %54 = getelementptr inbounds %struct.vmw_screen_object_unit, %struct.vmw_screen_object_unit* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 7
  store i32 %52, i32* %55, align 4
  %56 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %57 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.vmw_screen_object_unit*, %struct.vmw_screen_object_unit** %6, align 8
  %60 = getelementptr inbounds %struct.vmw_screen_object_unit, %struct.vmw_screen_object_unit* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 6
  store i32 %58, i32* %61, align 8
  %62 = load %struct.vmw_screen_object_unit*, %struct.vmw_screen_object_unit** %6, align 8
  %63 = getelementptr inbounds %struct.vmw_screen_object_unit, %struct.vmw_screen_object_unit* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 5
  store i32* null, i32** %64, align 8
  %65 = load %struct.vmw_screen_object_unit*, %struct.vmw_screen_object_unit** %6, align 8
  %66 = getelementptr inbounds %struct.vmw_screen_object_unit, %struct.vmw_screen_object_unit* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  store i32 0, i32* %67, align 8
  %68 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %69 = call i32 @vmw_du_plane_reset(%struct.drm_plane* %68)
  %70 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %71 = load %struct.vmw_screen_object_unit*, %struct.vmw_screen_object_unit** %6, align 8
  %72 = getelementptr inbounds %struct.vmw_screen_object_unit, %struct.vmw_screen_object_unit* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 4
  %74 = load i32, i32* @vmw_primary_plane_formats, align 4
  %75 = load i32, i32* @vmw_primary_plane_formats, align 4
  %76 = call i32 @ARRAY_SIZE(i32 %75)
  %77 = load i32, i32* @DRM_PLANE_TYPE_PRIMARY, align 4
  %78 = call i32 @drm_universal_plane_init(%struct.drm_device* %70, %struct.drm_plane* %73, i32 0, i32* @vmw_sou_plane_funcs, i32 %74, i32 %76, i32* null, i32 %77, i32* null)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %24
  %82 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %201

83:                                               ; preds = %24
  %84 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %85 = call i32 @drm_plane_helper_add(%struct.drm_plane* %84, i32* @vmw_sou_primary_plane_helper_funcs)
  %86 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %87 = call i32 @drm_plane_enable_fb_damage_clips(%struct.drm_plane* %86)
  %88 = load %struct.drm_plane*, %struct.drm_plane** %11, align 8
  %89 = call i32 @vmw_du_plane_reset(%struct.drm_plane* %88)
  %90 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %91 = load %struct.vmw_screen_object_unit*, %struct.vmw_screen_object_unit** %6, align 8
  %92 = getelementptr inbounds %struct.vmw_screen_object_unit, %struct.vmw_screen_object_unit* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 3
  %94 = load i32, i32* @vmw_cursor_plane_formats, align 4
  %95 = load i32, i32* @vmw_cursor_plane_formats, align 4
  %96 = call i32 @ARRAY_SIZE(i32 %95)
  %97 = load i32, i32* @DRM_PLANE_TYPE_CURSOR, align 4
  %98 = call i32 @drm_universal_plane_init(%struct.drm_device* %90, %struct.drm_plane* %93, i32 0, i32* @vmw_sou_cursor_funcs, i32 %94, i32 %96, i32* null, i32 %97, i32* null)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %83
  %102 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %103 = load %struct.vmw_screen_object_unit*, %struct.vmw_screen_object_unit** %6, align 8
  %104 = getelementptr inbounds %struct.vmw_screen_object_unit, %struct.vmw_screen_object_unit* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 4
  %106 = call i32 @drm_plane_cleanup(%struct.drm_plane* %105)
  br label %201

107:                                              ; preds = %83
  %108 = load %struct.drm_plane*, %struct.drm_plane** %11, align 8
  %109 = call i32 @drm_plane_helper_add(%struct.drm_plane* %108, i32* @vmw_sou_cursor_plane_helper_funcs)
  %110 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %111 = call i32 @vmw_du_connector_reset(%struct.drm_connector* %110)
  %112 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %113 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %114 = load i32, i32* @DRM_MODE_CONNECTOR_VIRTUAL, align 4
  %115 = call i32 @drm_connector_init(%struct.drm_device* %112, %struct.drm_connector* %113, i32* @vmw_sou_connector_funcs, i32 %114)
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* %13, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %107
  %119 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %201

120:                                              ; preds = %107
  %121 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %122 = call i32 @drm_connector_helper_add(%struct.drm_connector* %121, i32* @vmw_sou_connector_helper_funcs)
  %123 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %124 = call i32 @vmw_du_connector_detect(%struct.drm_connector* %123, i32 1)
  %125 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %126 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %128 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %129 = load i32, i32* @DRM_MODE_ENCODER_VIRTUAL, align 4
  %130 = call i32 @drm_encoder_init(%struct.drm_device* %127, %struct.drm_encoder* %128, i32* @vmw_screen_object_encoder_funcs, i32 %129, i32* null)
  store i32 %130, i32* %13, align 4
  %131 = load i32, i32* %13, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %120
  %134 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %198

135:                                              ; preds = %120
  %136 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %137 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %138 = call i32 @drm_connector_attach_encoder(%struct.drm_connector* %136, %struct.drm_encoder* %137)
  %139 = load i32, i32* %5, align 4
  %140 = shl i32 1, %139
  %141 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %142 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %144 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %143, i32 0, i32 1
  store i64 0, i64* %144, align 8
  %145 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %146 = call i32 @drm_connector_register(%struct.drm_connector* %145)
  store i32 %146, i32* %13, align 4
  %147 = load i32, i32* %13, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %135
  %150 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %195

151:                                              ; preds = %135
  %152 = load %struct.drm_crtc*, %struct.drm_crtc** %12, align 8
  %153 = call i32 @vmw_du_crtc_reset(%struct.drm_crtc* %152)
  %154 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %155 = load %struct.drm_crtc*, %struct.drm_crtc** %12, align 8
  %156 = load %struct.vmw_screen_object_unit*, %struct.vmw_screen_object_unit** %6, align 8
  %157 = getelementptr inbounds %struct.vmw_screen_object_unit, %struct.vmw_screen_object_unit* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 4
  %159 = load %struct.vmw_screen_object_unit*, %struct.vmw_screen_object_unit** %6, align 8
  %160 = getelementptr inbounds %struct.vmw_screen_object_unit, %struct.vmw_screen_object_unit* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 3
  %162 = call i32 @drm_crtc_init_with_planes(%struct.drm_device* %154, %struct.drm_crtc* %155, %struct.drm_plane* %158, %struct.drm_plane* %161, i32* @vmw_screen_object_crtc_funcs, i32* null)
  store i32 %162, i32* %13, align 4
  %163 = load i32, i32* %13, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %151
  %166 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %192

167:                                              ; preds = %151
  %168 = load %struct.drm_crtc*, %struct.drm_crtc** %12, align 8
  %169 = call i32 @drm_crtc_helper_add(%struct.drm_crtc* %168, i32* @vmw_sou_crtc_helper_funcs)
  %170 = load %struct.drm_crtc*, %struct.drm_crtc** %12, align 8
  %171 = call i32 @drm_mode_crtc_set_gamma_size(%struct.drm_crtc* %170, i32 256)
  %172 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %173 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %172, i32 0, i32 0
  %174 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %175 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @drm_object_attach_property(i32* %173, i32 %176, i32 1)
  %178 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %179 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %178, i32 0, i32 0
  %180 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %181 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @drm_object_attach_property(i32* %179, i32 %183, i32 0)
  %185 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %186 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %185, i32 0, i32 0
  %187 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %188 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @drm_object_attach_property(i32* %186, i32 %190, i32 0)
  store i32 0, i32* %3, align 4
  br label %205

192:                                              ; preds = %165
  %193 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %194 = call i32 @drm_connector_unregister(%struct.drm_connector* %193)
  br label %195

195:                                              ; preds = %192, %149
  %196 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %197 = call i32 @drm_encoder_cleanup(%struct.drm_encoder* %196)
  br label %198

198:                                              ; preds = %195, %133
  %199 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %200 = call i32 @drm_connector_cleanup(%struct.drm_connector* %199)
  br label %201

201:                                              ; preds = %198, %118, %101, %81
  %202 = load %struct.vmw_screen_object_unit*, %struct.vmw_screen_object_unit** %6, align 8
  %203 = call i32 @kfree(%struct.vmw_screen_object_unit* %202)
  %204 = load i32, i32* %13, align 4
  store i32 %204, i32* %3, align 4
  br label %205

205:                                              ; preds = %201, %167, %21
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

declare dso_local %struct.vmw_screen_object_unit* @kzalloc(i32, i32) #1

declare dso_local i32 @vmw_du_plane_reset(%struct.drm_plane*) #1

declare dso_local i32 @drm_universal_plane_init(%struct.drm_device*, %struct.drm_plane*, i32, i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_plane_helper_add(%struct.drm_plane*, i32*) #1

declare dso_local i32 @drm_plane_enable_fb_damage_clips(%struct.drm_plane*) #1

declare dso_local i32 @drm_plane_cleanup(%struct.drm_plane*) #1

declare dso_local i32 @vmw_du_connector_reset(%struct.drm_connector*) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, %struct.drm_connector*, i32*, i32) #1

declare dso_local i32 @drm_connector_helper_add(%struct.drm_connector*, i32*) #1

declare dso_local i32 @vmw_du_connector_detect(%struct.drm_connector*, i32) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.drm_connector*, %struct.drm_encoder*) #1

declare dso_local i32 @drm_connector_register(%struct.drm_connector*) #1

declare dso_local i32 @vmw_du_crtc_reset(%struct.drm_crtc*) #1

declare dso_local i32 @drm_crtc_init_with_planes(%struct.drm_device*, %struct.drm_crtc*, %struct.drm_plane*, %struct.drm_plane*, i32*, i32*) #1

declare dso_local i32 @drm_crtc_helper_add(%struct.drm_crtc*, i32*) #1

declare dso_local i32 @drm_mode_crtc_set_gamma_size(%struct.drm_crtc*, i32) #1

declare dso_local i32 @drm_object_attach_property(i32*, i32, i32) #1

declare dso_local i32 @drm_connector_unregister(%struct.drm_connector*) #1

declare dso_local i32 @drm_encoder_cleanup(%struct.drm_encoder*) #1

declare dso_local i32 @drm_connector_cleanup(%struct.drm_connector*) #1

declare dso_local i32 @kfree(%struct.vmw_screen_object_unit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
