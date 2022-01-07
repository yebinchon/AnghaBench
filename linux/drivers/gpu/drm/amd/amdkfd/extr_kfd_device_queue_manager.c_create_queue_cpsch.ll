; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_create_queue_cpsch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_create_queue_cpsch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_queue_manager = type { i64, i32, i32, i32, %struct.TYPE_4__, %struct.mqd_manager** }
%struct.TYPE_4__ = type { i32 (%struct.device_queue_manager.0*, %struct.queue*, %struct.qcm_process_device*)* }
%struct.device_queue_manager.0 = type opaque
%struct.mqd_manager = type { i32 (%struct.mqd_manager*, i32*, i32, i32*, %struct.TYPE_5__*)*, i32, i32 (i32, %struct.TYPE_5__*)* }
%struct.TYPE_5__ = type { i64, i32, i64, i32, i32 }
%struct.queue = type { %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.qcm_process_device = type { i32, i32, i32, i32, i32 }

@max_num_of_queues_per_device = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [72 x i8] c"Can't create new usermode queue because %d queues were already created\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@KFD_QUEUE_TYPE_SDMA = common dso_local global i64 0, align 8
@KFD_QUEUE_TYPE_SDMA_XGMI = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@KFD_UNMAP_QUEUES_FILTER_DYNAMIC_QUEUES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Total of %d queues are accountable so far\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_queue_manager*, %struct.queue*, %struct.qcm_process_device*)* @create_queue_cpsch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_queue_cpsch(%struct.device_queue_manager* %0, %struct.queue* %1, %struct.qcm_process_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_queue_manager*, align 8
  %6 = alloca %struct.queue*, align 8
  %7 = alloca %struct.qcm_process_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mqd_manager*, align 8
  store %struct.device_queue_manager* %0, %struct.device_queue_manager** %5, align 8
  store %struct.queue* %1, %struct.queue** %6, align 8
  store %struct.qcm_process_device* %2, %struct.qcm_process_device** %7, align 8
  %10 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %11 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @max_num_of_queues_per_device, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %17 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @pr_warn(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i32, i32* @EPERM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %8, align 4
  br label %233

22:                                               ; preds = %3
  %23 = load %struct.queue*, %struct.queue** %6, align 8
  %24 = getelementptr inbounds %struct.queue, %struct.queue* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @KFD_QUEUE_TYPE_SDMA, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %36, label %29

29:                                               ; preds = %22
  %30 = load %struct.queue*, %struct.queue** %6, align 8
  %31 = getelementptr inbounds %struct.queue, %struct.queue* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @KFD_QUEUE_TYPE_SDMA_XGMI, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %29, %22
  %37 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %38 = call i32 @dqm_lock(%struct.device_queue_manager* %37)
  %39 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %40 = load %struct.queue*, %struct.queue** %6, align 8
  %41 = call i32 @allocate_sdma_queue(%struct.device_queue_manager* %39, %struct.queue* %40)
  store i32 %41, i32* %8, align 4
  %42 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %43 = call i32 @dqm_unlock(%struct.device_queue_manager* %42)
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %233

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47, %29
  %49 = load %struct.qcm_process_device*, %struct.qcm_process_device** %7, align 8
  %50 = load %struct.queue*, %struct.queue** %6, align 8
  %51 = call i32 @allocate_doorbell(%struct.qcm_process_device* %49, %struct.queue* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %210

55:                                               ; preds = %48
  %56 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %57 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %56, i32 0, i32 5
  %58 = load %struct.mqd_manager**, %struct.mqd_manager*** %57, align 8
  %59 = load %struct.queue*, %struct.queue** %6, align 8
  %60 = getelementptr inbounds %struct.queue, %struct.queue* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @get_mqd_type_from_queue_type(i64 %62)
  %64 = getelementptr inbounds %struct.mqd_manager*, %struct.mqd_manager** %58, i64 %63
  %65 = load %struct.mqd_manager*, %struct.mqd_manager** %64, align 8
  store %struct.mqd_manager* %65, %struct.mqd_manager** %9, align 8
  %66 = load %struct.queue*, %struct.queue** %6, align 8
  %67 = getelementptr inbounds %struct.queue, %struct.queue* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @KFD_QUEUE_TYPE_SDMA, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %79, label %72

72:                                               ; preds = %55
  %73 = load %struct.queue*, %struct.queue** %6, align 8
  %74 = getelementptr inbounds %struct.queue, %struct.queue* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @KFD_QUEUE_TYPE_SDMA_XGMI, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %72, %55
  %80 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %81 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32 (%struct.device_queue_manager.0*, %struct.queue*, %struct.qcm_process_device*)*, i32 (%struct.device_queue_manager.0*, %struct.queue*, %struct.qcm_process_device*)** %82, align 8
  %84 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %85 = bitcast %struct.device_queue_manager* %84 to %struct.device_queue_manager.0*
  %86 = load %struct.queue*, %struct.queue** %6, align 8
  %87 = load %struct.qcm_process_device*, %struct.qcm_process_device** %7, align 8
  %88 = call i32 %83(%struct.device_queue_manager.0* %85, %struct.queue* %86, %struct.qcm_process_device* %87)
  br label %89

89:                                               ; preds = %79, %72
  %90 = load %struct.qcm_process_device*, %struct.qcm_process_device** %7, align 8
  %91 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.queue*, %struct.queue** %6, align 8
  %94 = getelementptr inbounds %struct.queue, %struct.queue* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 4
  store i32 %92, i32* %95, align 4
  %96 = load %struct.qcm_process_device*, %struct.qcm_process_device** %7, align 8
  %97 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.queue*, %struct.queue** %6, align 8
  %100 = getelementptr inbounds %struct.queue, %struct.queue* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 3
  store i32 %98, i32* %101, align 8
  %102 = load %struct.mqd_manager*, %struct.mqd_manager** %9, align 8
  %103 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %102, i32 0, i32 2
  %104 = load i32 (i32, %struct.TYPE_5__*)*, i32 (i32, %struct.TYPE_5__*)** %103, align 8
  %105 = load %struct.mqd_manager*, %struct.mqd_manager** %9, align 8
  %106 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.queue*, %struct.queue** %6, align 8
  %109 = getelementptr inbounds %struct.queue, %struct.queue* %108, i32 0, i32 0
  %110 = call i32 %104(i32 %107, %struct.TYPE_5__* %109)
  %111 = load %struct.queue*, %struct.queue** %6, align 8
  %112 = getelementptr inbounds %struct.queue, %struct.queue* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 8
  %113 = load %struct.queue*, %struct.queue** %6, align 8
  %114 = getelementptr inbounds %struct.queue, %struct.queue* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %89
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %8, align 4
  br label %206

120:                                              ; preds = %89
  %121 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %122 = call i32 @dqm_lock(%struct.device_queue_manager* %121)
  %123 = load %struct.qcm_process_device*, %struct.qcm_process_device** %7, align 8
  %124 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  %127 = xor i1 %126, true
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = load %struct.queue*, %struct.queue** %6, align 8
  %131 = getelementptr inbounds %struct.queue, %struct.queue* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  store i32 %129, i32* %132, align 8
  %133 = load %struct.mqd_manager*, %struct.mqd_manager** %9, align 8
  %134 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %133, i32 0, i32 0
  %135 = load i32 (%struct.mqd_manager*, i32*, i32, i32*, %struct.TYPE_5__*)*, i32 (%struct.mqd_manager*, i32*, i32, i32*, %struct.TYPE_5__*)** %134, align 8
  %136 = load %struct.mqd_manager*, %struct.mqd_manager** %9, align 8
  %137 = load %struct.queue*, %struct.queue** %6, align 8
  %138 = getelementptr inbounds %struct.queue, %struct.queue* %137, i32 0, i32 4
  %139 = load %struct.queue*, %struct.queue** %6, align 8
  %140 = getelementptr inbounds %struct.queue, %struct.queue* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.queue*, %struct.queue** %6, align 8
  %143 = getelementptr inbounds %struct.queue, %struct.queue* %142, i32 0, i32 2
  %144 = load %struct.queue*, %struct.queue** %6, align 8
  %145 = getelementptr inbounds %struct.queue, %struct.queue* %144, i32 0, i32 0
  %146 = call i32 %135(%struct.mqd_manager* %136, i32* %138, i32 %141, i32* %143, %struct.TYPE_5__* %145)
  %147 = load %struct.queue*, %struct.queue** %6, align 8
  %148 = getelementptr inbounds %struct.queue, %struct.queue* %147, i32 0, i32 1
  %149 = load %struct.qcm_process_device*, %struct.qcm_process_device** %7, align 8
  %150 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %149, i32 0, i32 1
  %151 = call i32 @list_add(i32* %148, i32* %150)
  %152 = load %struct.qcm_process_device*, %struct.qcm_process_device** %7, align 8
  %153 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 4
  %156 = load %struct.queue*, %struct.queue** %6, align 8
  %157 = getelementptr inbounds %struct.queue, %struct.queue* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %120
  %162 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %163 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %163, align 8
  %166 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %167 = load i32, i32* @KFD_UNMAP_QUEUES_FILTER_DYNAMIC_QUEUES, align 4
  %168 = call i32 @execute_queues_cpsch(%struct.device_queue_manager* %166, i32 %167, i32 0)
  store i32 %168, i32* %8, align 4
  br label %169

169:                                              ; preds = %161, %120
  %170 = load %struct.queue*, %struct.queue** %6, align 8
  %171 = getelementptr inbounds %struct.queue, %struct.queue* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @KFD_QUEUE_TYPE_SDMA, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %181

176:                                              ; preds = %169
  %177 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %178 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %178, align 4
  br label %194

181:                                              ; preds = %169
  %182 = load %struct.queue*, %struct.queue** %6, align 8
  %183 = getelementptr inbounds %struct.queue, %struct.queue* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @KFD_QUEUE_TYPE_SDMA_XGMI, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %193

188:                                              ; preds = %181
  %189 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %190 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 8
  br label %193

193:                                              ; preds = %188, %181
  br label %194

194:                                              ; preds = %193, %176
  %195 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %196 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = add nsw i64 %197, 1
  store i64 %198, i64* %196, align 8
  %199 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %200 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = call i32 @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %201)
  %203 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %204 = call i32 @dqm_unlock(%struct.device_queue_manager* %203)
  %205 = load i32, i32* %8, align 4
  store i32 %205, i32* %4, align 4
  br label %235

206:                                              ; preds = %117
  %207 = load %struct.qcm_process_device*, %struct.qcm_process_device** %7, align 8
  %208 = load %struct.queue*, %struct.queue** %6, align 8
  %209 = call i32 @deallocate_doorbell(%struct.qcm_process_device* %207, %struct.queue* %208)
  br label %210

210:                                              ; preds = %206, %54
  %211 = load %struct.queue*, %struct.queue** %6, align 8
  %212 = getelementptr inbounds %struct.queue, %struct.queue* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @KFD_QUEUE_TYPE_SDMA, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %224, label %217

217:                                              ; preds = %210
  %218 = load %struct.queue*, %struct.queue** %6, align 8
  %219 = getelementptr inbounds %struct.queue, %struct.queue* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @KFD_QUEUE_TYPE_SDMA_XGMI, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %232

224:                                              ; preds = %217, %210
  %225 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %226 = call i32 @dqm_lock(%struct.device_queue_manager* %225)
  %227 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %228 = load %struct.queue*, %struct.queue** %6, align 8
  %229 = call i32 @deallocate_sdma_queue(%struct.device_queue_manager* %227, %struct.queue* %228)
  %230 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %231 = call i32 @dqm_unlock(%struct.device_queue_manager* %230)
  br label %232

232:                                              ; preds = %224, %217
  br label %233

233:                                              ; preds = %232, %46, %15
  %234 = load i32, i32* %8, align 4
  store i32 %234, i32* %4, align 4
  br label %235

235:                                              ; preds = %233, %194
  %236 = load i32, i32* %4, align 4
  ret i32 %236
}

declare dso_local i32 @pr_warn(i8*, i64) #1

declare dso_local i32 @dqm_lock(%struct.device_queue_manager*) #1

declare dso_local i32 @allocate_sdma_queue(%struct.device_queue_manager*, %struct.queue*) #1

declare dso_local i32 @dqm_unlock(%struct.device_queue_manager*) #1

declare dso_local i32 @allocate_doorbell(%struct.qcm_process_device*, %struct.queue*) #1

declare dso_local i64 @get_mqd_type_from_queue_type(i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @execute_queues_cpsch(%struct.device_queue_manager*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @deallocate_doorbell(%struct.qcm_process_device*, %struct.queue*) #1

declare dso_local i32 @deallocate_sdma_queue(%struct.device_queue_manager*, %struct.queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
