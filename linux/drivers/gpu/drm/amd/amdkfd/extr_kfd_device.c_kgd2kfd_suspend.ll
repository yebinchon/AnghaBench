; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device.c_kgd2kfd_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device.c_kgd2kfd_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_dev = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*)* }

@kfd_locked = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kgd2kfd_suspend(%struct.kfd_dev* %0) #0 {
  %2 = alloca %struct.kfd_dev*, align 8
  store %struct.kfd_dev* %0, %struct.kfd_dev** %2, align 8
  %3 = load %struct.kfd_dev*, %struct.kfd_dev** %2, align 8
  %4 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %26

8:                                                ; preds = %1
  %9 = call i32 @atomic_inc_return(i32* @kfd_locked)
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = call i32 (...) @kfd_suspend_all_processes()
  br label %13

13:                                               ; preds = %11, %8
  %14 = load %struct.kfd_dev*, %struct.kfd_dev** %2, align 8
  %15 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %18, align 8
  %20 = load %struct.kfd_dev*, %struct.kfd_dev** %2, align 8
  %21 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = call i32 %19(%struct.TYPE_4__* %22)
  %24 = load %struct.kfd_dev*, %struct.kfd_dev** %2, align 8
  %25 = call i32 @kfd_iommu_suspend(%struct.kfd_dev* %24)
  br label %26

26:                                               ; preds = %13, %7
  ret void
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @kfd_suspend_all_processes(...) #1

declare dso_local i32 @kfd_iommu_suspend(%struct.kfd_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
