; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_process_queue_manager.c_pqm_get_kernel_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_process_queue_manager.c_pqm_get_kernel_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_queue = type { i32 }
%struct.process_queue_manager = type { i32 }
%struct.process_queue_node = type { %struct.kernel_queue* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kernel_queue* @pqm_get_kernel_queue(%struct.process_queue_manager* %0, i32 %1) #0 {
  %3 = alloca %struct.kernel_queue*, align 8
  %4 = alloca %struct.process_queue_manager*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.process_queue_node*, align 8
  store %struct.process_queue_manager* %0, %struct.process_queue_manager** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.process_queue_manager*, %struct.process_queue_manager** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.process_queue_node* @get_queue_by_qid(%struct.process_queue_manager* %7, i32 %8)
  store %struct.process_queue_node* %9, %struct.process_queue_node** %6, align 8
  %10 = load %struct.process_queue_node*, %struct.process_queue_node** %6, align 8
  %11 = icmp ne %struct.process_queue_node* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.process_queue_node*, %struct.process_queue_node** %6, align 8
  %14 = getelementptr inbounds %struct.process_queue_node, %struct.process_queue_node* %13, i32 0, i32 0
  %15 = load %struct.kernel_queue*, %struct.kernel_queue** %14, align 8
  %16 = icmp ne %struct.kernel_queue* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.process_queue_node*, %struct.process_queue_node** %6, align 8
  %19 = getelementptr inbounds %struct.process_queue_node, %struct.process_queue_node* %18, i32 0, i32 0
  %20 = load %struct.kernel_queue*, %struct.kernel_queue** %19, align 8
  store %struct.kernel_queue* %20, %struct.kernel_queue** %3, align 8
  br label %22

21:                                               ; preds = %12, %2
  store %struct.kernel_queue* null, %struct.kernel_queue** %3, align 8
  br label %22

22:                                               ; preds = %21, %17
  %23 = load %struct.kernel_queue*, %struct.kernel_queue** %3, align 8
  ret %struct.kernel_queue* %23
}

declare dso_local %struct.process_queue_node* @get_queue_by_qid(%struct.process_queue_manager*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
