; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_restrack.c_rdma_restrack_set_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_restrack.c_rdma_restrack_set_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_restrack_entry = type { i8*, i64 }

@current = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rdma_restrack_set_task(%struct.rdma_restrack_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.rdma_restrack_entry*, align 8
  %4 = alloca i8*, align 8
  store %struct.rdma_restrack_entry* %0, %struct.rdma_restrack_entry** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load i8*, i8** %4, align 8
  %9 = load %struct.rdma_restrack_entry*, %struct.rdma_restrack_entry** %3, align 8
  %10 = getelementptr inbounds %struct.rdma_restrack_entry, %struct.rdma_restrack_entry* %9, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  br label %27

11:                                               ; preds = %2
  %12 = load %struct.rdma_restrack_entry*, %struct.rdma_restrack_entry** %3, align 8
  %13 = getelementptr inbounds %struct.rdma_restrack_entry, %struct.rdma_restrack_entry* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.rdma_restrack_entry*, %struct.rdma_restrack_entry** %3, align 8
  %18 = getelementptr inbounds %struct.rdma_restrack_entry, %struct.rdma_restrack_entry* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @put_task_struct(i64 %19)
  br label %21

21:                                               ; preds = %16, %11
  %22 = load i64, i64* @current, align 8
  %23 = call i32 @get_task_struct(i64 %22)
  %24 = load i64, i64* @current, align 8
  %25 = load %struct.rdma_restrack_entry*, %struct.rdma_restrack_entry** %3, align 8
  %26 = getelementptr inbounds %struct.rdma_restrack_entry, %struct.rdma_restrack_entry* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %21, %7
  ret void
}

declare dso_local i32 @put_task_struct(i64) #1

declare dso_local i32 @get_task_struct(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
