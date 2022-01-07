; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_topology.c_kfd_topology_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_topology.c_kfd_topology_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.kfd_dev = type { %struct.TYPE_10__*, i32, %struct.TYPE_9__, %struct.TYPE_16__*, i8* }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.kfd_topology_device = type { %struct.TYPE_14__, %struct.TYPE_13__*, i8* }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_11__ = type { i64 }
%struct.kfd_cu_info = type { i32, i32, i32 }
%struct.list_head = type { i32 }
%struct.amdgpu_ras = type { i32 }
%struct.amdgpu_device = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Adding new GPU (ID: 0x%x) to topology\0A\00", align 1
@topology_crat_proximity_domain = common dso_local global i32 0, align 4
@COMPUTE_UNIT_GPU = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Error creating VCRAT for GPU (ID: 0x%x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Error parsing VCRAT for GPU (ID: 0x%x)\0A\00", align 1
@topology_lock = common dso_local global i32 0, align 4
@topology_device_list = common dso_local global i32 0, align 4
@sys_props = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"Failed to update GPU (ID: 0x%x) to sysfs topology. res=%d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@KFD_TOPOLOGY_PUBLIC_NAME_SIZE = common dso_local global i32 0, align 4
@hws_gws_support = common dso_local global i64 0, align 8
@KFD_SCHED_POLICY_NO_HWS = common dso_local global i64 0, align 8
@HSA_CAP_DOORBELL_TYPE_PRE_1_0 = common dso_local global i32 0, align 4
@HSA_CAP_DOORBELL_TYPE_TOTALBITS_SHIFT = common dso_local global i32 0, align 4
@HSA_CAP_DOORBELL_TYPE_TOTALBITS_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"Adding doorbell packet type capability\0A\00", align 1
@HSA_CAP_DOORBELL_TYPE_1_0 = common dso_local global i32 0, align 4
@HSA_CAP_DOORBELL_TYPE_2_0 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"Unexpected ASIC family %u\00", align 1
@HSA_CAP_ATS_PRESENT = common dso_local global i32 0, align 4
@AMDGPU_RAS_BLOCK__SDMA = common dso_local global i32 0, align 4
@AMDGPU_RAS_BLOCK__GFX = common dso_local global i32 0, align 4
@HSA_CAP_SRAM_EDCSUPPORTED = common dso_local global i32 0, align 4
@AMDGPU_RAS_BLOCK__UMC = common dso_local global i32 0, align 4
@HSA_CAP_MEM_EDCSUPPORTED = common dso_local global i32 0, align 4
@HSA_CAP_RASEVENTNOTIFY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kfd_topology_add_device(%struct.kfd_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kfd_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kfd_topology_device*, align 8
  %6 = alloca %struct.kfd_cu_info, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.list_head, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.amdgpu_ras*, align 8
  store %struct.kfd_dev* %0, %struct.kfd_dev** %3, align 8
  store i32 0, i32* %7, align 4
  store i8* null, i8** %9, align 8
  store i64 0, i64* %10, align 8
  %13 = call i32 @INIT_LIST_HEAD(%struct.list_head* %8)
  %14 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %15 = call i8* @kfd_generate_gpu_id(%struct.kfd_dev* %14)
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = call i32 @atomic_inc_return(i32* @topology_crat_proximity_domain)
  store i32 %18, i32* %11, align 4
  %19 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %20 = call %struct.kfd_topology_device* @kfd_assign_gpu(%struct.kfd_dev* %19)
  store %struct.kfd_topology_device* %20, %struct.kfd_topology_device** %5, align 8
  %21 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %5, align 8
  %22 = icmp ne %struct.kfd_topology_device* %21, null
  br i1 %22, label %70, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @COMPUTE_UNIT_GPU, align 4
  %25 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @kfd_create_crat_image_virtual(i8** %9, i64* %10, i32 %24, %struct.kfd_dev* %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %2, align 4
  br label %368

34:                                               ; preds = %23
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @kfd_parse_crat_table(i8* %35, %struct.list_head* %8, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  br label %364

43:                                               ; preds = %34
  %44 = call i32 @down_write(i32* @topology_lock)
  %45 = call i32 @kfd_topology_update_device_list(%struct.list_head* %8, i32* @topology_device_list)
  %46 = call i32 (...) @kfd_topology_update_sysfs()
  store i32 %46, i32* %7, align 4
  %47 = call i32 @up_write(i32* @topology_lock)
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @sys_props, i32 0, i32 0), align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @sys_props, i32 0, i32 0), align 4
  br label %57

53:                                               ; preds = %43
  %54 = load i8*, i8** %4, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i8* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %50
  %58 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %59 = call %struct.kfd_topology_device* @kfd_assign_gpu(%struct.kfd_dev* %58)
  store %struct.kfd_topology_device* %59, %struct.kfd_topology_device** %5, align 8
  %60 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %5, align 8
  %61 = icmp ne %struct.kfd_topology_device* %60, null
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i64 @WARN_ON(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %57
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %7, align 4
  br label %364

69:                                               ; preds = %57
  br label %70

70:                                               ; preds = %69, %1
  %71 = load i8*, i8** %4, align 8
  %72 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %5, align 8
  %73 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %72, i32 0, i32 2
  store i8* %71, i8** %73, align 8
  %74 = load i8*, i8** %4, align 8
  %75 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %76 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %75, i32 0, i32 4
  store i8* %74, i8** %76, align 8
  %77 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %5, align 8
  %78 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %77, i32 0, i32 1
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @amdgpu_amdkfd_get_cu_info(i64 %81, %struct.kfd_cu_info* %6)
  %83 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %5, align 8
  %84 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 14
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %88 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %87, i32 0, i32 0
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @KFD_TOPOLOGY_PUBLIC_NAME_SIZE, align 4
  %93 = call i32 @strncpy(i32 %86, i32 %91, i32 %92)
  %94 = getelementptr inbounds %struct.kfd_cu_info, %struct.kfd_cu_info* %6, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %5, align 8
  %97 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 13
  store i32 %95, i32* %98, align 4
  %99 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %100 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %99, i32 0, i32 3
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %5, align 8
  %105 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 12
  store i32 %103, i32* %106, align 8
  %107 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %108 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %107, i32 0, i32 3
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %5, align 8
  %113 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 11
  store i32 %111, i32* %114, align 4
  %115 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %116 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %115, i32 0, i32 3
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %116, align 8
  %118 = call i32 @pci_dev_id(%struct.TYPE_16__* %117)
  %119 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %5, align 8
  %120 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 10
  store i32 %118, i32* %121, align 8
  %122 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %5, align 8
  %123 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %122, i32 0, i32 1
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @amdgpu_amdkfd_get_max_engine_clock_in_mhz(i64 %126)
  %128 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %5, align 8
  %129 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 9
  store i32 %127, i32* %130, align 4
  %131 = call i32 @cpufreq_quick_get_max(i32 0)
  %132 = sdiv i32 %131, 1000
  %133 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %5, align 8
  %134 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  store i32 %132, i32* %135, align 8
  %136 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %137 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %5, align 8
  %141 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 8
  store i32 %139, i32* %142, align 8
  %143 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %144 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %5, align 8
  %147 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 7
  store i32 %145, i32* %148, align 4
  %149 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %150 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %149, i32 0, i32 0
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %5, align 8
  %155 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 6
  store i32 %153, i32* %156, align 8
  %157 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %158 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %157, i32 0, i32 0
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %5, align 8
  %163 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 5
  store i32 %161, i32* %164, align 4
  %165 = load i64, i64* @hws_gws_support, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %184

167:                                              ; preds = %70
  %168 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %5, align 8
  %169 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %168, i32 0, i32 1
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @KFD_SCHED_POLICY_NO_HWS, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %177, label %184

177:                                              ; preds = %167
  %178 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %5, align 8
  %179 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %178, i32 0, i32 1
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @amdgpu_amdkfd_get_num_gws(i64 %182)
  br label %185

184:                                              ; preds = %167, %70
  br label %185

185:                                              ; preds = %184, %177
  %186 = phi i32 [ %183, %177 ], [ 0, %184 ]
  %187 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %5, align 8
  %188 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 4
  store i32 %186, i32* %189, align 8
  %190 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %5, align 8
  %191 = call i32 @kfd_fill_mem_clk_max_info(%struct.kfd_topology_device* %190)
  %192 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %5, align 8
  %193 = call i32 @kfd_fill_iolink_non_crat_info(%struct.kfd_topology_device* %192)
  %194 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %5, align 8
  %195 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %194, i32 0, i32 1
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 1
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  switch i32 %200, label %235 [
    i32 138, label %201
    i32 139, label %201
    i32 132, label %201
    i32 141, label %212
    i32 140, label %212
    i32 136, label %212
    i32 135, label %212
    i32 134, label %212
    i32 128, label %212
    i32 131, label %224
    i32 130, label %224
    i32 129, label %224
    i32 133, label %224
    i32 142, label %224
    i32 137, label %224
  ]

201:                                              ; preds = %185, %185, %185
  %202 = load i32, i32* @HSA_CAP_DOORBELL_TYPE_PRE_1_0, align 4
  %203 = load i32, i32* @HSA_CAP_DOORBELL_TYPE_TOTALBITS_SHIFT, align 4
  %204 = shl i32 %202, %203
  %205 = load i32, i32* @HSA_CAP_DOORBELL_TYPE_TOTALBITS_MASK, align 4
  %206 = and i32 %204, %205
  %207 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %5, align 8
  %208 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %210, %206
  store i32 %211, i32* %209, align 4
  br label %244

212:                                              ; preds = %185, %185, %185, %185, %185, %185
  %213 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %214 = load i32, i32* @HSA_CAP_DOORBELL_TYPE_1_0, align 4
  %215 = load i32, i32* @HSA_CAP_DOORBELL_TYPE_TOTALBITS_SHIFT, align 4
  %216 = shl i32 %214, %215
  %217 = load i32, i32* @HSA_CAP_DOORBELL_TYPE_TOTALBITS_MASK, align 4
  %218 = and i32 %216, %217
  %219 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %5, align 8
  %220 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = or i32 %222, %218
  store i32 %223, i32* %221, align 4
  br label %244

224:                                              ; preds = %185, %185, %185, %185, %185, %185
  %225 = load i32, i32* @HSA_CAP_DOORBELL_TYPE_2_0, align 4
  %226 = load i32, i32* @HSA_CAP_DOORBELL_TYPE_TOTALBITS_SHIFT, align 4
  %227 = shl i32 %225, %226
  %228 = load i32, i32* @HSA_CAP_DOORBELL_TYPE_TOTALBITS_MASK, align 4
  %229 = and i32 %227, %228
  %230 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %5, align 8
  %231 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = or i32 %233, %229
  store i32 %234, i32* %232, align 4
  br label %244

235:                                              ; preds = %185
  %236 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %5, align 8
  %237 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %236, i32 0, i32 1
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %242)
  br label %244

244:                                              ; preds = %235, %224, %212, %201
  %245 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %5, align 8
  %246 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %245, i32 0, i32 1
  %247 = load %struct.TYPE_13__*, %struct.TYPE_13__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 1
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %260

253:                                              ; preds = %244
  %254 = load i32, i32* @HSA_CAP_ATS_PRESENT, align 4
  %255 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %5, align 8
  %256 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = or i32 %258, %254
  store i32 %259, i32* %257, align 4
  br label %268

260:                                              ; preds = %244
  %261 = load i32, i32* @HSA_CAP_ATS_PRESENT, align 4
  %262 = xor i32 %261, -1
  %263 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %5, align 8
  %264 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = and i32 %266, %262
  store i32 %267, i32* %265, align 4
  br label %268

268:                                              ; preds = %260, %253
  %269 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %5, align 8
  %270 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %269, i32 0, i32 1
  %271 = load %struct.TYPE_13__*, %struct.TYPE_13__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i32 0, i32 1
  %273 = load %struct.TYPE_12__*, %struct.TYPE_12__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = icmp eq i32 %275, 141
  br i1 %276, label %277, label %289

277:                                              ; preds = %268
  %278 = getelementptr inbounds %struct.kfd_cu_info, %struct.kfd_cu_info* %6, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = getelementptr inbounds %struct.kfd_cu_info, %struct.kfd_cu_info* %6, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = mul nsw i32 %279, %281
  %283 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %5, align 8
  %284 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 2
  store i32 %282, i32* %285, align 8
  %286 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %5, align 8
  %287 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %287, i32 0, i32 3
  store i32 10, i32* %288, align 4
  br label %289

289:                                              ; preds = %277, %268
  %290 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %5, align 8
  %291 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %290, i32 0, i32 1
  %292 = load %struct.TYPE_13__*, %struct.TYPE_13__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = inttoptr i64 %294 to %struct.amdgpu_device*
  %296 = call %struct.amdgpu_ras* @amdgpu_ras_get_context(%struct.amdgpu_device* %295)
  store %struct.amdgpu_ras* %296, %struct.amdgpu_ras** %12, align 8
  %297 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %12, align 8
  %298 = icmp ne %struct.amdgpu_ras* %297, null
  br i1 %298, label %299, label %356

299:                                              ; preds = %289
  %300 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %12, align 8
  %301 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* @AMDGPU_RAS_BLOCK__SDMA, align 4
  %304 = call i32 @BIT(i32 %303)
  %305 = and i32 %302, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %315, label %307

307:                                              ; preds = %299
  %308 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %12, align 8
  %309 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* @AMDGPU_RAS_BLOCK__GFX, align 4
  %312 = call i32 @BIT(i32 %311)
  %313 = and i32 %310, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %317

315:                                              ; preds = %307, %299
  %316 = load i32, i32* @HSA_CAP_SRAM_EDCSUPPORTED, align 4
  br label %318

317:                                              ; preds = %307
  br label %318

318:                                              ; preds = %317, %315
  %319 = phi i32 [ %316, %315 ], [ 0, %317 ]
  %320 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %5, align 8
  %321 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = or i32 %323, %319
  store i32 %324, i32* %322, align 4
  %325 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %12, align 8
  %326 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 4
  %328 = load i32, i32* @AMDGPU_RAS_BLOCK__UMC, align 4
  %329 = call i32 @BIT(i32 %328)
  %330 = and i32 %327, %329
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %334

332:                                              ; preds = %318
  %333 = load i32, i32* @HSA_CAP_MEM_EDCSUPPORTED, align 4
  br label %335

334:                                              ; preds = %318
  br label %335

335:                                              ; preds = %334, %332
  %336 = phi i32 [ %333, %332 ], [ 0, %334 ]
  %337 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %5, align 8
  %338 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = or i32 %340, %336
  store i32 %341, i32* %339, align 4
  %342 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %12, align 8
  %343 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %348

346:                                              ; preds = %335
  %347 = load i32, i32* @HSA_CAP_RASEVENTNOTIFY, align 4
  br label %349

348:                                              ; preds = %335
  br label %349

349:                                              ; preds = %348, %346
  %350 = phi i32 [ %347, %346 ], [ 0, %348 ]
  %351 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %5, align 8
  %352 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = or i32 %354, %350
  store i32 %355, i32* %353, align 4
  br label %356

356:                                              ; preds = %349, %289
  %357 = call i32 (...) @kfd_debug_print_topology()
  %358 = load i32, i32* %7, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %363, label %360

360:                                              ; preds = %356
  %361 = load i8*, i8** %4, align 8
  %362 = call i32 @kfd_notify_gpu_change(i8* %361, i32 1)
  br label %363

363:                                              ; preds = %360, %356
  br label %364

364:                                              ; preds = %363, %66, %40
  %365 = load i8*, i8** %9, align 8
  %366 = call i32 @kfd_destroy_crat_image(i8* %365)
  %367 = load i32, i32* %7, align 4
  store i32 %367, i32* %2, align 4
  br label %368

368:                                              ; preds = %364, %30
  %369 = load i32, i32* %2, align 4
  ret i32 %369
}

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i8* @kfd_generate_gpu_id(%struct.kfd_dev*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local %struct.kfd_topology_device* @kfd_assign_gpu(%struct.kfd_dev*) #1

declare dso_local i32 @kfd_create_crat_image_virtual(i8**, i64*, i32, %struct.kfd_dev*, i32) #1

declare dso_local i32 @pr_err(i8*, i8*, ...) #1

declare dso_local i32 @kfd_parse_crat_table(i8*, %struct.list_head*, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @kfd_topology_update_device_list(%struct.list_head*, i32*) #1

declare dso_local i32 @kfd_topology_update_sysfs(...) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @amdgpu_amdkfd_get_cu_info(i64, %struct.kfd_cu_info*) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @pci_dev_id(%struct.TYPE_16__*) #1

declare dso_local i32 @amdgpu_amdkfd_get_max_engine_clock_in_mhz(i64) #1

declare dso_local i32 @cpufreq_quick_get_max(i32) #1

declare dso_local i32 @amdgpu_amdkfd_get_num_gws(i64) #1

declare dso_local i32 @kfd_fill_mem_clk_max_info(%struct.kfd_topology_device*) #1

declare dso_local i32 @kfd_fill_iolink_non_crat_info(%struct.kfd_topology_device*) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local %struct.amdgpu_ras* @amdgpu_ras_get_context(%struct.amdgpu_device*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @kfd_debug_print_topology(...) #1

declare dso_local i32 @kfd_notify_gpu_change(i8*, i32) #1

declare dso_local i32 @kfd_destroy_crat_image(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
