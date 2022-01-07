; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_destroy_queue_nocpsch_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_destroy_queue_nocpsch_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_queue_manager = type { i32, i32, i32, i32, i32, %struct.mqd_manager** }
%struct.mqd_manager = type { i32 (%struct.mqd_manager*, i32, i32, i32, i32, i32)*, i32 (%struct.mqd_manager*, i32, i32)* }
%struct.qcm_process_device = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.queue = type { %struct.TYPE_4__, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i64 }

@KFD_QUEUE_TYPE_COMPUTE = common dso_local global i64 0, align 8
@KFD_QUEUE_TYPE_SDMA = common dso_local global i64 0, align 8
@KFD_QUEUE_TYPE_SDMA_XGMI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"q->properties.type %d is invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@KFD_PREEMPT_TYPE_WAVEFRONT_RESET = common dso_local global i32 0, align 4
@KFD_UNMAP_LATENCY_MS = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Resetting wave fronts (nocpsch) on dev %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_queue_manager*, %struct.qcm_process_device*, %struct.queue*)* @destroy_queue_nocpsch_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @destroy_queue_nocpsch_locked(%struct.device_queue_manager* %0, %struct.qcm_process_device* %1, %struct.queue* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_queue_manager*, align 8
  %6 = alloca %struct.qcm_process_device*, align 8
  %7 = alloca %struct.queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mqd_manager*, align 8
  store %struct.device_queue_manager* %0, %struct.device_queue_manager** %5, align 8
  store %struct.qcm_process_device* %1, %struct.qcm_process_device** %6, align 8
  store %struct.queue* %2, %struct.queue** %7, align 8
  %10 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %11 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %10, i32 0, i32 5
  %12 = load %struct.mqd_manager**, %struct.mqd_manager*** %11, align 8
  %13 = load %struct.queue*, %struct.queue** %7, align 8
  %14 = getelementptr inbounds %struct.queue, %struct.queue* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @get_mqd_type_from_queue_type(i64 %16)
  %18 = getelementptr inbounds %struct.mqd_manager*, %struct.mqd_manager** %12, i64 %17
  %19 = load %struct.mqd_manager*, %struct.mqd_manager** %18, align 8
  store %struct.mqd_manager* %19, %struct.mqd_manager** %9, align 8
  %20 = load %struct.queue*, %struct.queue** %7, align 8
  %21 = getelementptr inbounds %struct.queue, %struct.queue* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @KFD_QUEUE_TYPE_COMPUTE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %28 = load %struct.queue*, %struct.queue** %7, align 8
  %29 = call i32 @deallocate_hqd(%struct.device_queue_manager* %27, %struct.queue* %28)
  br label %70

30:                                               ; preds = %3
  %31 = load %struct.queue*, %struct.queue** %7, align 8
  %32 = getelementptr inbounds %struct.queue, %struct.queue* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @KFD_QUEUE_TYPE_SDMA, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %39 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %39, align 8
  %42 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %43 = load %struct.queue*, %struct.queue** %7, align 8
  %44 = call i32 @deallocate_sdma_queue(%struct.device_queue_manager* %42, %struct.queue* %43)
  br label %69

45:                                               ; preds = %30
  %46 = load %struct.queue*, %struct.queue** %7, align 8
  %47 = getelementptr inbounds %struct.queue, %struct.queue* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @KFD_QUEUE_TYPE_SDMA_XGMI, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %54 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %54, align 4
  %57 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %58 = load %struct.queue*, %struct.queue** %7, align 8
  %59 = call i32 @deallocate_sdma_queue(%struct.device_queue_manager* %57, %struct.queue* %58)
  br label %68

60:                                               ; preds = %45
  %61 = load %struct.queue*, %struct.queue** %7, align 8
  %62 = getelementptr inbounds %struct.queue, %struct.queue* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %163

68:                                               ; preds = %52
  br label %69

69:                                               ; preds = %68, %37
  br label %70

70:                                               ; preds = %69, %26
  %71 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %72 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %72, align 8
  %75 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %76 = load %struct.queue*, %struct.queue** %7, align 8
  %77 = call i32 @deallocate_doorbell(%struct.qcm_process_device* %75, %struct.queue* %76)
  %78 = load %struct.mqd_manager*, %struct.mqd_manager** %9, align 8
  %79 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %78, i32 0, i32 0
  %80 = load i32 (%struct.mqd_manager*, i32, i32, i32, i32, i32)*, i32 (%struct.mqd_manager*, i32, i32, i32, i32, i32)** %79, align 8
  %81 = load %struct.mqd_manager*, %struct.mqd_manager** %9, align 8
  %82 = load %struct.queue*, %struct.queue** %7, align 8
  %83 = getelementptr inbounds %struct.queue, %struct.queue* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @KFD_PREEMPT_TYPE_WAVEFRONT_RESET, align 4
  %86 = load i32, i32* @KFD_UNMAP_LATENCY_MS, align 4
  %87 = load %struct.queue*, %struct.queue** %7, align 8
  %88 = getelementptr inbounds %struct.queue, %struct.queue* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.queue*, %struct.queue** %7, align 8
  %91 = getelementptr inbounds %struct.queue, %struct.queue* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = call i32 %80(%struct.mqd_manager* %81, i32 %84, i32 %85, i32 %86, i32 %89, i32 %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @ETIME, align 4
  %96 = sub nsw i32 0, %95
  %97 = icmp eq i32 %94, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %70
  %99 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %100 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  br label %101

101:                                              ; preds = %98, %70
  %102 = load %struct.mqd_manager*, %struct.mqd_manager** %9, align 8
  %103 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %102, i32 0, i32 1
  %104 = load i32 (%struct.mqd_manager*, i32, i32)*, i32 (%struct.mqd_manager*, i32, i32)** %103, align 8
  %105 = load %struct.mqd_manager*, %struct.mqd_manager** %9, align 8
  %106 = load %struct.queue*, %struct.queue** %7, align 8
  %107 = getelementptr inbounds %struct.queue, %struct.queue* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.queue*, %struct.queue** %7, align 8
  %110 = getelementptr inbounds %struct.queue, %struct.queue* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 %104(%struct.mqd_manager* %105, i32 %108, i32 %111)
  %113 = load %struct.queue*, %struct.queue** %7, align 8
  %114 = getelementptr inbounds %struct.queue, %struct.queue* %113, i32 0, i32 1
  %115 = call i32 @list_del(i32* %114)
  %116 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %117 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %116, i32 0, i32 3
  %118 = call i64 @list_empty(i32* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %146

120:                                              ; preds = %101
  %121 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %122 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %141

125:                                              ; preds = %120
  %126 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %127 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @pr_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %128)
  %130 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %131 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %134 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %133, i32 0, i32 2
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @dbgdev_wave_reset_wavefronts(i32 %132, i32 %137)
  %139 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %140 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %139, i32 0, i32 0
  store i32 0, i32* %140, align 8
  br label %141

141:                                              ; preds = %125, %120
  %142 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %143 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %144 = load %struct.queue*, %struct.queue** %7, align 8
  %145 = call i32 @deallocate_vmid(%struct.device_queue_manager* %142, %struct.qcm_process_device* %143, %struct.queue* %144)
  br label %146

146:                                              ; preds = %141, %101
  %147 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %148 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, -1
  store i32 %150, i32* %148, align 4
  %151 = load %struct.queue*, %struct.queue** %7, align 8
  %152 = getelementptr inbounds %struct.queue, %struct.queue* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %146
  %157 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %158 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %158, align 8
  br label %161

161:                                              ; preds = %156, %146
  %162 = load i32, i32* %8, align 4
  store i32 %162, i32* %4, align 4
  br label %163

163:                                              ; preds = %161, %60
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local i64 @get_mqd_type_from_queue_type(i64) #1

declare dso_local i32 @deallocate_hqd(%struct.device_queue_manager*, %struct.queue*) #1

declare dso_local i32 @deallocate_sdma_queue(%struct.device_queue_manager*, %struct.queue*) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @deallocate_doorbell(%struct.qcm_process_device*, %struct.queue*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @dbgdev_wave_reset_wavefronts(i32, i32) #1

declare dso_local i32 @deallocate_vmid(%struct.device_queue_manager*, %struct.qcm_process_device*, %struct.queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
