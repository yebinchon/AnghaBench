; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device.c_kgd2kfd_device_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device.c_kgd2kfd_device_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_dev = type { i32, i32, i32, i32, i64 }

@hws_gws_support = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kgd2kfd_device_exit(%struct.kfd_dev* %0) #0 {
  %2 = alloca %struct.kfd_dev*, align 8
  store %struct.kfd_dev* %0, %struct.kfd_dev** %2, align 8
  %3 = load %struct.kfd_dev*, %struct.kfd_dev** %2, align 8
  %4 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %3, i32 0, i32 4
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %40

7:                                                ; preds = %1
  %8 = load %struct.kfd_dev*, %struct.kfd_dev** %2, align 8
  %9 = call i32 @kgd2kfd_suspend(%struct.kfd_dev* %8)
  %10 = load %struct.kfd_dev*, %struct.kfd_dev** %2, align 8
  %11 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @device_queue_manager_uninit(i32 %12)
  %14 = load %struct.kfd_dev*, %struct.kfd_dev** %2, align 8
  %15 = call i32 @kfd_interrupt_exit(%struct.kfd_dev* %14)
  %16 = load %struct.kfd_dev*, %struct.kfd_dev** %2, align 8
  %17 = call i32 @kfd_topology_remove_device(%struct.kfd_dev* %16)
  %18 = load %struct.kfd_dev*, %struct.kfd_dev** %2, align 8
  %19 = call i32 @kfd_doorbell_fini(%struct.kfd_dev* %18)
  %20 = load %struct.kfd_dev*, %struct.kfd_dev** %2, align 8
  %21 = call i32 @kfd_gtt_sa_fini(%struct.kfd_dev* %20)
  %22 = load %struct.kfd_dev*, %struct.kfd_dev** %2, align 8
  %23 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.kfd_dev*, %struct.kfd_dev** %2, align 8
  %26 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @amdgpu_amdkfd_free_gtt_mem(i32 %24, i32 %27)
  %29 = load i64, i64* @hws_gws_support, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %7
  %32 = load %struct.kfd_dev*, %struct.kfd_dev** %2, align 8
  %33 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.kfd_dev*, %struct.kfd_dev** %2, align 8
  %36 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @amdgpu_amdkfd_free_gws(i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %31, %7
  br label %40

40:                                               ; preds = %39, %1
  %41 = load %struct.kfd_dev*, %struct.kfd_dev** %2, align 8
  %42 = call i32 @kfree(%struct.kfd_dev* %41)
  ret void
}

declare dso_local i32 @kgd2kfd_suspend(%struct.kfd_dev*) #1

declare dso_local i32 @device_queue_manager_uninit(i32) #1

declare dso_local i32 @kfd_interrupt_exit(%struct.kfd_dev*) #1

declare dso_local i32 @kfd_topology_remove_device(%struct.kfd_dev*) #1

declare dso_local i32 @kfd_doorbell_fini(%struct.kfd_dev*) #1

declare dso_local i32 @kfd_gtt_sa_fini(%struct.kfd_dev*) #1

declare dso_local i32 @amdgpu_amdkfd_free_gtt_mem(i32, i32) #1

declare dso_local i32 @amdgpu_amdkfd_free_gws(i32, i32) #1

declare dso_local i32 @kfree(%struct.kfd_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
