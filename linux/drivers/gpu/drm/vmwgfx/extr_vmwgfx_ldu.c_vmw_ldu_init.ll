; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_ldu.c_vmw_ldu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_ldu.c_vmw_ldu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32, i32, i32, i32, %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.vmw_legacy_display_unit = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, %struct.drm_plane, %struct.drm_plane, i32*, i32, i32, %struct.drm_connector, %struct.drm_encoder, %struct.drm_crtc }
%struct.drm_plane = type { i32 }
%struct.drm_connector = type { i32, i32 }
%struct.drm_encoder = type { i32, i64 }
%struct.drm_crtc = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vmw_ldu_plane_funcs = common dso_local global i32 0, align 4
@vmw_primary_plane_formats = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_PRIMARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to initialize primary plane\00", align 1
@vmw_ldu_primary_plane_helper_funcs = common dso_local global i32 0, align 4
@vmw_ldu_cursor_funcs = common dso_local global i32 0, align 4
@vmw_cursor_plane_formats = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_CURSOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to initialize cursor plane\00", align 1
@vmw_ldu_cursor_plane_helper_funcs = common dso_local global i32 0, align 4
@vmw_legacy_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_VIRTUAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to initialize connector\0A\00", align 1
@vmw_ldu_connector_helper_funcs = common dso_local global i32 0, align 4
@vmw_legacy_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_VIRTUAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to initialize encoder\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed to register connector\0A\00", align 1
@vmw_legacy_crtc_funcs = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Failed to initialize CRTC\0A\00", align 1
@vmw_ldu_crtc_helper_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_private*, i32)* @vmw_ldu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_ldu_init(%struct.vmw_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmw_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmw_legacy_display_unit*, align 8
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
  %15 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %14, i32 0, i32 4
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %7, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.vmw_legacy_display_unit* @kzalloc(i32 80, i32 %17)
  store %struct.vmw_legacy_display_unit* %18, %struct.vmw_legacy_display_unit** %6, align 8
  %19 = load %struct.vmw_legacy_display_unit*, %struct.vmw_legacy_display_unit** %6, align 8
  %20 = icmp ne %struct.vmw_legacy_display_unit* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %218

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.vmw_legacy_display_unit*, %struct.vmw_legacy_display_unit** %6, align 8
  %27 = getelementptr inbounds %struct.vmw_legacy_display_unit, %struct.vmw_legacy_display_unit* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.vmw_legacy_display_unit*, %struct.vmw_legacy_display_unit** %6, align 8
  %30 = getelementptr inbounds %struct.vmw_legacy_display_unit, %struct.vmw_legacy_display_unit* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 10
  store %struct.drm_crtc* %31, %struct.drm_crtc** %12, align 8
  %32 = load %struct.vmw_legacy_display_unit*, %struct.vmw_legacy_display_unit** %6, align 8
  %33 = getelementptr inbounds %struct.vmw_legacy_display_unit, %struct.vmw_legacy_display_unit* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 9
  store %struct.drm_encoder* %34, %struct.drm_encoder** %9, align 8
  %35 = load %struct.vmw_legacy_display_unit*, %struct.vmw_legacy_display_unit** %6, align 8
  %36 = getelementptr inbounds %struct.vmw_legacy_display_unit, %struct.vmw_legacy_display_unit* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 8
  store %struct.drm_connector* %37, %struct.drm_connector** %8, align 8
  %38 = load %struct.vmw_legacy_display_unit*, %struct.vmw_legacy_display_unit** %6, align 8
  %39 = getelementptr inbounds %struct.vmw_legacy_display_unit, %struct.vmw_legacy_display_unit* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 4
  store %struct.drm_plane* %40, %struct.drm_plane** %10, align 8
  %41 = load %struct.vmw_legacy_display_unit*, %struct.vmw_legacy_display_unit** %6, align 8
  %42 = getelementptr inbounds %struct.vmw_legacy_display_unit, %struct.vmw_legacy_display_unit* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  store %struct.drm_plane* %43, %struct.drm_plane** %11, align 8
  %44 = load %struct.vmw_legacy_display_unit*, %struct.vmw_legacy_display_unit** %6, align 8
  %45 = getelementptr inbounds %struct.vmw_legacy_display_unit, %struct.vmw_legacy_display_unit* %44, i32 0, i32 1
  %46 = call i32 @INIT_LIST_HEAD(i32* %45)
  %47 = load i32, i32* %5, align 4
  %48 = icmp eq i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = load %struct.vmw_legacy_display_unit*, %struct.vmw_legacy_display_unit** %6, align 8
  %51 = getelementptr inbounds %struct.vmw_legacy_display_unit, %struct.vmw_legacy_display_unit* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %54 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.vmw_legacy_display_unit*, %struct.vmw_legacy_display_unit** %6, align 8
  %57 = getelementptr inbounds %struct.vmw_legacy_display_unit, %struct.vmw_legacy_display_unit* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 7
  store i32 %55, i32* %58, align 4
  %59 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %60 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.vmw_legacy_display_unit*, %struct.vmw_legacy_display_unit** %6, align 8
  %63 = getelementptr inbounds %struct.vmw_legacy_display_unit, %struct.vmw_legacy_display_unit* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 6
  store i32 %61, i32* %64, align 8
  %65 = load %struct.vmw_legacy_display_unit*, %struct.vmw_legacy_display_unit** %6, align 8
  %66 = getelementptr inbounds %struct.vmw_legacy_display_unit, %struct.vmw_legacy_display_unit* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 5
  store i32* null, i32** %67, align 8
  %68 = load %struct.vmw_legacy_display_unit*, %struct.vmw_legacy_display_unit** %6, align 8
  %69 = getelementptr inbounds %struct.vmw_legacy_display_unit, %struct.vmw_legacy_display_unit* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  store i32 1, i32* %70, align 8
  %71 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %72 = call i32 @vmw_du_plane_reset(%struct.drm_plane* %71)
  %73 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %74 = load %struct.vmw_legacy_display_unit*, %struct.vmw_legacy_display_unit** %6, align 8
  %75 = getelementptr inbounds %struct.vmw_legacy_display_unit, %struct.vmw_legacy_display_unit* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 4
  %77 = load i32, i32* @vmw_primary_plane_formats, align 4
  %78 = load i32, i32* @vmw_primary_plane_formats, align 4
  %79 = call i32 @ARRAY_SIZE(i32 %78)
  %80 = load i32, i32* @DRM_PLANE_TYPE_PRIMARY, align 4
  %81 = call i32 @drm_universal_plane_init(%struct.drm_device* %73, %struct.drm_plane* %76, i32 0, i32* @vmw_ldu_plane_funcs, i32 %77, i32 %79, i32* null, i32 %80, i32* null)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %24
  %85 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %214

86:                                               ; preds = %24
  %87 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %88 = call i32 @drm_plane_helper_add(%struct.drm_plane* %87, i32* @vmw_ldu_primary_plane_helper_funcs)
  %89 = load %struct.drm_plane*, %struct.drm_plane** %11, align 8
  %90 = call i32 @vmw_du_plane_reset(%struct.drm_plane* %89)
  %91 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %92 = load %struct.vmw_legacy_display_unit*, %struct.vmw_legacy_display_unit** %6, align 8
  %93 = getelementptr inbounds %struct.vmw_legacy_display_unit, %struct.vmw_legacy_display_unit* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 3
  %95 = load i32, i32* @vmw_cursor_plane_formats, align 4
  %96 = load i32, i32* @vmw_cursor_plane_formats, align 4
  %97 = call i32 @ARRAY_SIZE(i32 %96)
  %98 = load i32, i32* @DRM_PLANE_TYPE_CURSOR, align 4
  %99 = call i32 @drm_universal_plane_init(%struct.drm_device* %91, %struct.drm_plane* %94, i32 0, i32* @vmw_ldu_cursor_funcs, i32 %95, i32 %97, i32* null, i32 %98, i32* null)
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %86
  %103 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %104 = load %struct.vmw_legacy_display_unit*, %struct.vmw_legacy_display_unit** %6, align 8
  %105 = getelementptr inbounds %struct.vmw_legacy_display_unit, %struct.vmw_legacy_display_unit* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 4
  %107 = call i32 @drm_plane_cleanup(%struct.drm_plane* %106)
  br label %214

108:                                              ; preds = %86
  %109 = load %struct.drm_plane*, %struct.drm_plane** %11, align 8
  %110 = call i32 @drm_plane_helper_add(%struct.drm_plane* %109, i32* @vmw_ldu_cursor_plane_helper_funcs)
  %111 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %112 = call i32 @vmw_du_connector_reset(%struct.drm_connector* %111)
  %113 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %114 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %115 = load i32, i32* @DRM_MODE_CONNECTOR_VIRTUAL, align 4
  %116 = call i32 @drm_connector_init(%struct.drm_device* %113, %struct.drm_connector* %114, i32* @vmw_legacy_connector_funcs, i32 %115)
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %108
  %120 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %214

121:                                              ; preds = %108
  %122 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %123 = call i32 @drm_connector_helper_add(%struct.drm_connector* %122, i32* @vmw_ldu_connector_helper_funcs)
  %124 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %125 = call i32 @vmw_du_connector_detect(%struct.drm_connector* %124, i32 1)
  %126 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %127 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %129 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %130 = load i32, i32* @DRM_MODE_ENCODER_VIRTUAL, align 4
  %131 = call i32 @drm_encoder_init(%struct.drm_device* %128, %struct.drm_encoder* %129, i32* @vmw_legacy_encoder_funcs, i32 %130, i32* null)
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %13, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %121
  %135 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %211

136:                                              ; preds = %121
  %137 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %138 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %139 = call i32 @drm_connector_attach_encoder(%struct.drm_connector* %137, %struct.drm_encoder* %138)
  %140 = load i32, i32* %5, align 4
  %141 = shl i32 1, %140
  %142 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %143 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %145 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %144, i32 0, i32 1
  store i64 0, i64* %145, align 8
  %146 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %147 = call i32 @drm_connector_register(%struct.drm_connector* %146)
  store i32 %147, i32* %13, align 4
  %148 = load i32, i32* %13, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %136
  %151 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %208

152:                                              ; preds = %136
  %153 = load %struct.drm_crtc*, %struct.drm_crtc** %12, align 8
  %154 = call i32 @vmw_du_crtc_reset(%struct.drm_crtc* %153)
  %155 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %156 = load %struct.drm_crtc*, %struct.drm_crtc** %12, align 8
  %157 = load %struct.vmw_legacy_display_unit*, %struct.vmw_legacy_display_unit** %6, align 8
  %158 = getelementptr inbounds %struct.vmw_legacy_display_unit, %struct.vmw_legacy_display_unit* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 4
  %160 = load %struct.vmw_legacy_display_unit*, %struct.vmw_legacy_display_unit** %6, align 8
  %161 = getelementptr inbounds %struct.vmw_legacy_display_unit, %struct.vmw_legacy_display_unit* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 3
  %163 = call i32 @drm_crtc_init_with_planes(%struct.drm_device* %155, %struct.drm_crtc* %156, %struct.drm_plane* %159, %struct.drm_plane* %162, i32* @vmw_legacy_crtc_funcs, i32* null)
  store i32 %163, i32* %13, align 4
  %164 = load i32, i32* %13, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %152
  %167 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %205

168:                                              ; preds = %152
  %169 = load %struct.drm_crtc*, %struct.drm_crtc** %12, align 8
  %170 = call i32 @drm_crtc_helper_add(%struct.drm_crtc* %169, i32* @vmw_ldu_crtc_helper_funcs)
  %171 = load %struct.drm_crtc*, %struct.drm_crtc** %12, align 8
  %172 = call i32 @drm_mode_crtc_set_gamma_size(%struct.drm_crtc* %171, i32 256)
  %173 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %174 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %173, i32 0, i32 0
  %175 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %176 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @drm_object_attach_property(i32* %174, i32 %177, i32 1)
  %179 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %180 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %179, i32 0, i32 0
  %181 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %182 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @drm_object_attach_property(i32* %180, i32 %184, i32 0)
  %186 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %187 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %186, i32 0, i32 0
  %188 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %189 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @drm_object_attach_property(i32* %187, i32 %191, i32 0)
  %193 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %194 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %168
  %198 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %199 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %198, i32 0, i32 0
  %200 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %201 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @drm_object_attach_property(i32* %199, i32 %202, i32 1)
  br label %204

204:                                              ; preds = %197, %168
  store i32 0, i32* %3, align 4
  br label %218

205:                                              ; preds = %166
  %206 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %207 = call i32 @drm_connector_unregister(%struct.drm_connector* %206)
  br label %208

208:                                              ; preds = %205, %150
  %209 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %210 = call i32 @drm_encoder_cleanup(%struct.drm_encoder* %209)
  br label %211

211:                                              ; preds = %208, %134
  %212 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %213 = call i32 @drm_connector_cleanup(%struct.drm_connector* %212)
  br label %214

214:                                              ; preds = %211, %119, %102, %84
  %215 = load %struct.vmw_legacy_display_unit*, %struct.vmw_legacy_display_unit** %6, align 8
  %216 = call i32 @kfree(%struct.vmw_legacy_display_unit* %215)
  %217 = load i32, i32* %13, align 4
  store i32 %217, i32* %3, align 4
  br label %218

218:                                              ; preds = %214, %204, %21
  %219 = load i32, i32* %3, align 4
  ret i32 %219
}

declare dso_local %struct.vmw_legacy_display_unit* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @vmw_du_plane_reset(%struct.drm_plane*) #1

declare dso_local i32 @drm_universal_plane_init(%struct.drm_device*, %struct.drm_plane*, i32, i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_plane_helper_add(%struct.drm_plane*, i32*) #1

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

declare dso_local i32 @kfree(%struct.vmw_legacy_display_unit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
