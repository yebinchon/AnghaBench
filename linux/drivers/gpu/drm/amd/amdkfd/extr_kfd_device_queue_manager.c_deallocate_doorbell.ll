; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_deallocate_doorbell.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_deallocate_doorbell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcm_process_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.kfd_dev* }
%struct.kfd_dev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.queue = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@KFD_QUEUE_TYPE_SDMA = common dso_local global i64 0, align 8
@KFD_QUEUE_TYPE_SDMA_XGMI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qcm_process_device*, %struct.queue*)* @deallocate_doorbell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deallocate_doorbell(%struct.qcm_process_device* %0, %struct.queue* %1) #0 {
  %3 = alloca %struct.qcm_process_device*, align 8
  %4 = alloca %struct.queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kfd_dev*, align 8
  store %struct.qcm_process_device* %0, %struct.qcm_process_device** %3, align 8
  store %struct.queue* %1, %struct.queue** %4, align 8
  %7 = load %struct.qcm_process_device*, %struct.qcm_process_device** %3, align 8
  %8 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.kfd_dev*, %struct.kfd_dev** %10, align 8
  store %struct.kfd_dev* %11, %struct.kfd_dev** %6, align 8
  %12 = load %struct.kfd_dev*, %struct.kfd_dev** %6, align 8
  %13 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @KFD_IS_SOC15(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %2
  %20 = load %struct.queue*, %struct.queue** %4, align 8
  %21 = getelementptr inbounds %struct.queue, %struct.queue* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @KFD_QUEUE_TYPE_SDMA, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %33, label %26

26:                                               ; preds = %19
  %27 = load %struct.queue*, %struct.queue** %4, align 8
  %28 = getelementptr inbounds %struct.queue, %struct.queue* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @KFD_QUEUE_TYPE_SDMA_XGMI, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26, %19, %2
  br label %47

34:                                               ; preds = %26
  %35 = load %struct.queue*, %struct.queue** %4, align 8
  %36 = getelementptr inbounds %struct.queue, %struct.queue* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.qcm_process_device*, %struct.qcm_process_device** %3, align 8
  %39 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @test_and_clear_bit(i32 %37, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @WARN_ON(i32 %45)
  br label %47

47:                                               ; preds = %34, %33
  ret void
}

declare dso_local i32 @KFD_IS_SOC15(i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
