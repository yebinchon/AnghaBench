; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_kms.c_mdp4_kms_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_kms.c_mdp4_kms_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_kms = type { i32, %struct.msm_gem_address_space* }
%struct.msm_gem_address_space = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_7__*, i32, i32)* }
%struct.drm_device = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i64, i64 }
%struct.platform_device = type { i32 }
%struct.mdp4_platform_config = type { i64, i32 }
%struct.mdp4_kms = type { i32, i32, i32, %struct.msm_gem_address_space*, %struct.msm_gem_address_space*, %struct.msm_gem_address_space*, %struct.msm_gem_address_space*, %struct.msm_gem_address_space*, %struct.msm_gem_address_space*, %struct.msm_gem_address_space*, %struct.drm_device*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.msm_kms }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failed to allocate kms\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@kms_funcs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"MDP4\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to get irq: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"failed to enable regulator vdd: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"core_clk\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"failed to get core_clk\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"iface_clk\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"lut_clk\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"failed to get lut_clk\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"bus_clk\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"failed to get axi_clk\0A\00", align 1
@REG_MDP4_DTV_ENABLE = common dso_local global i32 0, align 4
@REG_MDP4_LCDC_ENABLE = common dso_local global i32 0, align 4
@REG_MDP4_DSI_ENABLE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"mdp4\00", align 1
@iommu_ports = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [55 x i8] c"no iommu, fallback to phys contig buffers for scanout\0A\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"modeset_init failed: %d\0A\00", align 1
@SZ_16K = common dso_local global i32 0, align 4
@MSM_BO_WC = common dso_local global i32 0, align 4
@MSM_BO_SCANOUT = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [40 x i8] c"could not allocate blank-cursor bo: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"could not pin blank-cursor bo: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.msm_kms* @mdp4_kms_init(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.msm_kms*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.mdp4_platform_config*, align 8
  %6 = alloca %struct.mdp4_kms*, align 8
  %7 = alloca %struct.msm_kms*, align 8
  %8 = alloca %struct.msm_gem_address_space*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.platform_device* @to_platform_device(i32 %13)
  store %struct.platform_device* %14, %struct.platform_device** %4, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %16 = call %struct.mdp4_platform_config* @mdp4_get_config(%struct.platform_device* %15)
  store %struct.mdp4_platform_config* %16, %struct.mdp4_platform_config** %5, align 8
  store %struct.msm_kms* null, %struct.msm_kms** %7, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.mdp4_kms* @kzalloc(i32 96, i32 %17)
  store %struct.mdp4_kms* %18, %struct.mdp4_kms** %6, align 8
  %19 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %20 = icmp ne %struct.mdp4_kms* %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %1
  %22 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %10, align 4
  br label %338

28:                                               ; preds = %1
  %29 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %30 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %29, i32 0, i32 11
  %31 = call i32 @mdp_kms_init(%struct.TYPE_8__* %30, i32* @kms_funcs)
  %32 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %33 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %32, i32 0, i32 11
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store %struct.msm_kms* %34, %struct.msm_kms** %7, align 8
  %35 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %36 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %37 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %36, i32 0, i32 10
  store %struct.drm_device* %35, %struct.drm_device** %37, align 8
  %38 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %39 = call %struct.msm_gem_address_space* @msm_ioremap(%struct.platform_device* %38, i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %41 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %40, i32 0, i32 9
  store %struct.msm_gem_address_space* %39, %struct.msm_gem_address_space** %41, align 8
  %42 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %43 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %42, i32 0, i32 9
  %44 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %43, align 8
  %45 = call i64 @IS_ERR(%struct.msm_gem_address_space* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %28
  %48 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %49 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %48, i32 0, i32 9
  %50 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %49, align 8
  %51 = call i32 @PTR_ERR(%struct.msm_gem_address_space* %50)
  store i32 %51, i32* %10, align 4
  br label %338

52:                                               ; preds = %28
  %53 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %54 = call i32 @platform_get_irq(%struct.platform_device* %53, i32 0)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %10, align 4
  %59 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %60 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %61, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  br label %338

64:                                               ; preds = %52
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.msm_kms*, %struct.msm_kms** %7, align 8
  %67 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = call %struct.msm_gem_address_space* @devm_regulator_get_exclusive(i32* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %71 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %72 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %71, i32 0, i32 8
  store %struct.msm_gem_address_space* %70, %struct.msm_gem_address_space** %72, align 8
  %73 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %74 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %73, i32 0, i32 8
  %75 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %74, align 8
  %76 = call i64 @IS_ERR(%struct.msm_gem_address_space* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %64
  %79 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %80 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %79, i32 0, i32 8
  store %struct.msm_gem_address_space* null, %struct.msm_gem_address_space** %80, align 8
  br label %81

81:                                               ; preds = %78, %64
  %82 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %83 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %82, i32 0, i32 8
  %84 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %83, align 8
  %85 = icmp ne %struct.msm_gem_address_space* %84, null
  br i1 %85, label %86, label %100

86:                                               ; preds = %81
  %87 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %88 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %87, i32 0, i32 8
  %89 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %88, align 8
  %90 = call i32 @regulator_enable(%struct.msm_gem_address_space* %89)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %86
  %94 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %95 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %96, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %97)
  br label %338

99:                                               ; preds = %86
  br label %100

100:                                              ; preds = %99, %81
  %101 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = call i8* @devm_clk_get(i32* %102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %104 = bitcast i8* %103 to %struct.msm_gem_address_space*
  %105 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %106 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %105, i32 0, i32 5
  store %struct.msm_gem_address_space* %104, %struct.msm_gem_address_space** %106, align 8
  %107 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %108 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %107, i32 0, i32 5
  %109 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %108, align 8
  %110 = call i64 @IS_ERR(%struct.msm_gem_address_space* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %100
  %113 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %114 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %115, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %117 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %118 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %117, i32 0, i32 5
  %119 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %118, align 8
  %120 = call i32 @PTR_ERR(%struct.msm_gem_address_space* %119)
  store i32 %120, i32* %10, align 4
  br label %338

121:                                              ; preds = %100
  %122 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %123 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %122, i32 0, i32 0
  %124 = call i8* @devm_clk_get(i32* %123, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %125 = bitcast i8* %124 to %struct.msm_gem_address_space*
  %126 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %127 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %126, i32 0, i32 7
  store %struct.msm_gem_address_space* %125, %struct.msm_gem_address_space** %127, align 8
  %128 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %129 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %128, i32 0, i32 7
  %130 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %129, align 8
  %131 = call i64 @IS_ERR(%struct.msm_gem_address_space* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %121
  %134 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %135 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %134, i32 0, i32 7
  store %struct.msm_gem_address_space* null, %struct.msm_gem_address_space** %135, align 8
  br label %136

136:                                              ; preds = %133, %121
  %137 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %138 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp sge i32 %139, 2
  br i1 %140, label %141, label %163

141:                                              ; preds = %136
  %142 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = call i8* @devm_clk_get(i32* %143, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %145 = bitcast i8* %144 to %struct.msm_gem_address_space*
  %146 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %147 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %146, i32 0, i32 4
  store %struct.msm_gem_address_space* %145, %struct.msm_gem_address_space** %147, align 8
  %148 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %149 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %148, i32 0, i32 4
  %150 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %149, align 8
  %151 = call i64 @IS_ERR(%struct.msm_gem_address_space* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %141
  %154 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %155 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %156, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %158 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %159 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %158, i32 0, i32 4
  %160 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %159, align 8
  %161 = call i32 @PTR_ERR(%struct.msm_gem_address_space* %160)
  store i32 %161, i32* %10, align 4
  br label %338

162:                                              ; preds = %141
  br label %163

163:                                              ; preds = %162, %136
  %164 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %165 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %164, i32 0, i32 0
  %166 = call i8* @devm_clk_get(i32* %165, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %167 = bitcast i8* %166 to %struct.msm_gem_address_space*
  %168 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %169 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %168, i32 0, i32 6
  store %struct.msm_gem_address_space* %167, %struct.msm_gem_address_space** %169, align 8
  %170 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %171 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %170, i32 0, i32 6
  %172 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %171, align 8
  %173 = call i64 @IS_ERR(%struct.msm_gem_address_space* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %184

175:                                              ; preds = %163
  %176 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %177 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %178, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %180 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %181 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %180, i32 0, i32 6
  %182 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %181, align 8
  %183 = call i32 @PTR_ERR(%struct.msm_gem_address_space* %182)
  store i32 %183, i32* %10, align 4
  br label %338

184:                                              ; preds = %163
  %185 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %186 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %185, i32 0, i32 5
  %187 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %186, align 8
  %188 = load %struct.mdp4_platform_config*, %struct.mdp4_platform_config** %5, align 8
  %189 = getelementptr inbounds %struct.mdp4_platform_config, %struct.mdp4_platform_config* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @clk_set_rate(%struct.msm_gem_address_space* %187, i32 %190)
  %192 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %193 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %192, i32 0, i32 4
  %194 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %193, align 8
  %195 = icmp ne %struct.msm_gem_address_space* %194, null
  br i1 %195, label %196, label %204

196:                                              ; preds = %184
  %197 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %198 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %197, i32 0, i32 4
  %199 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %198, align 8
  %200 = load %struct.mdp4_platform_config*, %struct.mdp4_platform_config** %5, align 8
  %201 = getelementptr inbounds %struct.mdp4_platform_config, %struct.mdp4_platform_config* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @clk_set_rate(%struct.msm_gem_address_space* %199, i32 %202)
  br label %204

204:                                              ; preds = %196, %184
  %205 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %206 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @pm_runtime_enable(i32 %207)
  %209 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %210 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %209, i32 0, i32 1
  store i32 1, i32* %210, align 4
  %211 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %212 = call i32 @mdp4_enable(%struct.mdp4_kms* %211)
  %213 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %214 = load i32, i32* @REG_MDP4_DTV_ENABLE, align 4
  %215 = call i32 @mdp4_write(%struct.mdp4_kms* %213, i32 %214, i32 0)
  %216 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %217 = load i32, i32* @REG_MDP4_LCDC_ENABLE, align 4
  %218 = call i32 @mdp4_write(%struct.mdp4_kms* %216, i32 %217, i32 0)
  %219 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %220 = load i32, i32* @REG_MDP4_DSI_ENABLE, align 4
  %221 = call i32 @mdp4_write(%struct.mdp4_kms* %219, i32 %220, i32 0)
  %222 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %223 = call i32 @mdp4_disable(%struct.mdp4_kms* %222)
  %224 = call i32 @mdelay(i32 16)
  %225 = load %struct.mdp4_platform_config*, %struct.mdp4_platform_config** %5, align 8
  %226 = getelementptr inbounds %struct.mdp4_platform_config, %struct.mdp4_platform_config* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %264

229:                                              ; preds = %204
  %230 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %231 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %230, i32 0, i32 0
  %232 = load %struct.mdp4_platform_config*, %struct.mdp4_platform_config** %5, align 8
  %233 = getelementptr inbounds %struct.mdp4_platform_config, %struct.mdp4_platform_config* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = call %struct.msm_gem_address_space* @msm_gem_address_space_create(i32* %231, i64 %234, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  store %struct.msm_gem_address_space* %235, %struct.msm_gem_address_space** %8, align 8
  %236 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %8, align 8
  %237 = call i64 @IS_ERR(%struct.msm_gem_address_space* %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %229
  %240 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %8, align 8
  %241 = call i32 @PTR_ERR(%struct.msm_gem_address_space* %240)
  store i32 %241, i32* %10, align 4
  br label %338

242:                                              ; preds = %229
  %243 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %8, align 8
  %244 = load %struct.msm_kms*, %struct.msm_kms** %7, align 8
  %245 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %244, i32 0, i32 1
  store %struct.msm_gem_address_space* %243, %struct.msm_gem_address_space** %245, align 8
  %246 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %8, align 8
  %247 = getelementptr inbounds %struct.msm_gem_address_space, %struct.msm_gem_address_space* %246, i32 0, i32 0
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_5__*, %struct.TYPE_5__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 0
  %252 = load i32 (%struct.TYPE_7__*, i32, i32)*, i32 (%struct.TYPE_7__*, i32, i32)** %251, align 8
  %253 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %8, align 8
  %254 = getelementptr inbounds %struct.msm_gem_address_space, %struct.msm_gem_address_space* %253, i32 0, i32 0
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %254, align 8
  %256 = load i32, i32* @iommu_ports, align 4
  %257 = load i32, i32* @iommu_ports, align 4
  %258 = call i32 @ARRAY_SIZE(i32 %257)
  %259 = call i32 %252(%struct.TYPE_7__* %255, i32 %256, i32 %258)
  store i32 %259, i32* %10, align 4
  %260 = load i32, i32* %10, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %242
  br label %338

263:                                              ; preds = %242
  br label %269

264:                                              ; preds = %204
  %265 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %266 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 8
  %268 = call i32 @DRM_DEV_INFO(i32 %267, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.13, i64 0, i64 0))
  store %struct.msm_gem_address_space* null, %struct.msm_gem_address_space** %8, align 8
  br label %269

269:                                              ; preds = %264, %263
  %270 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %271 = call i32 @modeset_init(%struct.mdp4_kms* %270)
  store i32 %271, i32* %10, align 4
  %272 = load i32, i32* %10, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %280

274:                                              ; preds = %269
  %275 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %276 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* %10, align 4
  %279 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %277, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 %278)
  br label %338

280:                                              ; preds = %269
  %281 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %282 = load i32, i32* @SZ_16K, align 4
  %283 = load i32, i32* @MSM_BO_WC, align 4
  %284 = load i32, i32* @MSM_BO_SCANOUT, align 4
  %285 = or i32 %283, %284
  %286 = call %struct.msm_gem_address_space* @msm_gem_new(%struct.drm_device* %281, i32 %282, i32 %285)
  %287 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %288 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %287, i32 0, i32 3
  store %struct.msm_gem_address_space* %286, %struct.msm_gem_address_space** %288, align 8
  %289 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %290 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %289, i32 0, i32 3
  %291 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %290, align 8
  %292 = call i64 @IS_ERR(%struct.msm_gem_address_space* %291)
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %306

294:                                              ; preds = %280
  %295 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %296 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %295, i32 0, i32 3
  %297 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %296, align 8
  %298 = call i32 @PTR_ERR(%struct.msm_gem_address_space* %297)
  store i32 %298, i32* %10, align 4
  %299 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %300 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* %10, align 4
  %303 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %301, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i64 0, i64 0), i32 %302)
  %304 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %305 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %304, i32 0, i32 3
  store %struct.msm_gem_address_space* null, %struct.msm_gem_address_space** %305, align 8
  br label %338

306:                                              ; preds = %280
  %307 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %308 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %307, i32 0, i32 3
  %309 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %308, align 8
  %310 = load %struct.msm_kms*, %struct.msm_kms** %7, align 8
  %311 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %310, i32 0, i32 1
  %312 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %311, align 8
  %313 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %314 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %313, i32 0, i32 2
  %315 = call i32 @msm_gem_get_and_pin_iova(%struct.msm_gem_address_space* %309, %struct.msm_gem_address_space* %312, i32* %314)
  store i32 %315, i32* %10, align 4
  %316 = load i32, i32* %10, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %324

318:                                              ; preds = %306
  %319 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %320 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* %10, align 4
  %323 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %321, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0), i32 %322)
  br label %338

324:                                              ; preds = %306
  %325 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %326 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 0, i32 3
  store i64 0, i64* %327, align 8
  %328 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %329 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %329, i32 0, i32 2
  store i64 0, i64* %330, align 8
  %331 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %332 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %332, i32 0, i32 0
  store i32 2048, i32* %333, align 8
  %334 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %335 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %335, i32 0, i32 1
  store i32 2048, i32* %336, align 4
  %337 = load %struct.msm_kms*, %struct.msm_kms** %7, align 8
  store %struct.msm_kms* %337, %struct.msm_kms** %2, align 8
  br label %347

338:                                              ; preds = %318, %294, %274, %262, %239, %175, %153, %112, %93, %57, %47, %21
  %339 = load %struct.msm_kms*, %struct.msm_kms** %7, align 8
  %340 = icmp ne %struct.msm_kms* %339, null
  br i1 %340, label %341, label %344

341:                                              ; preds = %338
  %342 = load %struct.msm_kms*, %struct.msm_kms** %7, align 8
  %343 = call i32 @mdp4_destroy(%struct.msm_kms* %342)
  br label %344

344:                                              ; preds = %341, %338
  %345 = load i32, i32* %10, align 4
  %346 = call %struct.msm_kms* @ERR_PTR(i32 %345)
  store %struct.msm_kms* %346, %struct.msm_kms** %2, align 8
  br label %347

347:                                              ; preds = %344, %324
  %348 = load %struct.msm_kms*, %struct.msm_kms** %2, align 8
  ret %struct.msm_kms* %348
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local %struct.mdp4_platform_config* @mdp4_get_config(%struct.platform_device*) #1

declare dso_local %struct.mdp4_kms* @kzalloc(i32, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, ...) #1

declare dso_local i32 @mdp_kms_init(%struct.TYPE_8__*, i32*) #1

declare dso_local %struct.msm_gem_address_space* @msm_ioremap(%struct.platform_device*, i32*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.msm_gem_address_space*) #1

declare dso_local i32 @PTR_ERR(%struct.msm_gem_address_space*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.msm_gem_address_space* @devm_regulator_get_exclusive(i32*, i8*) #1

declare dso_local i32 @regulator_enable(%struct.msm_gem_address_space*) #1

declare dso_local i8* @devm_clk_get(i32*, i8*) #1

declare dso_local i32 @clk_set_rate(%struct.msm_gem_address_space*, i32) #1

declare dso_local i32 @pm_runtime_enable(i32) #1

declare dso_local i32 @mdp4_enable(%struct.mdp4_kms*) #1

declare dso_local i32 @mdp4_write(%struct.mdp4_kms*, i32, i32) #1

declare dso_local i32 @mdp4_disable(%struct.mdp4_kms*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local %struct.msm_gem_address_space* @msm_gem_address_space_create(i32*, i64, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @DRM_DEV_INFO(i32, i8*) #1

declare dso_local i32 @modeset_init(%struct.mdp4_kms*) #1

declare dso_local %struct.msm_gem_address_space* @msm_gem_new(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @msm_gem_get_and_pin_iova(%struct.msm_gem_address_space*, %struct.msm_gem_address_space*, i32*) #1

declare dso_local i32 @mdp4_destroy(%struct.msm_kms*) #1

declare dso_local %struct.msm_kms* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
