; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_initialize_cpsch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_initialize_cpsch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_queue_manager = type { i32, i64, i64, i32, i64, i64, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"num of pipes: %d\0A\00", align 1
@kfd_process_hw_exception = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_queue_manager*)* @initialize_cpsch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initialize_cpsch(%struct.device_queue_manager* %0) #0 {
  %2 = alloca %struct.device_queue_manager*, align 8
  store %struct.device_queue_manager* %0, %struct.device_queue_manager** %2, align 8
  %3 = load %struct.device_queue_manager*, %struct.device_queue_manager** %2, align 8
  %4 = call i32 @get_pipes_per_mec(%struct.device_queue_manager* %3)
  %5 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = load %struct.device_queue_manager*, %struct.device_queue_manager** %2, align 8
  %7 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %6, i32 0, i32 9
  %8 = call i32 @mutex_init(i32* %7)
  %9 = load %struct.device_queue_manager*, %struct.device_queue_manager** %2, align 8
  %10 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %9, i32 0, i32 8
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load %struct.device_queue_manager*, %struct.device_queue_manager** %2, align 8
  %13 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %12, i32 0, i32 6
  store i64 0, i64* %13, align 8
  %14 = load %struct.device_queue_manager*, %struct.device_queue_manager** %2, align 8
  %15 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %14, i32 0, i32 7
  store i64 0, i64* %15, align 8
  %16 = load %struct.device_queue_manager*, %struct.device_queue_manager** %2, align 8
  %17 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %16, i32 0, i32 5
  store i64 0, i64* %17, align 8
  %18 = load %struct.device_queue_manager*, %struct.device_queue_manager** %2, align 8
  %19 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %18, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = load %struct.device_queue_manager*, %struct.device_queue_manager** %2, align 8
  %21 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load %struct.device_queue_manager*, %struct.device_queue_manager** %2, align 8
  %23 = call i32 @get_num_sdma_queues(%struct.device_queue_manager* %22)
  %24 = sub nsw i32 64, %23
  %25 = zext i32 %24 to i64
  %26 = lshr i64 -1, %25
  %27 = load %struct.device_queue_manager*, %struct.device_queue_manager** %2, align 8
  %28 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.device_queue_manager*, %struct.device_queue_manager** %2, align 8
  %30 = call i32 @get_num_xgmi_sdma_queues(%struct.device_queue_manager* %29)
  %31 = sub nsw i32 64, %30
  %32 = zext i32 %31 to i64
  %33 = lshr i64 -1, %32
  %34 = load %struct.device_queue_manager*, %struct.device_queue_manager** %2, align 8
  %35 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  %36 = load %struct.device_queue_manager*, %struct.device_queue_manager** %2, align 8
  %37 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %36, i32 0, i32 3
  %38 = load i32, i32* @kfd_process_hw_exception, align 4
  %39 = call i32 @INIT_WORK(i32* %37, i32 %38)
  ret i32 0
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @get_pipes_per_mec(%struct.device_queue_manager*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @get_num_sdma_queues(%struct.device_queue_manager*) #1

declare dso_local i32 @get_num_xgmi_sdma_queues(%struct.device_queue_manager*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
