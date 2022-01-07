; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_output.c_mdfld_dsi_output_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_output.c_mdfld_dsi_output_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_7__, i32, %struct.drm_psb_private* }
%struct.TYPE_7__ = type { i32 }
%struct.drm_psb_private = type { i32, %struct.mdfld_dsi_connector** }
%struct.mdfld_dsi_connector = type { i32, i32, i32, %struct.mdfld_dsi_connector*, i32, %struct.mdfld_dsi_encoder*, %struct.TYPE_5__, %struct.mdfld_dsi_connector*, %struct.mdfld_dsi_connector*, %struct.drm_device*, %struct.mdfld_dsi_connector* }
%struct.mdfld_dsi_encoder = type { %struct.TYPE_8__, %struct.mdfld_dsi_connector* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, %struct.drm_connector }
%struct.drm_connector = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i8*, i32 }
%struct.panel_funcs = type { i64 (%struct.drm_device.0*, i32, %struct.panel_info*)*, %struct.mdfld_dsi_connector* (%struct.drm_device.1*)* }
%struct.drm_device.0 = type opaque
%struct.panel_info = type { i8*, i8* }
%struct.drm_device.1 = type opaque
%struct.mdfld_dsi_config = type { i32, i32, i32, %struct.mdfld_dsi_config*, i32, %struct.mdfld_dsi_encoder*, %struct.TYPE_5__, %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config*, %struct.drm_device*, %struct.mdfld_dsi_config* }

