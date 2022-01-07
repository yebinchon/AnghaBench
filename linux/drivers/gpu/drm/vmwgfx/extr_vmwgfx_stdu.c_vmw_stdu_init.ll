; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_stdu.c_vmw_stdu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_stdu.c_vmw_stdu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32, i32, i32, %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.vmw_screen_target_display_unit = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, %struct.drm_plane, %struct.drm_plane, i32, i32, %struct.drm_connector, %struct.drm_encoder, %struct.drm_crtc }
%struct.drm_plane = type { i32 }
%struct.drm_connector = type { i32, i32 }
%struct.drm_encoder = type { i32, i64 }
%struct.drm_crtc = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vmw_stdu_plane_funcs = common dso_local global i32 0, align 4
@vmw_primary_plane_formats = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_PRIMARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to initialize primary plane\00", align 1
@vmw_stdu_primary_plane_helper_funcs = common dso_local global i32 0, align 4
@vmw_stdu_cursor_funcs = common dso_local global i32 0, align 4
@vmw_cursor_plane_formats = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_CURSOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to initialize cursor plane\00", align 1
@vmw_stdu_cursor_plane_helper_funcs = common dso_local global i32 0, align 4
@vmw_stdu_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_VIRTUAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to initialize connector\0A\00", align 1
@vmw_stdu_connector_helper_funcs = common dso_local global i32 0, align 4
@vmw_stdu_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_VIRTUAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to initialize encoder\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed to register connector\0A\00", align 1
@vmw_stdu_crtc_funcs = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Failed to initialize CRTC\0A\00", align 1
@vmw_stdu_crtc_helper_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_private*, i32)* @vmw_stdu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_stdu_init(%struct.vmw_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmw_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmw_screen_target_display_unit*, align 8
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
  %18 = call %struct.vmw_screen_target_display_unit* @kzalloc(i32 64, i32 %17)
  store %struct.vmw_screen_target_display_unit* %18, %struct.vmw_screen_target_display_unit** %6, align 8
  %19 = load %struct.vmw_screen_target_display_unit*, %struct.vmw_screen_target_display_unit** %6, align 8
  %20 = icmp ne %struct.vmw_screen_target_display_unit* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %198

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.vmw_screen_target_display_unit*, %struct.vmw_screen_target_display_unit** %6, align 8
  %27 = getelementptr inbounds %struct.vmw_screen_target_display_unit, %struct.vmw_screen_target_display_unit* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.vmw_screen_target_display_unit*, %struct.vmw_screen_target_display_unit** %6, align 8
  %30 = getelementptr inbounds %struct.vmw_screen_target_display_unit, %struct.vmw_screen_target_display_unit* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 9
  store %struct.drm_crtc* %31, %struct.drm_crtc** %12, align 8
  %32 = load %struct.vmw_screen_target_display_unit*, %struct.vmw_screen_target_display_unit** %6, align 8
  %33 = getelementptr inbounds %struct.vmw_screen_target_display_unit, %struct.vmw_screen_target_display_unit* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 8
  store %struct.drm_encoder* %34, %struct.drm_encoder** %9, align 8
  %35 = load %struct.vmw_screen_target_display_unit*, %struct.vmw_screen_target_display_unit** %6, align 8
  %36 = getelementptr inbounds %struct.vmw_screen_target_display_unit, %struct.vmw_screen_target_display_unit* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 7
  store %struct.drm_connector* %37, %struct.drm_connector** %8, align 8
  %38 = load %struct.vmw_screen_target_display_unit*, %struct.vmw_screen_target_display_unit** %6, align 8
  %39 = getelementptr inbounds %struct.vmw_screen_target_display_unit, %struct.vmw_screen_target_display_unit* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 4
  store %struct.drm_plane* %40, %struct.drm_plane** %10, align 8
  %41 = load %struct.vmw_screen_target_display_unit*, %struct.vmw_screen_target_display_unit** %6, align 8
  %42 = getelementptr inbounds %struct.vmw_screen_target_display_unit, %struct.vmw_screen_target_display_unit* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  store %struct.drm_plane* %43, %struct.drm_plane** %11, align 8
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = load %struct.vmw_screen_target_display_unit*, %struct.vmw_screen_target_display_unit** %6, align 8
  %48 = getelementptr inbounds %struct.vmw_screen_target_display_unit, %struct.vmw_screen_target_display_unit* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %51 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.vmw_screen_target_display_unit*, %struct.vmw_screen_target_display_unit** %6, align 8
  %54 = getelementptr inbounds %struct.vmw_screen_target_display_unit, %struct.vmw_screen_target_display_unit* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 6
  store i32 %52, i32* %55, align 8
  %56 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %57 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.vmw_screen_target_display_unit*, %struct.vmw_screen_target_display_unit** %6, align 8
  %60 = getelementptr inbounds %struct.vmw_screen_target_display_unit, %struct.vmw_screen_target_display_unit* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 5
  store i32 %58, i32* %61, align 4
  %62 = load %struct.vmw_screen_target_display_unit*, %struct.vmw_screen_target_display_unit** %6, align 8
  %63 = getelementptr inbounds %struct.vmw_screen_target_display_unit, %struct.vmw_screen_target_display_unit* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  store i32 0, i32* %64, align 8
  %65 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %66 = call i32 @vmw_du_plane_reset(%struct.drm_plane* %65)
  %67 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %68 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %69 = load i32, i32* @vmw_primary_plane_formats, align 4
  %70 = load i32, i32* @vmw_primary_plane_formats, align 4
  %71 = call i32 @ARRAY_SIZE(i32 %70)
  %72 = load i32, i32* @DRM_PLANE_TYPE_PRIMARY, align 4
  %73 = call i32 @drm_universal_plane_init(%struct.drm_device* %67, %struct.drm_plane* %68, i32 0, i32* @vmw_stdu_plane_funcs, i32 %69, i32 %71, i32* null, i32 %72, i32* null)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %24
  %77 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %194

78:                                               ; preds = %24
  %79 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %80 = call i32 @drm_plane_helper_add(%struct.drm_plane* %79, i32* @vmw_stdu_primary_plane_helper_funcs)
  %81 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %82 = call i32 @drm_plane_enable_fb_damage_clips(%struct.drm_plane* %81)
  %83 = load %struct.drm_plane*, %struct.drm_plane** %11, align 8
  %84 = call i32 @vmw_du_plane_reset(%struct.drm_plane* %83)
  %85 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %86 = load %struct.drm_plane*, %struct.drm_plane** %11, align 8
  %87 = load i32, i32* @vmw_cursor_plane_formats, align 4
  %88 = load i32, i32* @vmw_cursor_plane_formats, align 4
  %89 = call i32 @ARRAY_SIZE(i32 %88)
  %90 = load i32, i32* @DRM_PLANE_TYPE_CURSOR, align 4
  %91 = call i32 @drm_universal_plane_init(%struct.drm_device* %85, %struct.drm_plane* %86, i32 0, i32* @vmw_stdu_cursor_funcs, i32 %87, i32 %89, i32* null, i32 %90, i32* null)
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %78
  %95 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %96 = load %struct.vmw_screen_target_display_unit*, %struct.vmw_screen_target_display_unit** %6, align 8
  %97 = getelementptr inbounds %struct.vmw_screen_target_display_unit, %struct.vmw_screen_target_display_unit* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 4
  %99 = call i32 @drm_plane_cleanup(%struct.drm_plane* %98)
  br label %194

100:                                              ; preds = %78
  %101 = load %struct.drm_plane*, %struct.drm_plane** %11, align 8
  %102 = call i32 @drm_plane_helper_add(%struct.drm_plane* %101, i32* @vmw_stdu_cursor_plane_helper_funcs)
  %103 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %104 = call i32 @vmw_du_connector_reset(%struct.drm_connector* %103)
  %105 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %106 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %107 = load i32, i32* @DRM_MODE_CONNECTOR_VIRTUAL, align 4
  %108 = call i32 @drm_connector_init(%struct.drm_device* %105, %struct.drm_connector* %106, i32* @vmw_stdu_connector_funcs, i32 %107)
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %13, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %100
  %112 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %194

113:                                              ; preds = %100
  %114 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %115 = call i32 @drm_connector_helper_add(%struct.drm_connector* %114, i32* @vmw_stdu_connector_helper_funcs)
  %116 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %117 = call i32 @vmw_du_connector_detect(%struct.drm_connector* %116, i32 0)
  %118 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %119 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %121 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %122 = load i32, i32* @DRM_MODE_ENCODER_VIRTUAL, align 4
  %123 = call i32 @drm_encoder_init(%struct.drm_device* %120, %struct.drm_encoder* %121, i32* @vmw_stdu_encoder_funcs, i32 %122, i32* null)
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %13, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %113
  %127 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %191

128:                                              ; preds = %113
  %129 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %130 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %131 = call i32 @drm_connector_attach_encoder(%struct.drm_connector* %129, %struct.drm_encoder* %130)
  %132 = load i32, i32* %5, align 4
  %133 = shl i32 1, %132
  %134 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %135 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  %136 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %137 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %136, i32 0, i32 1
  store i64 0, i64* %137, align 8
  %138 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %139 = call i32 @drm_connector_register(%struct.drm_connector* %138)
  store i32 %139, i32* %13, align 4
  %140 = load i32, i32* %13, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %128
  %143 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %188

144:                                              ; preds = %128
  %145 = load %struct.drm_crtc*, %struct.drm_crtc** %12, align 8
  %146 = call i32 @vmw_du_crtc_reset(%struct.drm_crtc* %145)
  %147 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %148 = load %struct.drm_crtc*, %struct.drm_crtc** %12, align 8
  %149 = load %struct.vmw_screen_target_display_unit*, %struct.vmw_screen_target_display_unit** %6, align 8
  %150 = getelementptr inbounds %struct.vmw_screen_target_display_unit, %struct.vmw_screen_target_display_unit* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 4
  %152 = load %struct.vmw_screen_target_display_unit*, %struct.vmw_screen_target_display_unit** %6, align 8
  %153 = getelementptr inbounds %struct.vmw_screen_target_display_unit, %struct.vmw_screen_target_display_unit* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 3
  %155 = call i32 @drm_crtc_init_with_planes(%struct.drm_device* %147, %struct.drm_crtc* %148, %struct.drm_plane* %151, %struct.drm_plane* %154, i32* @vmw_stdu_crtc_funcs, i32* null)
  store i32 %155, i32* %13, align 4
  %156 = load i32, i32* %13, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %144
  %159 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %185

160:                                              ; preds = %144
  %161 = load %struct.drm_crtc*, %struct.drm_crtc** %12, align 8
  %162 = call i32 @drm_crtc_helper_add(%struct.drm_crtc* %161, i32* @vmw_stdu_crtc_helper_funcs)
  %163 = load %struct.drm_crtc*, %struct.drm_crtc** %12, align 8
  %164 = call i32 @drm_mode_crtc_set_gamma_size(%struct.drm_crtc* %163, i32 256)
  %165 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %166 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %165, i32 0, i32 0
  %167 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %168 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @drm_object_attach_property(i32* %166, i32 %169, i32 1)
  %171 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %172 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %171, i32 0, i32 0
  %173 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %174 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @drm_object_attach_property(i32* %172, i32 %176, i32 0)
  %178 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %179 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %178, i32 0, i32 0
  %180 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %181 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @drm_object_attach_property(i32* %179, i32 %183, i32 0)
  store i32 0, i32* %3, align 4
  br label %198

185:                                              ; preds = %158
  %186 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %187 = call i32 @drm_connector_unregister(%struct.drm_connector* %186)
  br label %188

188:                                              ; preds = %185, %142
  %189 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %190 = call i32 @drm_encoder_cleanup(%struct.drm_encoder* %189)
  br label %191

191:                                              ; preds = %188, %126
  %192 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %193 = call i32 @drm_connector_cleanup(%struct.drm_connector* %192)
  br label %194

194:                                              ; preds = %191, %111, %94, %76
  %195 = load %struct.vmw_screen_target_display_unit*, %struct.vmw_screen_target_display_unit** %6, align 8
  %196 = call i32 @kfree(%struct.vmw_screen_target_display_unit* %195)
  %197 = load i32, i32* %13, align 4
  store i32 %197, i32* %3, align 4
  br label %198

198:                                              ; preds = %194, %160, %21
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local %struct.vmw_screen_target_display_unit* @kzalloc(i32, i32) #1

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

declare dso_local i32 @kfree(%struct.vmw_screen_target_display_unit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
