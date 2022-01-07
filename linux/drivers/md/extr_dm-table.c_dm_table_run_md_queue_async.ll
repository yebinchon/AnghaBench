; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_dm_table_run_md_queue_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_dm_table_run_md_queue_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_table = type { i32 }
%struct.mapped_device = type { i32 }
%struct.request_queue = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_table_run_md_queue_async(%struct.dm_table* %0) #0 {
  %2 = alloca %struct.dm_table*, align 8
  %3 = alloca %struct.mapped_device*, align 8
  %4 = alloca %struct.request_queue*, align 8
  store %struct.dm_table* %0, %struct.dm_table** %2, align 8
  %5 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %6 = call i32 @dm_table_request_based(%struct.dm_table* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %19

9:                                                ; preds = %1
  %10 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %11 = call %struct.mapped_device* @dm_table_get_md(%struct.dm_table* %10)
  store %struct.mapped_device* %11, %struct.mapped_device** %3, align 8
  %12 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %13 = call %struct.request_queue* @dm_get_md_queue(%struct.mapped_device* %12)
  store %struct.request_queue* %13, %struct.request_queue** %4, align 8
  %14 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %15 = icmp ne %struct.request_queue* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %18 = call i32 @blk_mq_run_hw_queues(%struct.request_queue* %17, i32 1)
  br label %19

19:                                               ; preds = %8, %16, %9
  ret void
}

declare dso_local i32 @dm_table_request_based(%struct.dm_table*) #1

declare dso_local %struct.mapped_device* @dm_table_get_md(%struct.dm_table*) #1

declare dso_local %struct.request_queue* @dm_get_md_queue(%struct.mapped_device*) #1

declare dso_local i32 @blk_mq_run_hw_queues(%struct.request_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
