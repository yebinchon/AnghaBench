; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_amdgpu_dm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_amdgpu_dm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i64, %struct.TYPE_20__, %struct.TYPE_12__*, %struct.TYPE_17__, %struct.TYPE_13__, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_21__*, i32, i32, i64, i32, i32, %struct.amdgpu_device*, %struct.TYPE_12__* }
%struct.TYPE_21__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.dc_init_data = type { i32, %struct.TYPE_16__, i32, i64, %struct.amdgpu_device*, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"amdgpu: failed to initialize DM IRQ support.\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"amdgpu: failed to create cgs device.\0A\00", align 1
@DCE_ENV_PRODUCTION_DRV = common dso_local global i32 0, align 4
@AMD_IS_APU = common dso_local global i32 0, align 4
@CHIP_CARRIZO = common dso_local global i64 0, align 8
@CHIP_RAVEN = common dso_local global i64 0, align 8
@amdgpu_dc_feature_mask = common dso_local global i32 0, align 4
@DC_FBC_MASK = common dso_local global i32 0, align 4
@DC_MULTI_MON_PP_MCLK_SWITCH_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Display Core initialized with v%s!\0A\00", align 1
@DC_VER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Display Core failed to initialize with v%s!\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"amdgpu: failed to initialize freesync_module.\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"amdgpu: freesync_module init done %p.\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"amdgpu: failed to initialize sw for display support.\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"KMS initialized.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @amdgpu_dm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_dm_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.dc_init_data, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %5 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %6 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %5, i32 0, i32 3
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 8
  store %struct.TYPE_12__* %7, %struct.TYPE_12__** %10, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 7
  store %struct.amdgpu_device* %11, %struct.amdgpu_device** %14, align 8
  %15 = call i32 @memset(%struct.dc_init_data* %4, i32 0, i32 64)
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 6
  %19 = call i32 @mutex_init(i32* %18)
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 5
  %23 = call i32 @mutex_init(i32* %22)
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %25 = call i64 @amdgpu_dm_irq_init(%struct.amdgpu_device* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %210

29:                                               ; preds = %1
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %31 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.dc_init_data, %struct.dc_init_data* %4, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %36 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.dc_init_data, %struct.dc_init_data* %4, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %41 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.dc_init_data, %struct.dc_init_data* %4, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %46 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.dc_init_data, %struct.dc_init_data* %4, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %52 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.dc_init_data, %struct.dc_init_data* %4, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %60 = getelementptr inbounds %struct.dc_init_data, %struct.dc_init_data* %4, i32 0, i32 4
  store %struct.amdgpu_device* %59, %struct.amdgpu_device** %60, align 8
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %62 = call i64 @amdgpu_cgs_create_device(%struct.amdgpu_device* %61)
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %64 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 4
  store i64 %62, i64* %65, align 8
  %66 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %67 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %29
  %72 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %210

73:                                               ; preds = %29
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %75 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.dc_init_data, %struct.dc_init_data* %4, i32 0, i32 3
  store i64 %77, i64* %78, align 8
  %79 = load i32, i32* @DCE_ENV_PRODUCTION_DRV, align 4
  %80 = getelementptr inbounds %struct.dc_init_data, %struct.dc_init_data* %4, i32 0, i32 2
  store i32 %79, i32* %80, align 4
  %81 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %82 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @AMD_IS_APU, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %73
  %88 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %89 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @CHIP_CARRIZO, align 8
  %92 = icmp sge i64 %90, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %87
  %94 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %95 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @CHIP_RAVEN, align 8
  %98 = icmp sle i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.dc_init_data, %struct.dc_init_data* %4, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  store i32 1, i32* %101, align 4
  br label %102

102:                                              ; preds = %99, %93, %87, %73
  %103 = load i32, i32* @amdgpu_dc_feature_mask, align 4
  %104 = load i32, i32* @DC_FBC_MASK, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.dc_init_data, %struct.dc_init_data* %4, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 1
  store i32 1, i32* %109, align 4
  br label %110

110:                                              ; preds = %107, %102
  %111 = load i32, i32* @amdgpu_dc_feature_mask, align 4
  %112 = load i32, i32* @DC_MULTI_MON_PP_MCLK_SWITCH_MASK, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.dc_init_data, %struct.dc_init_data* %4, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 2
  store i32 1, i32* %117, align 4
  br label %118

118:                                              ; preds = %115, %110
  %119 = getelementptr inbounds %struct.dc_init_data, %struct.dc_init_data* %4, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 3
  store i32 1, i32* %120, align 4
  %121 = call %struct.TYPE_21__* @dc_create(%struct.dc_init_data* %4)
  %122 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %123 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 1
  store %struct.TYPE_21__* %121, %struct.TYPE_21__** %124, align 8
  %125 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %126 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %127, align 8
  %129 = icmp ne %struct.TYPE_21__* %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %118
  %131 = load i32, i32* @DC_VER, align 4
  %132 = call i32 @DRM_INFO(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %131)
  br label %136

133:                                              ; preds = %118
  %134 = load i32, i32* @DC_VER, align 4
  %135 = call i32 @DRM_INFO(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %134)
  br label %210

136:                                              ; preds = %130
  %137 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %138 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %139, align 8
  %141 = call i32 @mod_freesync_create(%struct.TYPE_21__* %140)
  %142 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %143 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 2
  store i32 %141, i32* %144, align 8
  %145 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %146 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %136
  %151 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  br label %158

152:                                              ; preds = %136
  %153 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %154 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %156)
  br label %158

158:                                              ; preds = %152, %150
  %159 = call i32 (...) @amdgpu_dm_init_color_mod()
  %160 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %161 = call i64 @amdgpu_dm_initialize_drm_device(%struct.amdgpu_device* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %158
  %164 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0))
  br label %210

165:                                              ; preds = %158
  %166 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %167 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %171 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %170, i32 0, i32 4
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 0
  store i32 %169, i32* %172, align 8
  %173 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %174 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %181 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %180, i32 0, i32 3
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 1
  store i32 %179, i32* %184, align 4
  %185 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %186 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %193 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %192, i32 0, i32 3
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 0
  store i32 %191, i32* %196, align 4
  %197 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %198 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %197, i32 0, i32 3
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %198, align 8
  %200 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %201 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call i64 @drm_vblank_init(%struct.TYPE_12__* %199, i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %165
  %207 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0))
  br label %210

208:                                              ; preds = %165
  %209 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %215

210:                                              ; preds = %206, %163, %133, %71, %27
  %211 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %212 = call i32 @amdgpu_dm_fini(%struct.amdgpu_device* %211)
  %213 = load i32, i32* @EINVAL, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %2, align 4
  br label %215

215:                                              ; preds = %210, %208
  %216 = load i32, i32* %2, align 4
  ret i32 %216
}

declare dso_local i32 @memset(%struct.dc_init_data*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @amdgpu_dm_irq_init(%struct.amdgpu_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i64 @amdgpu_cgs_create_device(%struct.amdgpu_device*) #1

declare dso_local %struct.TYPE_21__* @dc_create(%struct.dc_init_data*) #1

declare dso_local i32 @DRM_INFO(i8*, i32) #1

declare dso_local i32 @mod_freesync_create(%struct.TYPE_21__*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, ...) #1

declare dso_local i32 @amdgpu_dm_init_color_mod(...) #1

declare dso_local i64 @amdgpu_dm_initialize_drm_device(%struct.amdgpu_device*) #1

declare dso_local i64 @drm_vblank_init(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @amdgpu_dm_fini(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