@.str = private unnamed_addr constant [28 x i8] c"init DSI output on pipe %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Invalid parameter\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"No memory\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"cannot allocate memory for DSI config\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"No pannel fixed mode was found\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Trying to init MIPI1 before MIPI0\0A\00", align 1
@mdfld_dsi_connector_save = common dso_local global i32 0, align 4
@mdfld_dsi_connector_restore = common dso_local global i32 0, align 4
@mdfld_dsi_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_LVDS = common dso_local global i32 0, align 4
@mdfld_dsi_connector_helper_funcs = common dso_local global i32 0, align 4
@SubPixelHorizontalRGB = common dso_local global i32 0, align 4
@DRM_MODE_SCALE_FULLSCREEN = common dso_local global i32 0, align 4
@MDFLD_DSI_BRIGHTNESS_MAX_LEVEL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"Package Sender initialization failed on pipe %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Create DPI encoder failed\0A\00", align 1
@INTEL_OUTPUT_MIPI = common dso_local global i32 0, align 4
@INTEL_OUTPUT_MIPI2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdfld_dsi_output_init(%struct.drm_device* %0, i32 %1, %struct.panel_funcs* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.panel_funcs*, align 8
  %7 = alloca %struct.mdfld_dsi_config*, align 8
  %8 = alloca %struct.mdfld_dsi_connector*, align 8
  %9 = alloca %struct.drm_connector*, align 8
  %10 = alloca %struct.mdfld_dsi_encoder*, align 8
  %11 = alloca %struct.drm_psb_private*, align 8
  %12 = alloca %struct.panel_info, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.panel_funcs* %2, %struct.panel_funcs** %6, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 2
  %17 = load %struct.drm_psb_private*, %struct.drm_psb_private** %16, align 8
  store %struct.drm_psb_private* %17, %struct.drm_psb_private** %11, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @dev_dbg(i32 %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 2
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %239

30:                                               ; preds = %25, %3
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.mdfld_dsi_connector* @kzalloc(i32 120, i32 %31)
  store %struct.mdfld_dsi_connector* %32, %struct.mdfld_dsi_connector** %8, align 8
  %33 = load %struct.mdfld_dsi_connector*, %struct.mdfld_dsi_connector** %8, align 8
  %34 = icmp ne %struct.mdfld_dsi_connector* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %239

37:                                               ; preds = %30
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.mdfld_dsi_connector*, %struct.mdfld_dsi_connector** %8, align 8
  %40 = getelementptr inbounds %struct.mdfld_dsi_connector, %struct.mdfld_dsi_connector* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.mdfld_dsi_connector* @kzalloc(i32 120, i32 %41)
  %43 = bitcast %struct.mdfld_dsi_connector* %42 to %struct.mdfld_dsi_config*
  store %struct.mdfld_dsi_config* %43, %struct.mdfld_dsi_config** %7, align 8
  %44 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %7, align 8
  %45 = icmp ne %struct.mdfld_dsi_config* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %37
  %47 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %236

48:                                               ; preds = %37
  %49 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %50 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %7, align 8
  %51 = bitcast %struct.mdfld_dsi_config* %50 to %struct.mdfld_dsi_connector*
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @mdfld_dsi_get_default_config(%struct.drm_device* %49, %struct.mdfld_dsi_connector* %51, i32 %52)
  %54 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %7, align 8
  %55 = bitcast %struct.mdfld_dsi_config* %54 to %struct.mdfld_dsi_connector*
  %56 = load %struct.mdfld_dsi_connector*, %struct.mdfld_dsi_connector** %8, align 8
  %57 = getelementptr inbounds %struct.mdfld_dsi_connector, %struct.mdfld_dsi_connector* %56, i32 0, i32 10
  store %struct.mdfld_dsi_connector* %55, %struct.mdfld_dsi_connector** %57, align 8
  %58 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %7, align 8
  %59 = getelementptr inbounds %struct.mdfld_dsi_config, %struct.mdfld_dsi_config* %58, i32 0, i32 1
  store i32 1, i32* %59, align 4
  %60 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %61 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %7, align 8
  %62 = getelementptr inbounds %struct.mdfld_dsi_config, %struct.mdfld_dsi_config* %61, i32 0, i32 9
  store %struct.drm_device* %60, %struct.drm_device** %62, align 8
  %63 = load %struct.panel_funcs*, %struct.panel_funcs** %6, align 8
  %64 = getelementptr inbounds %struct.panel_funcs, %struct.panel_funcs* %63, i32 0, i32 1
  %65 = load %struct.mdfld_dsi_connector* (%struct.drm_device.1*)*, %struct.mdfld_dsi_connector* (%struct.drm_device.1*)** %64, align 8
  %66 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %67 = bitcast %struct.drm_device* %66 to %struct.drm_device.1*
  %68 = call %struct.mdfld_dsi_connector* %65(%struct.drm_device.1* %67)
  %69 = bitcast %struct.mdfld_dsi_connector* %68 to %struct.mdfld_dsi_config*
  %70 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %7, align 8
  %71 = getelementptr inbounds %struct.mdfld_dsi_config, %struct.mdfld_dsi_config* %70, i32 0, i32 3
  store %struct.mdfld_dsi_config* %69, %struct.mdfld_dsi_config** %71, align 8
  %72 = load %struct.panel_funcs*, %struct.panel_funcs** %6, align 8
  %73 = getelementptr inbounds %struct.panel_funcs, %struct.panel_funcs* %72, i32 0, i32 0
  %74 = load i64 (%struct.drm_device.0*, i32, %struct.panel_info*)*, i64 (%struct.drm_device.0*, i32, %struct.panel_info*)** %73, align 8
  %75 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %76 = bitcast %struct.drm_device* %75 to %struct.drm_device.0*
  %77 = load i32, i32* %5, align 4
  %78 = call i64 %74(%struct.drm_device.0* %76, i32 %77, %struct.panel_info* %12)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %48
  br label %236

81:                                               ; preds = %48
  %82 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %12, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %13, align 8
  %84 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %12, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  store i8* %85, i8** %14, align 8
  %86 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %7, align 8
  %87 = getelementptr inbounds %struct.mdfld_dsi_config, %struct.mdfld_dsi_config* %86, i32 0, i32 3
  %88 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %87, align 8
  %89 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %7, align 8
  %90 = getelementptr inbounds %struct.mdfld_dsi_config, %struct.mdfld_dsi_config* %89, i32 0, i32 8
  store %struct.mdfld_dsi_config* %88, %struct.mdfld_dsi_config** %90, align 8
  %91 = load %struct.mdfld_dsi_connector*, %struct.mdfld_dsi_connector** %8, align 8
  %92 = bitcast %struct.mdfld_dsi_connector* %91 to %struct.mdfld_dsi_config*
  %93 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %7, align 8
  %94 = getelementptr inbounds %struct.mdfld_dsi_config, %struct.mdfld_dsi_config* %93, i32 0, i32 7
  store %struct.mdfld_dsi_config* %92, %struct.mdfld_dsi_config** %94, align 8
  %95 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %7, align 8
  %96 = getelementptr inbounds %struct.mdfld_dsi_config, %struct.mdfld_dsi_config* %95, i32 0, i32 3
  %97 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %96, align 8
  %98 = icmp ne %struct.mdfld_dsi_config* %97, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %81
  %100 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %236

101:                                              ; preds = %81
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %120

104:                                              ; preds = %101
  %105 = load %struct.drm_psb_private*, %struct.drm_psb_private** %11, align 8
  %106 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %105, i32 0, i32 1
  %107 = load %struct.mdfld_dsi_connector**, %struct.mdfld_dsi_connector*** %106, align 8
  %108 = getelementptr inbounds %struct.mdfld_dsi_connector*, %struct.mdfld_dsi_connector** %107, i64 0
  %109 = load %struct.mdfld_dsi_connector*, %struct.mdfld_dsi_connector** %108, align 8
  %110 = icmp ne %struct.mdfld_dsi_connector* %109, null
  br i1 %110, label %111, label %120

111:                                              ; preds = %104
  %112 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %7, align 8
  %113 = getelementptr inbounds %struct.mdfld_dsi_config, %struct.mdfld_dsi_config* %112, i32 0, i32 2
  store i32 0, i32* %113, align 8
  %114 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %7, align 8
  %115 = bitcast %struct.mdfld_dsi_config* %114 to %struct.mdfld_dsi_connector*
  %116 = load %struct.drm_psb_private*, %struct.drm_psb_private** %11, align 8
  %117 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %116, i32 0, i32 1
  %118 = load %struct.mdfld_dsi_connector**, %struct.mdfld_dsi_connector*** %117, align 8
  %119 = getelementptr inbounds %struct.mdfld_dsi_connector*, %struct.mdfld_dsi_connector** %118, i64 1
  store %struct.mdfld_dsi_connector* %115, %struct.mdfld_dsi_connector** %119, align 8
  br label %135

120:                                              ; preds = %104, %101
  %121 = load i32, i32* %5, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %120
  %124 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %7, align 8
  %125 = getelementptr inbounds %struct.mdfld_dsi_config, %struct.mdfld_dsi_config* %124, i32 0, i32 2
  store i32 1, i32* %125, align 8
  %126 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %7, align 8
  %127 = bitcast %struct.mdfld_dsi_config* %126 to %struct.mdfld_dsi_connector*
  %128 = load %struct.drm_psb_private*, %struct.drm_psb_private** %11, align 8
  %129 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %128, i32 0, i32 1
  %130 = load %struct.mdfld_dsi_connector**, %struct.mdfld_dsi_connector*** %129, align 8
  %131 = getelementptr inbounds %struct.mdfld_dsi_connector*, %struct.mdfld_dsi_connector** %130, i64 0
  store %struct.mdfld_dsi_connector* %127, %struct.mdfld_dsi_connector** %131, align 8
  br label %134

132:                                              ; preds = %120
  %133 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %236

134:                                              ; preds = %123
  br label %135

135:                                              ; preds = %134, %111
  %136 = load %struct.mdfld_dsi_connector*, %struct.mdfld_dsi_connector** %8, align 8
  %137 = getelementptr inbounds %struct.mdfld_dsi_connector, %struct.mdfld_dsi_connector* %136, i32 0, i32 6
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 2
  store %struct.drm_connector* %138, %struct.drm_connector** %9, align 8
  %139 = load i32, i32* @mdfld_dsi_connector_save, align 4
  %140 = load %struct.mdfld_dsi_connector*, %struct.mdfld_dsi_connector** %8, align 8
  %141 = getelementptr inbounds %struct.mdfld_dsi_connector, %struct.mdfld_dsi_connector* %140, i32 0, i32 6
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 1
  store i32 %139, i32* %142, align 4
  %143 = load i32, i32* @mdfld_dsi_connector_restore, align 4
  %144 = load %struct.mdfld_dsi_connector*, %struct.mdfld_dsi_connector** %8, align 8
  %145 = getelementptr inbounds %struct.mdfld_dsi_connector, %struct.mdfld_dsi_connector* %144, i32 0, i32 6
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  store i32 %143, i32* %146, align 8
  %147 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %148 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %149 = load i32, i32* @DRM_MODE_CONNECTOR_LVDS, align 4
  %150 = call i32 @drm_connector_init(%struct.drm_device* %147, %struct.drm_connector* %148, i32* @mdfld_dsi_connector_funcs, i32 %149)
  %151 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %152 = call i32 @drm_connector_helper_add(%struct.drm_connector* %151, i32* @mdfld_dsi_connector_helper_funcs)
  %153 = load i32, i32* @SubPixelHorizontalRGB, align 4
  %154 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %155 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 2
  store i32 %153, i32* %156, align 8
  %157 = load i8*, i8** %13, align 8
  %158 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %159 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  store i8* %157, i8** %160, align 8
  %161 = load i8*, i8** %14, align 8
  %162 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %163 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  store i8* %161, i8** %164, align 8
  %165 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %166 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %165, i32 0, i32 0
  store i32 0, i32* %166, align 8
  %167 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %168 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %167, i32 0, i32 1
  store i32 0, i32* %168, align 4
  %169 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %170 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %169, i32 0, i32 2
  %171 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %172 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @DRM_MODE_SCALE_FULLSCREEN, align 4
  %176 = call i32 @drm_object_attach_property(i32* %170, i32 %174, i32 %175)
  %177 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %178 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %177, i32 0, i32 2
  %179 = load %struct.drm_psb_private*, %struct.drm_psb_private** %11, align 8
  %180 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @MDFLD_DSI_BRIGHTNESS_MAX_LEVEL, align 4
  %183 = call i32 @drm_object_attach_property(i32* %178, i32 %181, i32 %182)
  %184 = load %struct.mdfld_dsi_connector*, %struct.mdfld_dsi_connector** %8, align 8
  %185 = load i32, i32* %5, align 4
  %186 = call i64 @mdfld_dsi_pkg_sender_init(%struct.mdfld_dsi_connector* %184, i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %135
  %189 = load i32, i32* %5, align 4
  %190 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %189)
  br label %236

191:                                              ; preds = %135
  %192 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %193 = load %struct.mdfld_dsi_connector*, %struct.mdfld_dsi_connector** %8, align 8
  %194 = load %struct.panel_funcs*, %struct.panel_funcs** %6, align 8
  %195 = call %struct.mdfld_dsi_encoder* @mdfld_dsi_dpi_init(%struct.drm_device* %192, %struct.mdfld_dsi_connector* %193, %struct.panel_funcs* %194)
  store %struct.mdfld_dsi_encoder* %195, %struct.mdfld_dsi_encoder** %10, align 8
  %196 = load %struct.mdfld_dsi_encoder*, %struct.mdfld_dsi_encoder** %10, align 8
  %197 = icmp ne %struct.mdfld_dsi_encoder* %196, null
  br i1 %197, label %200, label %198

198:                                              ; preds = %191
  %199 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %221

200:                                              ; preds = %191
  %201 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %7, align 8
  %202 = bitcast %struct.mdfld_dsi_config* %201 to %struct.mdfld_dsi_connector*
  %203 = load %struct.mdfld_dsi_encoder*, %struct.mdfld_dsi_encoder** %10, align 8
  %204 = getelementptr inbounds %struct.mdfld_dsi_encoder, %struct.mdfld_dsi_encoder* %203, i32 0, i32 1
  store %struct.mdfld_dsi_connector* %202, %struct.mdfld_dsi_connector** %204, align 8
  %205 = load %struct.mdfld_dsi_encoder*, %struct.mdfld_dsi_encoder** %10, align 8
  %206 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %7, align 8
  %207 = getelementptr inbounds %struct.mdfld_dsi_config, %struct.mdfld_dsi_config* %206, i32 0, i32 5
  store %struct.mdfld_dsi_encoder* %205, %struct.mdfld_dsi_encoder** %207, align 8
  %208 = load i32, i32* %5, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %200
  %211 = load i32, i32* @INTEL_OUTPUT_MIPI, align 4
  br label %214

212:                                              ; preds = %200
  %213 = load i32, i32* @INTEL_OUTPUT_MIPI2, align 4
  br label %214

214:                                              ; preds = %212, %210
  %215 = phi i32 [ %211, %210 ], [ %213, %212 ]
  %216 = load %struct.mdfld_dsi_encoder*, %struct.mdfld_dsi_encoder** %10, align 8
  %217 = getelementptr inbounds %struct.mdfld_dsi_encoder, %struct.mdfld_dsi_encoder* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 0
  store i32 %215, i32* %218, align 8
  %219 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %220 = call i32 @drm_connector_register(%struct.drm_connector* %219)
  br label %239

221:                                              ; preds = %198
  %222 = load %struct.mdfld_dsi_connector*, %struct.mdfld_dsi_connector** %8, align 8
  %223 = getelementptr inbounds %struct.mdfld_dsi_connector, %struct.mdfld_dsi_connector* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @mdfld_dsi_pkg_sender_destroy(i32 %224)
  %226 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %227 = call i32 @drm_connector_cleanup(%struct.drm_connector* %226)
  %228 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %7, align 8
  %229 = getelementptr inbounds %struct.mdfld_dsi_config, %struct.mdfld_dsi_config* %228, i32 0, i32 3
  %230 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %229, align 8
  %231 = bitcast %struct.mdfld_dsi_config* %230 to %struct.mdfld_dsi_connector*
  %232 = call i32 @kfree(%struct.mdfld_dsi_connector* %231)
  %233 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %7, align 8
  %234 = bitcast %struct.mdfld_dsi_config* %233 to %struct.mdfld_dsi_connector*
  %235 = call i32 @kfree(%struct.mdfld_dsi_connector* %234)
  br label %236

236:                                              ; preds = %221, %188, %132, %99, %80, %46
  %237 = load %struct.mdfld_dsi_connector*, %struct.mdfld_dsi_connector** %8, align 8
  %238 = call i32 @kfree(%struct.mdfld_dsi_connector* %237)
  br label %239

239:                                              ; preds = %236, %214, %35, %28
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local %struct.mdfld_dsi_connector* @kzalloc(i32, i32) #1

declare dso_local i32 @mdfld_dsi_get_default_config(%struct.drm_device*, %struct.mdfld_dsi_connector*, i32) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, %struct.drm_connector*, i32*, i32) #1

declare dso_local i32 @drm_connector_helper_add(%struct.drm_connector*, i32*) #1

declare dso_local i32 @drm_object_attach_property(i32*, i32, i32) #1

declare dso_local i64 @mdfld_dsi_pkg_sender_init(%struct.mdfld_dsi_connector*, i32) #1

declare dso_local %struct.mdfld_dsi_encoder* @mdfld_dsi_dpi_init(%struct.drm_device*, %struct.mdfld_dsi_connector*, %struct.panel_funcs*) #1

declare dso_local i32 @drm_connector_register(%struct.drm_connector*) #1

declare dso_local i32 @mdfld_dsi_pkg_sender_destroy(i32) #1

declare dso_local i32 @drm_connector_cleanup(%struct.drm_connector*) #1

declare dso_local i32 @kfree(%struct.mdfld_dsi_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
