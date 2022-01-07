; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_drv.c_msm_drm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_drv.c_msm_drm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.drm_driver = type { i32 }
%struct.platform_device = type { i32 }
%struct.drm_device = type { i32, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.drm_device*, %struct.msm_drm_private* }
%struct.TYPE_8__ = type { i32, i32*, i32* }
%struct.TYPE_7__ = type { i32 (%struct.msm_kms*)* }
%struct.msm_kms = type { i32, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.msm_kms*, %struct.msm_drm_private* }
%struct.msm_drm_private = type { i32, i32, %struct.TYPE_11__*, %struct.TYPE_10__**, %struct.msm_kms*, i32, i32, i32, i32, %struct.msm_mdss*, %struct.msm_kms* }
%struct.TYPE_11__ = type { %struct.msm_kms*, i32, i32, %struct.msm_kms* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.msm_mdss = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { {}* }
%struct.sched_param = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"failed to allocate drm_device\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"msm\00", align 1
@msm_gem_free_work = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"failed to load kms\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"kms hw init failed: %d\0A\00", align 1
@mode_config_funcs = common dso_local global i32 0, align 4
@mode_config_helper_funcs = common dso_local global i32 0, align 4
@kthread_worker_fn = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"crtc_event:%d\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"failed to create crtc_event kthread\0A\00", align 1
@SCHED_FIFO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"event_thread set priority failed:%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"failed to initialize vblank\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"failed to install IRQ handler\0A\00", align 1
@fbdev = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.drm_driver*)* @msm_drm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_drm_init(%struct.device* %0, %struct.drm_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.drm_driver*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.msm_drm_private*, align 8
  %9 = alloca %struct.msm_kms*, align 8
  %10 = alloca %struct.msm_mdss*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sched_param, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.drm_driver* %1, %struct.drm_driver** %5, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call %struct.platform_device* @to_platform_device(%struct.device* %14)
  store %struct.platform_device* %15, %struct.platform_device** %6, align 8
  %16 = load %struct.drm_driver*, %struct.drm_driver** %5, align 8
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call %struct.msm_kms* @drm_dev_alloc(%struct.drm_driver* %16, %struct.device* %17)
  %19 = bitcast %struct.msm_kms* %18 to %struct.drm_device*
  store %struct.drm_device* %19, %struct.drm_device** %7, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %21 = bitcast %struct.drm_device* %20 to %struct.msm_kms*
  %22 = call i64 @IS_ERR(%struct.msm_kms* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %28 = bitcast %struct.drm_device* %27 to %struct.msm_kms*
  %29 = call i32 @PTR_ERR(%struct.msm_kms* %28)
  store i32 %29, i32* %3, align 4
  br label %362

30:                                               ; preds = %2
  %31 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %32 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %33 = bitcast %struct.drm_device* %32 to %struct.msm_kms*
  %34 = call i32 @platform_set_drvdata(%struct.platform_device* %31, %struct.msm_kms* %33)
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.msm_drm_private* @kzalloc(i32 64, i32 %35)
  store %struct.msm_drm_private* %36, %struct.msm_drm_private** %8, align 8
  %37 = load %struct.msm_drm_private*, %struct.msm_drm_private** %8, align 8
  %38 = icmp ne %struct.msm_drm_private* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %30
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %11, align 4
  br label %357

42:                                               ; preds = %30
  %43 = load %struct.msm_drm_private*, %struct.msm_drm_private** %8, align 8
  %44 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %45 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %44, i32 0, i32 4
  store %struct.msm_drm_private* %43, %struct.msm_drm_private** %45, align 8
  %46 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %47 = bitcast %struct.drm_device* %46 to %struct.msm_kms*
  %48 = load %struct.msm_drm_private*, %struct.msm_drm_private** %8, align 8
  %49 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %48, i32 0, i32 10
  store %struct.msm_kms* %47, %struct.msm_kms** %49, align 8
  %50 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %51 = call i32 @get_mdp_ver(%struct.platform_device* %50)
  switch i32 %51, label %60 [
    i32 128, label %52
    i32 130, label %56
  ]

52:                                               ; preds = %42
  %53 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %54 = bitcast %struct.drm_device* %53 to %struct.msm_kms*
  %55 = call i32 @mdp5_mdss_init(%struct.msm_kms* %54)
  store i32 %55, i32* %11, align 4
  br label %61

56:                                               ; preds = %42
  %57 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %58 = bitcast %struct.drm_device* %57 to %struct.msm_kms*
  %59 = call i32 @dpu_mdss_init(%struct.msm_kms* %58)
  store i32 %59, i32* %11, align 4
  br label %61

60:                                               ; preds = %42
  store i32 0, i32* %11, align 4
  br label %61

61:                                               ; preds = %60, %56, %52
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %354

65:                                               ; preds = %61
  %66 = load %struct.msm_drm_private*, %struct.msm_drm_private** %8, align 8
  %67 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %66, i32 0, i32 9
  %68 = load %struct.msm_mdss*, %struct.msm_mdss** %67, align 8
  store %struct.msm_mdss* %68, %struct.msm_mdss** %10, align 8
  %69 = call i32 @alloc_ordered_workqueue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %70 = load %struct.msm_drm_private*, %struct.msm_drm_private** %8, align 8
  %71 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %70, i32 0, i32 8
  store i32 %69, i32* %71, align 4
  %72 = load %struct.msm_drm_private*, %struct.msm_drm_private** %8, align 8
  %73 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %72, i32 0, i32 7
  %74 = load i32, i32* @msm_gem_free_work, align 4
  %75 = call i32 @INIT_WORK(i32* %73, i32 %74)
  %76 = load %struct.msm_drm_private*, %struct.msm_drm_private** %8, align 8
  %77 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %76, i32 0, i32 6
  %78 = call i32 @init_llist_head(i32* %77)
  %79 = load %struct.msm_drm_private*, %struct.msm_drm_private** %8, align 8
  %80 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %79, i32 0, i32 5
  %81 = call i32 @INIT_LIST_HEAD(i32* %80)
  %82 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %83 = bitcast %struct.drm_device* %82 to %struct.msm_kms*
  %84 = call i32 @drm_mode_config_init(%struct.msm_kms* %83)
  %85 = load %struct.device*, %struct.device** %4, align 8
  %86 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %87 = bitcast %struct.drm_device* %86 to %struct.msm_kms*
  %88 = call i32 @component_bind_all(%struct.device* %85, %struct.msm_kms* %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %65
  br label %335

92:                                               ; preds = %65
  %93 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %94 = bitcast %struct.drm_device* %93 to %struct.msm_kms*
  %95 = call i32 @msm_init_vram(%struct.msm_kms* %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %331

99:                                               ; preds = %92
  %100 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %101 = bitcast %struct.drm_device* %100 to %struct.msm_kms*
  %102 = call i32 @msm_gem_shrinker_init(%struct.msm_kms* %101)
  %103 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %104 = call i32 @get_mdp_ver(%struct.platform_device* %103)
  switch i32 %104, label %123 [
    i32 129, label %105
    i32 128, label %112
    i32 130, label %116
  ]

105:                                              ; preds = %99
  %106 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %107 = bitcast %struct.drm_device* %106 to %struct.msm_kms*
  %108 = call %struct.msm_kms* @mdp4_kms_init(%struct.msm_kms* %107)
  store %struct.msm_kms* %108, %struct.msm_kms** %9, align 8
  %109 = load %struct.msm_kms*, %struct.msm_kms** %9, align 8
  %110 = load %struct.msm_drm_private*, %struct.msm_drm_private** %8, align 8
  %111 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %110, i32 0, i32 4
  store %struct.msm_kms* %109, %struct.msm_kms** %111, align 8
  br label %128

112:                                              ; preds = %99
  %113 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %114 = bitcast %struct.drm_device* %113 to %struct.msm_kms*
  %115 = call %struct.msm_kms* @mdp5_kms_init(%struct.msm_kms* %114)
  store %struct.msm_kms* %115, %struct.msm_kms** %9, align 8
  br label %128

116:                                              ; preds = %99
  %117 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %118 = bitcast %struct.drm_device* %117 to %struct.msm_kms*
  %119 = call %struct.msm_kms* @dpu_kms_init(%struct.msm_kms* %118)
  store %struct.msm_kms* %119, %struct.msm_kms** %9, align 8
  %120 = load %struct.msm_kms*, %struct.msm_kms** %9, align 8
  %121 = load %struct.msm_drm_private*, %struct.msm_drm_private** %8, align 8
  %122 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %121, i32 0, i32 4
  store %struct.msm_kms* %120, %struct.msm_kms** %122, align 8
  br label %128

123:                                              ; preds = %99
  %124 = load %struct.device*, %struct.device** %4, align 8
  %125 = getelementptr inbounds %struct.device, %struct.device* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @WARN_ON(i32 %126)
  store %struct.msm_kms* null, %struct.msm_kms** %9, align 8
  br label %128

128:                                              ; preds = %123, %116, %112, %105
  %129 = load %struct.msm_kms*, %struct.msm_kms** %9, align 8
  %130 = call i64 @IS_ERR(%struct.msm_kms* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %128
  %133 = load %struct.device*, %struct.device** %4, align 8
  %134 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %133, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %135 = load %struct.msm_kms*, %struct.msm_kms** %9, align 8
  %136 = call i32 @PTR_ERR(%struct.msm_kms* %135)
  store i32 %136, i32* %11, align 4
  %137 = load %struct.msm_drm_private*, %struct.msm_drm_private** %8, align 8
  %138 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %137, i32 0, i32 4
  store %struct.msm_kms* null, %struct.msm_kms** %138, align 8
  br label %331

139:                                              ; preds = %128
  %140 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %141 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  store i32 1, i32* %142, align 8
  %143 = load %struct.msm_kms*, %struct.msm_kms** %9, align 8
  %144 = icmp ne %struct.msm_kms* %143, null
  br i1 %144, label %145, label %164

145:                                              ; preds = %139
  %146 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %147 = bitcast %struct.drm_device* %146 to %struct.msm_kms*
  %148 = load %struct.msm_kms*, %struct.msm_kms** %9, align 8
  %149 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %148, i32 0, i32 3
  store %struct.msm_kms* %147, %struct.msm_kms** %149, align 8
  %150 = load %struct.msm_kms*, %struct.msm_kms** %9, align 8
  %151 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %150, i32 0, i32 2
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = load i32 (%struct.msm_kms*)*, i32 (%struct.msm_kms*)** %153, align 8
  %155 = load %struct.msm_kms*, %struct.msm_kms** %9, align 8
  %156 = call i32 %154(%struct.msm_kms* %155)
  store i32 %156, i32* %11, align 4
  %157 = load i32, i32* %11, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %145
  %160 = load %struct.device*, %struct.device** %4, align 8
  %161 = load i32, i32* %11, align 4
  %162 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %160, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %161)
  br label %331

163:                                              ; preds = %145
  br label %164

164:                                              ; preds = %163, %139
  %165 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %166 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 2
  store i32* @mode_config_funcs, i32** %167, align 8
  %168 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %169 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 1
  store i32* @mode_config_helper_funcs, i32** %170, align 8
  %171 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %13, i32 0, i32 0
  store i32 16, i32* %171, align 4
  store i32 0, i32* %12, align 4
  br label %172

172:                                              ; preds = %275, %164
  %173 = load i32, i32* %12, align 4
  %174 = load %struct.msm_drm_private*, %struct.msm_drm_private** %8, align 8
  %175 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp slt i32 %173, %176
  br i1 %177, label %178, label %278

178:                                              ; preds = %172
  %179 = load %struct.msm_drm_private*, %struct.msm_drm_private** %8, align 8
  %180 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %179, i32 0, i32 3
  %181 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %180, align 8
  %182 = load i32, i32* %12, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %181, i64 %183
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.msm_drm_private*, %struct.msm_drm_private** %8, align 8
  %190 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %189, i32 0, i32 2
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %190, align 8
  %192 = load i32, i32* %12, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 1
  store i32 %188, i32* %195, align 8
  %196 = load %struct.msm_drm_private*, %struct.msm_drm_private** %8, align 8
  %197 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %196, i32 0, i32 2
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %197, align 8
  %199 = load i32, i32* %12, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 2
  %203 = call i32 @kthread_init_worker(i32* %202)
  %204 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %205 = bitcast %struct.drm_device* %204 to %struct.msm_kms*
  %206 = load %struct.msm_drm_private*, %struct.msm_drm_private** %8, align 8
  %207 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %206, i32 0, i32 2
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %207, align 8
  %209 = load i32, i32* %12, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 3
  store %struct.msm_kms* %205, %struct.msm_kms** %212, align 8
  %213 = load i32, i32* @kthread_worker_fn, align 4
  %214 = load %struct.msm_drm_private*, %struct.msm_drm_private** %8, align 8
  %215 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %214, i32 0, i32 2
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %215, align 8
  %217 = load i32, i32* %12, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 2
  %221 = load %struct.msm_drm_private*, %struct.msm_drm_private** %8, align 8
  %222 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %221, i32 0, i32 2
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %222, align 8
  %224 = load i32, i32* %12, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = call %struct.msm_kms* @kthread_run(i32 %213, i32* %220, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %228)
  %230 = load %struct.msm_drm_private*, %struct.msm_drm_private** %8, align 8
  %231 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %230, i32 0, i32 2
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %231, align 8
  %233 = load i32, i32* %12, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 0
  store %struct.msm_kms* %229, %struct.msm_kms** %236, align 8
  %237 = load %struct.msm_drm_private*, %struct.msm_drm_private** %8, align 8
  %238 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %237, i32 0, i32 2
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %238, align 8
  %240 = load i32, i32* %12, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 0
  %244 = load %struct.msm_kms*, %struct.msm_kms** %243, align 8
  %245 = call i64 @IS_ERR(%struct.msm_kms* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %257

247:                                              ; preds = %178
  %248 = load %struct.device*, %struct.device** %4, align 8
  %249 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %248, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %250 = load %struct.msm_drm_private*, %struct.msm_drm_private** %8, align 8
  %251 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %250, i32 0, i32 2
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %251, align 8
  %253 = load i32, i32* %12, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 0
  store %struct.msm_kms* null, %struct.msm_kms** %256, align 8
  br label %331

257:                                              ; preds = %178
  %258 = load %struct.msm_drm_private*, %struct.msm_drm_private** %8, align 8
  %259 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %258, i32 0, i32 2
  %260 = load %struct.TYPE_11__*, %struct.TYPE_11__** %259, align 8
  %261 = load i32, i32* %12, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 0
  %265 = load %struct.msm_kms*, %struct.msm_kms** %264, align 8
  %266 = load i32, i32* @SCHED_FIFO, align 4
  %267 = call i32 @sched_setscheduler(%struct.msm_kms* %265, i32 %266, %struct.sched_param* %13)
  store i32 %267, i32* %11, align 4
  %268 = load i32, i32* %11, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %274

270:                                              ; preds = %257
  %271 = load %struct.device*, %struct.device** %4, align 8
  %272 = load i32, i32* %11, align 4
  %273 = call i32 @dev_warn(%struct.device* %271, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %272)
  br label %274

274:                                              ; preds = %270, %257
  br label %275

275:                                              ; preds = %274
  %276 = load i32, i32* %12, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %12, align 4
  br label %172

278:                                              ; preds = %172
  %279 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %280 = bitcast %struct.drm_device* %279 to %struct.msm_kms*
  %281 = load %struct.msm_drm_private*, %struct.msm_drm_private** %8, align 8
  %282 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = call i32 @drm_vblank_init(%struct.msm_kms* %280, i32 %283)
  store i32 %284, i32* %11, align 4
  %285 = load i32, i32* %11, align 4
  %286 = icmp slt i32 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %278
  %288 = load %struct.device*, %struct.device** %4, align 8
  %289 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %288, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %331

290:                                              ; preds = %278
  %291 = load %struct.msm_kms*, %struct.msm_kms** %9, align 8
  %292 = icmp ne %struct.msm_kms* %291, null
  br i1 %292, label %293, label %310

293:                                              ; preds = %290
  %294 = load %struct.device*, %struct.device** %4, align 8
  %295 = call i32 @pm_runtime_get_sync(%struct.device* %294)
  %296 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %297 = bitcast %struct.drm_device* %296 to %struct.msm_kms*
  %298 = load %struct.msm_kms*, %struct.msm_kms** %9, align 8
  %299 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = call i32 @drm_irq_install(%struct.msm_kms* %297, i32 %300)
  store i32 %301, i32* %11, align 4
  %302 = load %struct.device*, %struct.device** %4, align 8
  %303 = call i32 @pm_runtime_put_sync(%struct.device* %302)
  %304 = load i32, i32* %11, align 4
  %305 = icmp slt i32 %304, 0
  br i1 %305, label %306, label %309

306:                                              ; preds = %293
  %307 = load %struct.device*, %struct.device** %4, align 8
  %308 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %307, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  br label %331

309:                                              ; preds = %293
  br label %310

310:                                              ; preds = %309, %290
  %311 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %312 = bitcast %struct.drm_device* %311 to %struct.msm_kms*
  %313 = call i32 @drm_dev_register(%struct.msm_kms* %312, i32 0)
  store i32 %313, i32* %11, align 4
  %314 = load i32, i32* %11, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %317

316:                                              ; preds = %310
  br label %331

317:                                              ; preds = %310
  %318 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %319 = bitcast %struct.drm_device* %318 to %struct.msm_kms*
  %320 = call i32 @drm_mode_config_reset(%struct.msm_kms* %319)
  %321 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %322 = bitcast %struct.drm_device* %321 to %struct.msm_kms*
  %323 = call i32 @msm_debugfs_late_init(%struct.msm_kms* %322)
  store i32 %323, i32* %11, align 4
  %324 = load i32, i32* %11, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %317
  br label %331

327:                                              ; preds = %317
  %328 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %329 = bitcast %struct.drm_device* %328 to %struct.msm_kms*
  %330 = call i32 @drm_kms_helper_poll_init(%struct.msm_kms* %329)
  store i32 0, i32* %3, align 4
  br label %362

331:                                              ; preds = %326, %316, %306, %287, %247, %159, %132, %98
  %332 = load %struct.device*, %struct.device** %4, align 8
  %333 = call i32 @msm_drm_uninit(%struct.device* %332)
  %334 = load i32, i32* %11, align 4
  store i32 %334, i32* %3, align 4
  br label %362

335:                                              ; preds = %91
  %336 = load %struct.msm_mdss*, %struct.msm_mdss** %10, align 8
  %337 = icmp ne %struct.msm_mdss* %336, null
  br i1 %337, label %338, label %353

338:                                              ; preds = %335
  %339 = load %struct.msm_mdss*, %struct.msm_mdss** %10, align 8
  %340 = getelementptr inbounds %struct.msm_mdss, %struct.msm_mdss* %339, i32 0, i32 0
  %341 = load %struct.TYPE_12__*, %struct.TYPE_12__** %340, align 8
  %342 = icmp ne %struct.TYPE_12__* %341, null
  br i1 %342, label %343, label %353

343:                                              ; preds = %338
  %344 = load %struct.msm_mdss*, %struct.msm_mdss** %10, align 8
  %345 = getelementptr inbounds %struct.msm_mdss, %struct.msm_mdss* %344, i32 0, i32 0
  %346 = load %struct.TYPE_12__*, %struct.TYPE_12__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %346, i32 0, i32 0
  %348 = bitcast {}** %347 to i32 (%struct.msm_kms*)**
  %349 = load i32 (%struct.msm_kms*)*, i32 (%struct.msm_kms*)** %348, align 8
  %350 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %351 = bitcast %struct.drm_device* %350 to %struct.msm_kms*
  %352 = call i32 %349(%struct.msm_kms* %351)
  br label %353

353:                                              ; preds = %343, %338, %335
  br label %354

354:                                              ; preds = %353, %64
  %355 = load %struct.msm_drm_private*, %struct.msm_drm_private** %8, align 8
  %356 = call i32 @kfree(%struct.msm_drm_private* %355)
  br label %357

357:                                              ; preds = %354, %39
  %358 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %359 = bitcast %struct.drm_device* %358 to %struct.msm_kms*
  %360 = call i32 @drm_dev_put(%struct.msm_kms* %359)
  %361 = load i32, i32* %11, align 4
  store i32 %361, i32* %3, align 4
  br label %362

362:                                              ; preds = %357, %331, %327, %24
  %363 = load i32, i32* %3, align 4
  ret i32 %363
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.msm_kms* @drm_dev_alloc(%struct.drm_driver*, %struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.msm_kms*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.msm_kms*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.msm_kms*) #1

declare dso_local %struct.msm_drm_private* @kzalloc(i32, i32) #1

declare dso_local i32 @get_mdp_ver(%struct.platform_device*) #1

declare dso_local i32 @mdp5_mdss_init(%struct.msm_kms*) #1

declare dso_local i32 @dpu_mdss_init(%struct.msm_kms*) #1

declare dso_local i32 @alloc_ordered_workqueue(i8*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_llist_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @drm_mode_config_init(%struct.msm_kms*) #1

declare dso_local i32 @component_bind_all(%struct.device*, %struct.msm_kms*) #1

declare dso_local i32 @msm_init_vram(%struct.msm_kms*) #1

declare dso_local i32 @msm_gem_shrinker_init(%struct.msm_kms*) #1

declare dso_local %struct.msm_kms* @mdp4_kms_init(%struct.msm_kms*) #1

declare dso_local %struct.msm_kms* @mdp5_kms_init(%struct.msm_kms*) #1

declare dso_local %struct.msm_kms* @dpu_kms_init(%struct.msm_kms*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kthread_init_worker(i32*) #1

declare dso_local %struct.msm_kms* @kthread_run(i32, i32*, i8*, i32) #1

declare dso_local i32 @sched_setscheduler(%struct.msm_kms*, i32, %struct.sched_param*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @drm_vblank_init(%struct.msm_kms*, i32) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @drm_irq_install(%struct.msm_kms*, i32) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @drm_dev_register(%struct.msm_kms*, i32) #1

declare dso_local i32 @drm_mode_config_reset(%struct.msm_kms*) #1

declare dso_local i32 @msm_debugfs_late_init(%struct.msm_kms*) #1

declare dso_local i32 @drm_kms_helper_poll_init(%struct.msm_kms*) #1

declare dso_local i32 @msm_drm_uninit(%struct.device*) #1

declare dso_local i32 @kfree(%struct.msm_drm_private*) #1

declare dso_local i32 @drm_dev_put(%struct.msm_kms*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
