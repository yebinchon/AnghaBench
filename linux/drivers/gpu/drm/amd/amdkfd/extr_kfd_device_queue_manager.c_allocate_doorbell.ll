; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_allocate_doorbell.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_allocate_doorbell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcm_process_device = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.kfd_dev* }
%struct.kfd_dev = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32 }
%struct.queue = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64, i64, i32, i32 }

@KFD_QUEUE_TYPE_SDMA = common dso_local global i64 0, align 8
@KFD_QUEUE_TYPE_SDMA_XGMI = common dso_local global i64 0, align 8
@KFD_QUEUE_DOORBELL_MIRROR_OFFSET = common dso_local global i32 0, align 4
@KFD_MAX_NUM_OF_QUEUES_PER_PROCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"No doorbells available\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcm_process_device*, %struct.queue*)* @allocate_doorbell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_doorbell(%struct.qcm_process_device* %0, %struct.queue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qcm_process_device*, align 8
  %5 = alloca %struct.queue*, align 8
  %6 = alloca %struct.kfd_dev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.qcm_process_device* %0, %struct.qcm_process_device** %4, align 8
  store %struct.queue* %1, %struct.queue** %5, align 8
  %9 = load %struct.qcm_process_device*, %struct.qcm_process_device** %4, align 8
  %10 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.kfd_dev*, %struct.kfd_dev** %12, align 8
  store %struct.kfd_dev* %13, %struct.kfd_dev** %6, align 8
  %14 = load %struct.kfd_dev*, %struct.kfd_dev** %6, align 8
  %15 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @KFD_IS_SOC15(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %2
  %22 = load %struct.queue*, %struct.queue** %5, align 8
  %23 = getelementptr inbounds %struct.queue, %struct.queue* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.queue*, %struct.queue** %5, align 8
  %27 = getelementptr inbounds %struct.queue, %struct.queue* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %93

28:                                               ; preds = %2
  %29 = load %struct.queue*, %struct.queue** %5, align 8
  %30 = getelementptr inbounds %struct.queue, %struct.queue* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @KFD_QUEUE_TYPE_SDMA, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %42, label %35

35:                                               ; preds = %28
  %36 = load %struct.queue*, %struct.queue** %5, align 8
  %37 = getelementptr inbounds %struct.queue, %struct.queue* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @KFD_QUEUE_TYPE_SDMA_XGMI, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %70

42:                                               ; preds = %35, %28
  %43 = load %struct.kfd_dev*, %struct.kfd_dev** %6, align 8
  %44 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %7, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load %struct.queue*, %struct.queue** %5, align 8
  %49 = getelementptr inbounds %struct.queue, %struct.queue* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.queue*, %struct.queue** %5, align 8
  %55 = getelementptr inbounds %struct.queue, %struct.queue* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, 1
  %59 = load i32, i32* @KFD_QUEUE_DOORBELL_MIRROR_OFFSET, align 4
  %60 = mul nsw i32 %58, %59
  %61 = add i32 %53, %60
  %62 = load %struct.queue*, %struct.queue** %5, align 8
  %63 = getelementptr inbounds %struct.queue, %struct.queue* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = ashr i32 %65, 1
  %67 = add i32 %61, %66
  %68 = load %struct.queue*, %struct.queue** %5, align 8
  %69 = getelementptr inbounds %struct.queue, %struct.queue* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %92

70:                                               ; preds = %35
  %71 = load %struct.qcm_process_device*, %struct.qcm_process_device** %4, align 8
  %72 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @KFD_MAX_NUM_OF_QUEUES_PER_PROCESS, align 4
  %75 = call i32 @find_first_zero_bit(i32 %73, i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @KFD_MAX_NUM_OF_QUEUES_PER_PROCESS, align 4
  %78 = icmp uge i32 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %70
  %80 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %81 = load i32, i32* @EBUSY, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %105

83:                                               ; preds = %70
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.qcm_process_device*, %struct.qcm_process_device** %4, align 8
  %86 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @set_bit(i32 %84, i32 %87)
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.queue*, %struct.queue** %5, align 8
  %91 = getelementptr inbounds %struct.queue, %struct.queue* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %83, %42
  br label %93

93:                                               ; preds = %92, %21
  %94 = load %struct.kfd_dev*, %struct.kfd_dev** %6, align 8
  %95 = load %struct.queue*, %struct.queue** %5, align 8
  %96 = getelementptr inbounds %struct.queue, %struct.queue* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.queue*, %struct.queue** %5, align 8
  %99 = getelementptr inbounds %struct.queue, %struct.queue* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @kfd_doorbell_id_to_offset(%struct.kfd_dev* %94, i32 %97, i32 %100)
  %102 = load %struct.queue*, %struct.queue** %5, align 8
  %103 = getelementptr inbounds %struct.queue, %struct.queue* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 4
  store i32 %101, i32* %104, align 4
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %93, %79
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @KFD_IS_SOC15(i32) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @kfd_doorbell_id_to_offset(%struct.kfd_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
