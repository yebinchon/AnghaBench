; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_create_queue_nocpsch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_create_queue_nocpsch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.device_queue_manager = type { i64, i32, i32, i32, %struct.TYPE_7__, %struct.mqd_manager** }
%struct.TYPE_7__ = type { i32 (%struct.device_queue_manager.0*, %struct.queue*, %struct.qcm_process_device*)* }
%struct.device_queue_manager.0 = type opaque
%struct.mqd_manager = type { i32 (%struct.mqd_manager*, i32, i32, i32, %struct.TYPE_9__*, i64)*, i32 (%struct.mqd_manager*, i32, i32)*, i32 (%struct.mqd_manager*, i32*, i32, i32*, %struct.TYPE_9__*)*, i32, i32 (i32, %struct.TYPE_9__*)* }
%struct.TYPE_9__ = type { i32, i64, i64, i32, i32, i32 }
%struct.queue = type { %struct.TYPE_9__, i32, i32, i32, i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.qcm_process_device = type { i32, i32, i32, i32, i32, i32 }

@max_num_of_queues_per_device = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [72 x i8] c"Can't create new usermode queue because %d queues were already created\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@KFD_QUEUE_TYPE_COMPUTE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Loading mqd to hqd on pipe %d, queue %d\0A\00", align 1
@KFD_QUEUE_TYPE_SDMA = common dso_local global i64 0, align 8
@KFD_QUEUE_TYPE_SDMA_XGMI = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_10__* null, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"should only run in user thread\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Total of %d queues are accountable so far\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_queue_manager*, %struct.queue*, %struct.qcm_process_device*)* @create_queue_nocpsch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_queue_nocpsch(%struct.device_queue_manager* %0, %struct.queue* %1, %struct.qcm_process_device* %2) #0 {
  %4 = alloca %struct.device_queue_manager*, align 8
  %5 = alloca %struct.queue*, align 8
  %6 = alloca %struct.qcm_process_device*, align 8
  %7 = alloca %struct.mqd_manager*, align 8
  %8 = alloca i32, align 4
  store %struct.device_queue_manager* %0, %struct.device_queue_manager** %4, align 8
  store %struct.queue* %1, %struct.queue** %5, align 8
  store %struct.qcm_process_device* %2, %struct.qcm_process_device** %6, align 8
  %9 = load %struct.queue*, %struct.queue** %5, align 8
  %10 = call i32 @print_queue(%struct.queue* %9)
  %11 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %12 = call i32 @dqm_lock(%struct.device_queue_manager* %11)
  %13 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %14 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @max_num_of_queues_per_device, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %20 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @pr_warn(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i32, i32* @EPERM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %8, align 4
  br label %335

25:                                               ; preds = %3
  %26 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %27 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %26, i32 0, i32 0
  %28 = call i64 @list_empty(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %32 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %33 = load %struct.queue*, %struct.queue** %5, align 8
  %34 = call i32 @allocate_vmid(%struct.device_queue_manager* %31, %struct.qcm_process_device* %32, %struct.queue* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %335

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %25
  %40 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %41 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.queue*, %struct.queue** %5, align 8
  %44 = getelementptr inbounds %struct.queue, %struct.queue* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 5
  store i32 %42, i32* %45, align 8
  %46 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %47 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = load %struct.queue*, %struct.queue** %5, align 8
  %54 = getelementptr inbounds %struct.queue, %struct.queue* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %57 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.queue*, %struct.queue** %5, align 8
  %60 = getelementptr inbounds %struct.queue, %struct.queue* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 4
  store i32 %58, i32* %61, align 4
  %62 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %63 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.queue*, %struct.queue** %5, align 8
  %66 = getelementptr inbounds %struct.queue, %struct.queue* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 3
  store i32 %64, i32* %67, align 8
  %68 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %69 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %68, i32 0, i32 5
  %70 = load %struct.mqd_manager**, %struct.mqd_manager*** %69, align 8
  %71 = load %struct.queue*, %struct.queue** %5, align 8
  %72 = getelementptr inbounds %struct.queue, %struct.queue* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @get_mqd_type_from_queue_type(i64 %74)
  %76 = getelementptr inbounds %struct.mqd_manager*, %struct.mqd_manager** %70, i64 %75
  %77 = load %struct.mqd_manager*, %struct.mqd_manager** %76, align 8
  store %struct.mqd_manager* %77, %struct.mqd_manager** %7, align 8
  %78 = load %struct.queue*, %struct.queue** %5, align 8
  %79 = getelementptr inbounds %struct.queue, %struct.queue* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @KFD_QUEUE_TYPE_COMPUTE, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %100

84:                                               ; preds = %39
  %85 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %86 = load %struct.queue*, %struct.queue** %5, align 8
  %87 = call i32 @allocate_hqd(%struct.device_queue_manager* %85, %struct.queue* %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %324

91:                                               ; preds = %84
  %92 = load %struct.queue*, %struct.queue** %5, align 8
  %93 = getelementptr inbounds %struct.queue, %struct.queue* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = load %struct.queue*, %struct.queue** %5, align 8
  %97 = getelementptr inbounds %struct.queue, %struct.queue* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %95, i32 %98)
  br label %132

100:                                              ; preds = %39
  %101 = load %struct.queue*, %struct.queue** %5, align 8
  %102 = getelementptr inbounds %struct.queue, %struct.queue* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @KFD_QUEUE_TYPE_SDMA, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %114, label %107

107:                                              ; preds = %100
  %108 = load %struct.queue*, %struct.queue** %5, align 8
  %109 = getelementptr inbounds %struct.queue, %struct.queue* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @KFD_QUEUE_TYPE_SDMA_XGMI, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %131

114:                                              ; preds = %107, %100
  %115 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %116 = load %struct.queue*, %struct.queue** %5, align 8
  %117 = call i32 @allocate_sdma_queue(%struct.device_queue_manager* %115, %struct.queue* %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  br label %324

121:                                              ; preds = %114
  %122 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %123 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32 (%struct.device_queue_manager.0*, %struct.queue*, %struct.qcm_process_device*)*, i32 (%struct.device_queue_manager.0*, %struct.queue*, %struct.qcm_process_device*)** %124, align 8
  %126 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %127 = bitcast %struct.device_queue_manager* %126 to %struct.device_queue_manager.0*
  %128 = load %struct.queue*, %struct.queue** %5, align 8
  %129 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %130 = call i32 %125(%struct.device_queue_manager.0* %127, %struct.queue* %128, %struct.qcm_process_device* %129)
  br label %131

131:                                              ; preds = %121, %107
  br label %132

132:                                              ; preds = %131, %91
  %133 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %134 = load %struct.queue*, %struct.queue** %5, align 8
  %135 = call i32 @allocate_doorbell(%struct.qcm_process_device* %133, %struct.queue* %134)
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %8, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  br label %293

139:                                              ; preds = %132
  %140 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %141 = call i32 @dqm_unlock(%struct.device_queue_manager* %140)
  %142 = load %struct.mqd_manager*, %struct.mqd_manager** %7, align 8
  %143 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %142, i32 0, i32 4
  %144 = load i32 (i32, %struct.TYPE_9__*)*, i32 (i32, %struct.TYPE_9__*)** %143, align 8
  %145 = load %struct.mqd_manager*, %struct.mqd_manager** %7, align 8
  %146 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.queue*, %struct.queue** %5, align 8
  %149 = getelementptr inbounds %struct.queue, %struct.queue* %148, i32 0, i32 0
  %150 = call i32 %144(i32 %147, %struct.TYPE_9__* %149)
  %151 = load %struct.queue*, %struct.queue** %5, align 8
  %152 = getelementptr inbounds %struct.queue, %struct.queue* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 8
  %153 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %154 = call i32 @dqm_lock(%struct.device_queue_manager* %153)
  %155 = load %struct.queue*, %struct.queue** %5, align 8
  %156 = getelementptr inbounds %struct.queue, %struct.queue* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %139
  %160 = load i32, i32* @ENOMEM, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %8, align 4
  br label %289

162:                                              ; preds = %139
  %163 = load %struct.mqd_manager*, %struct.mqd_manager** %7, align 8
  %164 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %163, i32 0, i32 2
  %165 = load i32 (%struct.mqd_manager*, i32*, i32, i32*, %struct.TYPE_9__*)*, i32 (%struct.mqd_manager*, i32*, i32, i32*, %struct.TYPE_9__*)** %164, align 8
  %166 = load %struct.mqd_manager*, %struct.mqd_manager** %7, align 8
  %167 = load %struct.queue*, %struct.queue** %5, align 8
  %168 = getelementptr inbounds %struct.queue, %struct.queue* %167, i32 0, i32 2
  %169 = load %struct.queue*, %struct.queue** %5, align 8
  %170 = getelementptr inbounds %struct.queue, %struct.queue* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.queue*, %struct.queue** %5, align 8
  %173 = getelementptr inbounds %struct.queue, %struct.queue* %172, i32 0, i32 7
  %174 = load %struct.queue*, %struct.queue** %5, align 8
  %175 = getelementptr inbounds %struct.queue, %struct.queue* %174, i32 0, i32 0
  %176 = call i32 %165(%struct.mqd_manager* %166, i32* %168, i32 %171, i32* %173, %struct.TYPE_9__* %175)
  %177 = load %struct.queue*, %struct.queue** %5, align 8
  %178 = getelementptr inbounds %struct.queue, %struct.queue* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %223

182:                                              ; preds = %162
  %183 = load %struct.queue*, %struct.queue** %5, align 8
  %184 = getelementptr inbounds %struct.queue, %struct.queue* %183, i32 0, i32 6
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %187, %190
  %192 = zext i1 %191 to i32
  %193 = call i64 @WARN(i32 %192, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %182
  %196 = load i32, i32* @EFAULT, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %8, align 4
  br label %218

198:                                              ; preds = %182
  %199 = load %struct.mqd_manager*, %struct.mqd_manager** %7, align 8
  %200 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %199, i32 0, i32 0
  %201 = load i32 (%struct.mqd_manager*, i32, i32, i32, %struct.TYPE_9__*, i64)*, i32 (%struct.mqd_manager*, i32, i32, i32, %struct.TYPE_9__*, i64)** %200, align 8
  %202 = load %struct.mqd_manager*, %struct.mqd_manager** %7, align 8
  %203 = load %struct.queue*, %struct.queue** %5, align 8
  %204 = getelementptr inbounds %struct.queue, %struct.queue* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.queue*, %struct.queue** %5, align 8
  %207 = getelementptr inbounds %struct.queue, %struct.queue* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.queue*, %struct.queue** %5, align 8
  %210 = getelementptr inbounds %struct.queue, %struct.queue* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.queue*, %struct.queue** %5, align 8
  %213 = getelementptr inbounds %struct.queue, %struct.queue* %212, i32 0, i32 0
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = call i32 %201(%struct.mqd_manager* %202, i32 %205, i32 %208, i32 %211, %struct.TYPE_9__* %213, i64 %216)
  store i32 %217, i32* %8, align 4
  br label %218

218:                                              ; preds = %198, %195
  %219 = load i32, i32* %8, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %218
  br label %277

222:                                              ; preds = %218
  br label %223

223:                                              ; preds = %222, %162
  %224 = load %struct.queue*, %struct.queue** %5, align 8
  %225 = getelementptr inbounds %struct.queue, %struct.queue* %224, i32 0, i32 3
  %226 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %227 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %226, i32 0, i32 0
  %228 = call i32 @list_add(i32* %225, i32* %227)
  %229 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %230 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %230, align 4
  %233 = load %struct.queue*, %struct.queue** %5, align 8
  %234 = getelementptr inbounds %struct.queue, %struct.queue* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %243

238:                                              ; preds = %223
  %239 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %240 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 8
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %240, align 8
  br label %243

243:                                              ; preds = %238, %223
  %244 = load %struct.queue*, %struct.queue** %5, align 8
  %245 = getelementptr inbounds %struct.queue, %struct.queue* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @KFD_QUEUE_TYPE_SDMA, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %255

250:                                              ; preds = %243
  %251 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %252 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %252, align 4
  br label %268

255:                                              ; preds = %243
  %256 = load %struct.queue*, %struct.queue** %5, align 8
  %257 = getelementptr inbounds %struct.queue, %struct.queue* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @KFD_QUEUE_TYPE_SDMA_XGMI, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %262, label %267

262:                                              ; preds = %255
  %263 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %264 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 8
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %264, align 8
  br label %267

267:                                              ; preds = %262, %255
  br label %268

268:                                              ; preds = %267, %250
  %269 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %270 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = add nsw i64 %271, 1
  store i64 %272, i64* %270, align 8
  %273 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %274 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %275)
  br label %335

277:                                              ; preds = %221
  %278 = load %struct.mqd_manager*, %struct.mqd_manager** %7, align 8
  %279 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %278, i32 0, i32 1
  %280 = load i32 (%struct.mqd_manager*, i32, i32)*, i32 (%struct.mqd_manager*, i32, i32)** %279, align 8
  %281 = load %struct.mqd_manager*, %struct.mqd_manager** %7, align 8
  %282 = load %struct.queue*, %struct.queue** %5, align 8
  %283 = getelementptr inbounds %struct.queue, %struct.queue* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.queue*, %struct.queue** %5, align 8
  %286 = getelementptr inbounds %struct.queue, %struct.queue* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 8
  %288 = call i32 %280(%struct.mqd_manager* %281, i32 %284, i32 %287)
  br label %289

289:                                              ; preds = %277, %159
  %290 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %291 = load %struct.queue*, %struct.queue** %5, align 8
  %292 = call i32 @deallocate_doorbell(%struct.qcm_process_device* %290, %struct.queue* %291)
  br label %293

293:                                              ; preds = %289, %138
  %294 = load %struct.queue*, %struct.queue** %5, align 8
  %295 = getelementptr inbounds %struct.queue, %struct.queue* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 1
  %297 = load i64, i64* %296, align 8
  %298 = load i64, i64* @KFD_QUEUE_TYPE_COMPUTE, align 8
  %299 = icmp eq i64 %297, %298
  br i1 %299, label %300, label %304

300:                                              ; preds = %293
  %301 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %302 = load %struct.queue*, %struct.queue** %5, align 8
  %303 = call i32 @deallocate_hqd(%struct.device_queue_manager* %301, %struct.queue* %302)
  br label %323

304:                                              ; preds = %293
  %305 = load %struct.queue*, %struct.queue** %5, align 8
  %306 = getelementptr inbounds %struct.queue, %struct.queue* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = load i64, i64* @KFD_QUEUE_TYPE_SDMA, align 8
  %310 = icmp eq i64 %308, %309
  br i1 %310, label %318, label %311

311:                                              ; preds = %304
  %312 = load %struct.queue*, %struct.queue** %5, align 8
  %313 = getelementptr inbounds %struct.queue, %struct.queue* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %313, i32 0, i32 1
  %315 = load i64, i64* %314, align 8
  %316 = load i64, i64* @KFD_QUEUE_TYPE_SDMA_XGMI, align 8
  %317 = icmp eq i64 %315, %316
  br i1 %317, label %318, label %322

318:                                              ; preds = %311, %304
  %319 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %320 = load %struct.queue*, %struct.queue** %5, align 8
  %321 = call i32 @deallocate_sdma_queue(%struct.device_queue_manager* %319, %struct.queue* %320)
  br label %322

322:                                              ; preds = %318, %311
  br label %323

323:                                              ; preds = %322, %300
  br label %324

324:                                              ; preds = %323, %120, %90
  %325 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %326 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %325, i32 0, i32 0
  %327 = call i64 @list_empty(i32* %326)
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %334

329:                                              ; preds = %324
  %330 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %331 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %332 = load %struct.queue*, %struct.queue** %5, align 8
  %333 = call i32 @deallocate_vmid(%struct.device_queue_manager* %330, %struct.qcm_process_device* %331, %struct.queue* %332)
  br label %334

334:                                              ; preds = %329, %324
  br label %335

335:                                              ; preds = %334, %268, %37, %18
  %336 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %337 = call i32 @dqm_unlock(%struct.device_queue_manager* %336)
  %338 = load i32, i32* %8, align 4
  ret i32 %338
}

declare dso_local i32 @print_queue(%struct.queue*) #1

declare dso_local i32 @dqm_lock(%struct.device_queue_manager*) #1

declare dso_local i32 @pr_warn(i8*, i64) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @allocate_vmid(%struct.device_queue_manager*, %struct.qcm_process_device*, %struct.queue*) #1

declare dso_local i64 @get_mqd_type_from_queue_type(i64) #1

declare dso_local i32 @allocate_hqd(%struct.device_queue_manager*, %struct.queue*) #1

declare dso_local i32 @pr_debug(i8*, i64, ...) #1

declare dso_local i32 @allocate_sdma_queue(%struct.device_queue_manager*, %struct.queue*) #1

declare dso_local i32 @allocate_doorbell(%struct.qcm_process_device*, %struct.queue*) #1

declare dso_local i32 @dqm_unlock(%struct.device_queue_manager*) #1

declare dso_local i64 @WARN(i32, i8*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @deallocate_doorbell(%struct.qcm_process_device*, %struct.queue*) #1

declare dso_local i32 @deallocate_hqd(%struct.device_queue_manager*, %struct.queue*) #1

declare dso_local i32 @deallocate_sdma_queue(%struct.device_queue_manager*, %struct.queue*) #1

declare dso_local i32 @deallocate_vmid(%struct.device_queue_manager*, %struct.qcm_process_device*, %struct.queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
