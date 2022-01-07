; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_packet_manager.c_pm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_packet_manager.c_pm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_manager = type { i32, i32, i32, %struct.device_queue_manager*, i32* }
%struct.device_queue_manager = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@kfd_vi_pm_funcs = common dso_local global i32 0, align 4
@kfd_v9_pm_funcs = common dso_local global i32 0, align 4
@kfd_v10_pm_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unexpected ASIC family %u\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@KFD_QUEUE_TYPE_HIQ = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm_init(%struct.packet_manager* %0, %struct.device_queue_manager* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.packet_manager*, align 8
  %5 = alloca %struct.device_queue_manager*, align 8
  store %struct.packet_manager* %0, %struct.packet_manager** %4, align 8
  store %struct.device_queue_manager* %1, %struct.device_queue_manager** %5, align 8
  %6 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %7 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %22 [
    i32 138, label %13
    i32 139, label %13
    i32 141, label %13
    i32 132, label %13
    i32 140, label %13
    i32 136, label %13
    i32 135, label %13
    i32 134, label %13
    i32 128, label %13
    i32 131, label %16
    i32 130, label %16
    i32 129, label %16
    i32 133, label %16
    i32 142, label %16
    i32 137, label %19
  ]

13:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2
  %14 = load %struct.packet_manager*, %struct.packet_manager** %4, align 8
  %15 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %14, i32 0, i32 4
  store i32* @kfd_vi_pm_funcs, i32** %15, align 8
  br label %33

16:                                               ; preds = %2, %2, %2, %2, %2
  %17 = load %struct.packet_manager*, %struct.packet_manager** %4, align 8
  %18 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %17, i32 0, i32 4
  store i32* @kfd_v9_pm_funcs, i32** %18, align 8
  br label %33

19:                                               ; preds = %2
  %20 = load %struct.packet_manager*, %struct.packet_manager** %4, align 8
  %21 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %20, i32 0, i32 4
  store i32* @kfd_v10_pm_funcs, i32** %21, align 8
  br label %33

22:                                               ; preds = %2
  %23 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %24 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %60

33:                                               ; preds = %19, %16, %13
  %34 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %35 = load %struct.packet_manager*, %struct.packet_manager** %4, align 8
  %36 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %35, i32 0, i32 3
  store %struct.device_queue_manager* %34, %struct.device_queue_manager** %36, align 8
  %37 = load %struct.packet_manager*, %struct.packet_manager** %4, align 8
  %38 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %37, i32 0, i32 1
  %39 = call i32 @mutex_init(i32* %38)
  %40 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %41 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* @KFD_QUEUE_TYPE_HIQ, align 4
  %44 = call i32 @kernel_queue_init(%struct.TYPE_4__* %42, i32 %43)
  %45 = load %struct.packet_manager*, %struct.packet_manager** %4, align 8
  %46 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.packet_manager*, %struct.packet_manager** %4, align 8
  %48 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %33
  %52 = load %struct.packet_manager*, %struct.packet_manager** %4, align 8
  %53 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %52, i32 0, i32 1
  %54 = call i32 @mutex_destroy(i32* %53)
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %60

57:                                               ; preds = %33
  %58 = load %struct.packet_manager*, %struct.packet_manager** %4, align 8
  %59 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %57, %51, %22
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @kernel_queue_init(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
