; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_process_queue_manager.c_pqm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_process_queue_manager.c_pqm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process_queue_manager = type { %struct.kfd_process*, i32, i32 }
%struct.kfd_process = type { i32 }

@KFD_MAX_NUM_OF_QUEUES_PER_PROCESS = common dso_local global i32 0, align 4
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqm_init(%struct.process_queue_manager* %0, %struct.kfd_process* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.process_queue_manager*, align 8
  %5 = alloca %struct.kfd_process*, align 8
  store %struct.process_queue_manager* %0, %struct.process_queue_manager** %4, align 8
  store %struct.kfd_process* %1, %struct.kfd_process** %5, align 8
  %6 = load %struct.process_queue_manager*, %struct.process_queue_manager** %4, align 8
  %7 = getelementptr inbounds %struct.process_queue_manager, %struct.process_queue_manager* %6, i32 0, i32 2
  %8 = call i32 @INIT_LIST_HEAD(i32* %7)
  %9 = load i32, i32* @KFD_MAX_NUM_OF_QUEUES_PER_PROCESS, align 4
  %10 = load i32, i32* @BITS_PER_BYTE, align 4
  %11 = call i32 @DIV_ROUND_UP(i32 %9, i32 %10)
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i32 @kzalloc(i32 %11, i32 %12)
  %14 = load %struct.process_queue_manager*, %struct.process_queue_manager** %4, align 8
  %15 = getelementptr inbounds %struct.process_queue_manager, %struct.process_queue_manager* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load %struct.process_queue_manager*, %struct.process_queue_manager** %4, align 8
  %17 = getelementptr inbounds %struct.process_queue_manager, %struct.process_queue_manager* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %27

23:                                               ; preds = %2
  %24 = load %struct.kfd_process*, %struct.kfd_process** %5, align 8
  %25 = load %struct.process_queue_manager*, %struct.process_queue_manager** %4, align 8
  %26 = getelementptr inbounds %struct.process_queue_manager, %struct.process_queue_manager* %25, i32 0, i32 0
  store %struct.kfd_process* %24, %struct.kfd_process** %26, align 8
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %20
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
