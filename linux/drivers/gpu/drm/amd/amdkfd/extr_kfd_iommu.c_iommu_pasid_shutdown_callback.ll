; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_iommu.c_iommu_pasid_shutdown_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_iommu.c_iommu_pasid_shutdown_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.kfd_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.kfd_process = type { i64, i32 }
%struct.kfd_process_device = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Unbinding process %d from IOMMU\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, i32)* @iommu_pasid_shutdown_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iommu_pasid_shutdown_callback(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kfd_dev*, align 8
  %6 = alloca %struct.kfd_process*, align 8
  %7 = alloca %struct.kfd_process_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = call %struct.kfd_dev* @kfd_device_by_pci_dev(%struct.pci_dev* %8)
  store %struct.kfd_dev* %9, %struct.kfd_dev** %5, align 8
  %10 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %11 = icmp ne %struct.kfd_dev* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %73

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.kfd_process* @kfd_lookup_process_by_pasid(i32 %14)
  store %struct.kfd_process* %15, %struct.kfd_process** %6, align 8
  %16 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %17 = icmp ne %struct.kfd_process* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %73

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = call i32* (...) @kfd_get_dbgmgr_mutex()
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %25 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %28, label %53

28:                                               ; preds = %19
  %29 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %30 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %35 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %28
  %39 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %40 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %43 = call i32 @kfd_dbgmgr_unregister(%struct.TYPE_3__* %41, %struct.kfd_process* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %38
  %46 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %47 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = call i32 @kfd_dbgmgr_destroy(%struct.TYPE_3__* %48)
  %50 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %51 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %50, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %51, align 8
  br label %52

52:                                               ; preds = %45, %38
  br label %53

53:                                               ; preds = %52, %28, %19
  %54 = call i32* (...) @kfd_get_dbgmgr_mutex()
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %57 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %56, i32 0, i32 1
  %58 = call i32 @mutex_lock(i32* %57)
  %59 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %60 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %61 = call %struct.kfd_process_device* @kfd_get_process_device_data(%struct.kfd_dev* %59, %struct.kfd_process* %60)
  store %struct.kfd_process_device* %61, %struct.kfd_process_device** %7, align 8
  %62 = load %struct.kfd_process_device*, %struct.kfd_process_device** %7, align 8
  %63 = icmp ne %struct.kfd_process_device* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %53
  %65 = load %struct.kfd_process_device*, %struct.kfd_process_device** %7, align 8
  %66 = call i32 @kfd_process_dequeue_from_device(%struct.kfd_process_device* %65)
  br label %67

67:                                               ; preds = %64, %53
  %68 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %69 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %68, i32 0, i32 1
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %72 = call i32 @kfd_unref_process(%struct.kfd_process* %71)
  br label %73

73:                                               ; preds = %67, %18, %12
  ret void
}

declare dso_local %struct.kfd_dev* @kfd_device_by_pci_dev(%struct.pci_dev*) #1

declare dso_local %struct.kfd_process* @kfd_lookup_process_by_pasid(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32* @kfd_get_dbgmgr_mutex(...) #1

declare dso_local i32 @kfd_dbgmgr_unregister(%struct.TYPE_3__*, %struct.kfd_process*) #1

declare dso_local i32 @kfd_dbgmgr_destroy(%struct.TYPE_3__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.kfd_process_device* @kfd_get_process_device_data(%struct.kfd_dev*, %struct.kfd_process*) #1

declare dso_local i32 @kfd_process_dequeue_from_device(%struct.kfd_process_device*) #1

declare dso_local i32 @kfd_unref_process(%struct.kfd_process*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
