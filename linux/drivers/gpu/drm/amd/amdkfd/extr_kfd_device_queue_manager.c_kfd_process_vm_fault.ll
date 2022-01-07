; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_kfd_process_vm_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_kfd_process_vm_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_queue_manager = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (%struct.device_queue_manager.0*, i32*)* }
%struct.device_queue_manager.0 = type opaque
%struct.kfd_process_device = type { i32 }
%struct.kfd_process = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kfd_process_vm_fault(%struct.device_queue_manager* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_queue_manager*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kfd_process_device*, align 8
  %7 = alloca %struct.kfd_process*, align 8
  %8 = alloca i32, align 4
  store %struct.device_queue_manager* %0, %struct.device_queue_manager** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.kfd_process* @kfd_lookup_process_by_pasid(i32 %9)
  store %struct.kfd_process* %10, %struct.kfd_process** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.kfd_process*, %struct.kfd_process** %7, align 8
  %12 = icmp ne %struct.kfd_process* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %38

16:                                               ; preds = %2
  %17 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %18 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.kfd_process*, %struct.kfd_process** %7, align 8
  %21 = call %struct.kfd_process_device* @kfd_get_process_device_data(i32 %19, %struct.kfd_process* %20)
  store %struct.kfd_process_device* %21, %struct.kfd_process_device** %6, align 8
  %22 = load %struct.kfd_process_device*, %struct.kfd_process_device** %6, align 8
  %23 = icmp ne %struct.kfd_process_device* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %16
  %25 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %26 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.device_queue_manager.0*, i32*)*, i32 (%struct.device_queue_manager.0*, i32*)** %27, align 8
  %29 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %30 = bitcast %struct.device_queue_manager* %29 to %struct.device_queue_manager.0*
  %31 = load %struct.kfd_process_device*, %struct.kfd_process_device** %6, align 8
  %32 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %31, i32 0, i32 0
  %33 = call i32 %28(%struct.device_queue_manager.0* %30, i32* %32)
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %24, %16
  %35 = load %struct.kfd_process*, %struct.kfd_process** %7, align 8
  %36 = call i32 @kfd_unref_process(%struct.kfd_process* %35)
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %34, %13
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.kfd_process* @kfd_lookup_process_by_pasid(i32) #1

declare dso_local %struct.kfd_process_device* @kfd_get_process_device_data(i32, %struct.kfd_process*) #1

declare dso_local i32 @kfd_unref_process(%struct.kfd_process*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
