; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_dbgdev.c_kfd_dbgdev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_dbgdev.c_kfd_dbgdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_dbgdev = type { i32, i32, i32, i32, i32, i32*, i32*, %struct.kfd_dev* }
%struct.kfd_dev = type { i32 }

@dbgdev_register_nodiq = common dso_local global i32 0, align 4
@dbgdev_unregister_nodiq = common dso_local global i32 0, align 4
@dbgdev_wave_control_nodiq = common dso_local global i32 0, align 4
@dbgdev_address_watch_nodiq = common dso_local global i32 0, align 4
@dbgdev_register_diq = common dso_local global i32 0, align 4
@dbgdev_unregister_diq = common dso_local global i32 0, align 4
@dbgdev_wave_control_diq = common dso_local global i32 0, align 4
@dbgdev_address_watch_diq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kfd_dbgdev_init(%struct.kfd_dbgdev* %0, %struct.kfd_dev* %1, i32 %2) #0 {
  %4 = alloca %struct.kfd_dbgdev*, align 8
  %5 = alloca %struct.kfd_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.kfd_dbgdev* %0, %struct.kfd_dbgdev** %4, align 8
  store %struct.kfd_dev* %1, %struct.kfd_dev** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %8 = load %struct.kfd_dbgdev*, %struct.kfd_dbgdev** %4, align 8
  %9 = getelementptr inbounds %struct.kfd_dbgdev, %struct.kfd_dbgdev* %8, i32 0, i32 7
  store %struct.kfd_dev* %7, %struct.kfd_dev** %9, align 8
  %10 = load %struct.kfd_dbgdev*, %struct.kfd_dbgdev** %4, align 8
  %11 = getelementptr inbounds %struct.kfd_dbgdev, %struct.kfd_dbgdev* %10, i32 0, i32 6
  store i32* null, i32** %11, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.kfd_dbgdev*, %struct.kfd_dbgdev** %4, align 8
  %14 = getelementptr inbounds %struct.kfd_dbgdev, %struct.kfd_dbgdev* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.kfd_dbgdev*, %struct.kfd_dbgdev** %4, align 8
  %16 = getelementptr inbounds %struct.kfd_dbgdev, %struct.kfd_dbgdev* %15, i32 0, i32 5
  store i32* null, i32** %16, align 8
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %32 [
    i32 128, label %18
    i32 129, label %31
  ]

18:                                               ; preds = %3
  %19 = load i32, i32* @dbgdev_register_nodiq, align 4
  %20 = load %struct.kfd_dbgdev*, %struct.kfd_dbgdev** %4, align 8
  %21 = getelementptr inbounds %struct.kfd_dbgdev, %struct.kfd_dbgdev* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @dbgdev_unregister_nodiq, align 4
  %23 = load %struct.kfd_dbgdev*, %struct.kfd_dbgdev** %4, align 8
  %24 = getelementptr inbounds %struct.kfd_dbgdev, %struct.kfd_dbgdev* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @dbgdev_wave_control_nodiq, align 4
  %26 = load %struct.kfd_dbgdev*, %struct.kfd_dbgdev** %4, align 8
  %27 = getelementptr inbounds %struct.kfd_dbgdev, %struct.kfd_dbgdev* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @dbgdev_address_watch_nodiq, align 4
  %29 = load %struct.kfd_dbgdev*, %struct.kfd_dbgdev** %4, align 8
  %30 = getelementptr inbounds %struct.kfd_dbgdev, %struct.kfd_dbgdev* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  br label %45

31:                                               ; preds = %3
  br label %32

32:                                               ; preds = %3, %31
  %33 = load i32, i32* @dbgdev_register_diq, align 4
  %34 = load %struct.kfd_dbgdev*, %struct.kfd_dbgdev** %4, align 8
  %35 = getelementptr inbounds %struct.kfd_dbgdev, %struct.kfd_dbgdev* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @dbgdev_unregister_diq, align 4
  %37 = load %struct.kfd_dbgdev*, %struct.kfd_dbgdev** %4, align 8
  %38 = getelementptr inbounds %struct.kfd_dbgdev, %struct.kfd_dbgdev* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @dbgdev_wave_control_diq, align 4
  %40 = load %struct.kfd_dbgdev*, %struct.kfd_dbgdev** %4, align 8
  %41 = getelementptr inbounds %struct.kfd_dbgdev, %struct.kfd_dbgdev* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @dbgdev_address_watch_diq, align 4
  %43 = load %struct.kfd_dbgdev*, %struct.kfd_dbgdev** %4, align 8
  %44 = getelementptr inbounds %struct.kfd_dbgdev, %struct.kfd_dbgdev* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %32, %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
