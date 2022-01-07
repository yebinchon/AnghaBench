; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_kms.c_mdp5_kms_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_kms.c_mdp5_kms_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_kms = type { i32, %struct.msm_gem_address_space* }
%struct.msm_gem_address_space = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_14__*, i32, i32)* }
%struct.drm_device = type { i32, i64, %struct.TYPE_13__*, %struct.TYPE_12__, %struct.msm_drm_private* }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i64, i64 }
%struct.msm_drm_private = type { %struct.msm_kms* }
%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device*, i32, i32 }
%struct.mdp5_kms = type { i32, %struct.platform_device*, i32 }
%struct.mdp5_cfg = type { %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32*, i32* }

@kms_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to get irq: %d\0A\00", align 1
@MDP5_INTF_NUM_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"mdp5\00", align 1
@iommu_ports = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to attach iommu: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"no iommu, fallback to phys contig buffers for scanout\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"modeset_init failed: %d\0A\00", align 1
@drm_calc_vbltimestamp_from_scanoutpos = common dso_local global i32 0, align 4
@mdp5_get_scanoutpos = common dso_local global i32 0, align 4
@mdp5_get_vblank_counter = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.msm_kms* @mdp5_kms_init(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.msm_kms*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.msm_drm_private*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.mdp5_kms*, align 8
  %7 = alloca %struct.mdp5_cfg*, align 8
  %8 = alloca %struct.msm_kms*, align 8
  %9 = alloca %struct.msm_gem_address_space*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.device*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 4
  %16 = load %struct.msm_drm_private*, %struct.msm_drm_private** %15, align 8
  store %struct.msm_drm_private* %16, %struct.msm_drm_private** %4, align 8
  %17 = load %struct.msm_drm_private*, %struct.msm_drm_private** %4, align 8
  %18 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %17, i32 0, i32 0
  %19 = load %struct.msm_kms*, %struct.msm_kms** %18, align 8
  store %struct.msm_kms* %19, %struct.msm_kms** %8, align 8
  %20 = load %struct.msm_kms*, %struct.msm_kms** %8, align 8
  %21 = icmp ne %struct.msm_kms* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  store %struct.msm_kms* null, %struct.msm_kms** %2, align 8
  br label %215

23:                                               ; preds = %1
  %24 = load %struct.msm_kms*, %struct.msm_kms** %8, align 8
  %25 = call i32 @to_mdp_kms(%struct.msm_kms* %24)
  %26 = call %struct.mdp5_kms* @to_mdp5_kms(i32 %25)
  store %struct.mdp5_kms* %26, %struct.mdp5_kms** %6, align 8
  %27 = load %struct.mdp5_kms*, %struct.mdp5_kms** %6, align 8
  %28 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %27, i32 0, i32 2
  %29 = call i32 @mdp_kms_init(i32* %28, i32* @kms_funcs)
  %30 = load %struct.mdp5_kms*, %struct.mdp5_kms** %6, align 8
  %31 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %30, i32 0, i32 1
  %32 = load %struct.platform_device*, %struct.platform_device** %31, align 8
  store %struct.platform_device* %32, %struct.platform_device** %5, align 8
  %33 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.device, %struct.device* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @irq_of_parse_and_map(i32 %36, i32 0)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %23
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %12, align 4
  %42 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @DRM_DEV_ERROR(%struct.device* %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %206

46:                                               ; preds = %23
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.msm_kms*, %struct.msm_kms** %8, align 8
  %49 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.mdp5_kms*, %struct.mdp5_kms** %6, align 8
  %51 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call %struct.mdp5_cfg* @mdp5_cfg_get_config(i32 %52)
  store %struct.mdp5_cfg* %53, %struct.mdp5_cfg** %7, align 8
  %54 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = call i32 @pm_runtime_get_sync(%struct.device* %55)
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %96, %46
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @MDP5_INTF_NUM_MAX, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %99

61:                                               ; preds = %57
  %62 = load %struct.mdp5_cfg*, %struct.mdp5_cfg** %7, align 8
  %63 = getelementptr inbounds %struct.mdp5_cfg, %struct.mdp5_cfg* %62, i32 0, i32 1
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @mdp5_cfg_intf_is_virtual(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %86, label %74

74:                                               ; preds = %61
  %75 = load %struct.mdp5_cfg*, %struct.mdp5_cfg** %7, align 8
  %76 = getelementptr inbounds %struct.mdp5_cfg, %struct.mdp5_cfg* %75, i32 0, i32 1
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %74, %61
  br label %96

87:                                               ; preds = %74
  %88 = load %struct.mdp5_kms*, %struct.mdp5_kms** %6, align 8
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @REG_MDP5_INTF_TIMING_ENGINE_EN(i32 %89)
  %91 = call i32 @mdp5_write(%struct.mdp5_kms* %88, i32 %90, i32 0)
  %92 = load %struct.mdp5_kms*, %struct.mdp5_kms** %6, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @REG_MDP5_INTF_FRAME_LINE_COUNT_EN(i32 %93)
  %95 = call i32 @mdp5_write(%struct.mdp5_kms* %92, i32 %94, i32 3)
  br label %96

96:                                               ; preds = %87, %86
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  br label %57

99:                                               ; preds = %57
  %100 = call i32 @mdelay(i32 16)
  %101 = load %struct.mdp5_cfg*, %struct.mdp5_cfg** %7, align 8
  %102 = getelementptr inbounds %struct.mdp5_cfg, %struct.mdp5_cfg* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %156

106:                                              ; preds = %99
  %107 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %107, i32 0, i32 0
  store %struct.device* %108, %struct.device** %13, align 8
  %109 = load %struct.device*, %struct.device** %13, align 8
  %110 = getelementptr inbounds %struct.device, %struct.device* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %106
  %114 = load %struct.device*, %struct.device** %13, align 8
  %115 = getelementptr inbounds %struct.device, %struct.device* %114, i32 0, i32 0
  %116 = load %struct.device*, %struct.device** %115, align 8
  store %struct.device* %116, %struct.device** %13, align 8
  br label %117

117:                                              ; preds = %113, %106
  %118 = load %struct.device*, %struct.device** %13, align 8
  %119 = load %struct.mdp5_cfg*, %struct.mdp5_cfg** %7, align 8
  %120 = getelementptr inbounds %struct.mdp5_cfg, %struct.mdp5_cfg* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call %struct.msm_gem_address_space* @msm_gem_address_space_create(%struct.device* %118, i64 %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store %struct.msm_gem_address_space* %123, %struct.msm_gem_address_space** %9, align 8
  %124 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %9, align 8
  %125 = call i64 @IS_ERR(%struct.msm_gem_address_space* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %117
  %128 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %9, align 8
  %129 = call i32 @PTR_ERR(%struct.msm_gem_address_space* %128)
  store i32 %129, i32* %12, align 4
  br label %206

130:                                              ; preds = %117
  %131 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %9, align 8
  %132 = load %struct.msm_kms*, %struct.msm_kms** %8, align 8
  %133 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %132, i32 0, i32 1
  store %struct.msm_gem_address_space* %131, %struct.msm_gem_address_space** %133, align 8
  %134 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %9, align 8
  %135 = getelementptr inbounds %struct.msm_gem_address_space, %struct.msm_gem_address_space* %134, i32 0, i32 0
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load i32 (%struct.TYPE_14__*, i32, i32)*, i32 (%struct.TYPE_14__*, i32, i32)** %139, align 8
  %141 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %9, align 8
  %142 = getelementptr inbounds %struct.msm_gem_address_space, %struct.msm_gem_address_space* %141, i32 0, i32 0
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %142, align 8
  %144 = load i32, i32* @iommu_ports, align 4
  %145 = load i32, i32* @iommu_ports, align 4
  %146 = call i32 @ARRAY_SIZE(i32 %145)
  %147 = call i32 %140(%struct.TYPE_14__* %143, i32 %144, i32 %146)
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* %12, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %130
  %151 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %152 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %151, i32 0, i32 0
  %153 = load i32, i32* %12, align 4
  %154 = call i32 @DRM_DEV_ERROR(%struct.device* %152, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %153)
  br label %206

155:                                              ; preds = %130
  br label %160

156:                                              ; preds = %99
  %157 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %158 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %157, i32 0, i32 0
  %159 = call i32 @DRM_DEV_INFO(%struct.device* %158, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  store %struct.msm_gem_address_space* null, %struct.msm_gem_address_space** %9, align 8
  br label %160

160:                                              ; preds = %156, %155
  %161 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %162 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %161, i32 0, i32 0
  %163 = call i32 @pm_runtime_put_sync(%struct.device* %162)
  %164 = load %struct.mdp5_kms*, %struct.mdp5_kms** %6, align 8
  %165 = call i32 @modeset_init(%struct.mdp5_kms* %164)
  store i32 %165, i32* %12, align 4
  %166 = load i32, i32* %12, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %160
  %169 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %170 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %169, i32 0, i32 0
  %171 = load i32, i32* %12, align 4
  %172 = call i32 @DRM_DEV_ERROR(%struct.device* %170, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %171)
  br label %206

173:                                              ; preds = %160
  %174 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %175 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 3
  store i64 0, i64* %176, align 8
  %177 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %178 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 2
  store i64 0, i64* %179, align 8
  %180 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %181 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 0
  store i32 65535, i32* %182, align 8
  %183 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %184 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 1
  store i32 65535, i32* %185, align 4
  %186 = load i32, i32* @drm_calc_vbltimestamp_from_scanoutpos, align 4
  %187 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %188 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %187, i32 0, i32 2
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 2
  store i32 %186, i32* %190, align 4
  %191 = load i32, i32* @mdp5_get_scanoutpos, align 4
  %192 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %193 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %192, i32 0, i32 2
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 1
  store i32 %191, i32* %195, align 4
  %196 = load i32, i32* @mdp5_get_vblank_counter, align 4
  %197 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %198 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %197, i32 0, i32 2
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 0
  store i32 %196, i32* %200, align 4
  %201 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %202 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %201, i32 0, i32 1
  store i64 0, i64* %202, align 8
  %203 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %204 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %203, i32 0, i32 0
  store i32 1, i32* %204, align 8
  %205 = load %struct.msm_kms*, %struct.msm_kms** %8, align 8
  store %struct.msm_kms* %205, %struct.msm_kms** %2, align 8
  br label %215

206:                                              ; preds = %168, %150, %127, %40
  %207 = load %struct.msm_kms*, %struct.msm_kms** %8, align 8
  %208 = icmp ne %struct.msm_kms* %207, null
  br i1 %208, label %209, label %212

209:                                              ; preds = %206
  %210 = load %struct.msm_kms*, %struct.msm_kms** %8, align 8
  %211 = call i32 @mdp5_kms_destroy(%struct.msm_kms* %210)
  br label %212

212:                                              ; preds = %209, %206
  %213 = load i32, i32* %12, align 4
  %214 = call %struct.msm_kms* @ERR_PTR(i32 %213)
  store %struct.msm_kms* %214, %struct.msm_kms** %2, align 8
  br label %215

215:                                              ; preds = %212, %173, %22
  %216 = load %struct.msm_kms*, %struct.msm_kms** %2, align 8
  ret %struct.msm_kms* %216
}

declare dso_local %struct.mdp5_kms* @to_mdp5_kms(i32) #1

declare dso_local i32 @to_mdp_kms(%struct.msm_kms*) #1

declare dso_local i32 @mdp_kms_init(i32*, i32*) #1

declare dso_local i32 @irq_of_parse_and_map(i32, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*, i32) #1

declare dso_local %struct.mdp5_cfg* @mdp5_cfg_get_config(i32) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i64 @mdp5_cfg_intf_is_virtual(i32) #1

declare dso_local i32 @mdp5_write(%struct.mdp5_kms*, i32, i32) #1

declare dso_local i32 @REG_MDP5_INTF_TIMING_ENGINE_EN(i32) #1

declare dso_local i32 @REG_MDP5_INTF_FRAME_LINE_COUNT_EN(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local %struct.msm_gem_address_space* @msm_gem_address_space_create(%struct.device*, i64, i8*) #1

declare dso_local i64 @IS_ERR(%struct.msm_gem_address_space*) #1

declare dso_local i32 @PTR_ERR(%struct.msm_gem_address_space*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @DRM_DEV_INFO(%struct.device*, i8*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @modeset_init(%struct.mdp5_kms*) #1

declare dso_local i32 @mdp5_kms_destroy(%struct.msm_kms*) #1

declare dso_local %struct.msm_kms* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
