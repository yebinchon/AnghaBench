; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_restrack.c_rdma_restrack_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_restrack.c_rdma_restrack_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_restrack_entry = type { i32, i64, i32*, i32, i32 }
%struct.rdma_restrack_root = type { i32 }
%struct.ib_device = type { %struct.rdma_restrack_root* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rdma_restrack_del(%struct.rdma_restrack_entry* %0) #0 {
  %2 = alloca %struct.rdma_restrack_entry*, align 8
  %3 = alloca %struct.rdma_restrack_entry*, align 8
  %4 = alloca %struct.rdma_restrack_root*, align 8
  %5 = alloca %struct.ib_device*, align 8
  store %struct.rdma_restrack_entry* %0, %struct.rdma_restrack_entry** %2, align 8
  %6 = load %struct.rdma_restrack_entry*, %struct.rdma_restrack_entry** %2, align 8
  %7 = getelementptr inbounds %struct.rdma_restrack_entry, %struct.rdma_restrack_entry* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %47

11:                                               ; preds = %1
  %12 = load %struct.rdma_restrack_entry*, %struct.rdma_restrack_entry** %2, align 8
  %13 = call %struct.ib_device* @res_to_dev(%struct.rdma_restrack_entry* %12)
  store %struct.ib_device* %13, %struct.ib_device** %5, align 8
  %14 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %15 = icmp ne %struct.ib_device* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  br label %59

21:                                               ; preds = %11
  %22 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %23 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %22, i32 0, i32 0
  %24 = load %struct.rdma_restrack_root*, %struct.rdma_restrack_root** %23, align 8
  %25 = load %struct.rdma_restrack_entry*, %struct.rdma_restrack_entry** %2, align 8
  %26 = getelementptr inbounds %struct.rdma_restrack_entry, %struct.rdma_restrack_entry* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.rdma_restrack_root, %struct.rdma_restrack_root* %24, i64 %27
  store %struct.rdma_restrack_root* %28, %struct.rdma_restrack_root** %4, align 8
  %29 = load %struct.rdma_restrack_root*, %struct.rdma_restrack_root** %4, align 8
  %30 = getelementptr inbounds %struct.rdma_restrack_root, %struct.rdma_restrack_root* %29, i32 0, i32 0
  %31 = load %struct.rdma_restrack_entry*, %struct.rdma_restrack_entry** %2, align 8
  %32 = getelementptr inbounds %struct.rdma_restrack_entry, %struct.rdma_restrack_entry* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.rdma_restrack_entry* @xa_erase(i32* %30, i32 %33)
  store %struct.rdma_restrack_entry* %34, %struct.rdma_restrack_entry** %3, align 8
  %35 = load %struct.rdma_restrack_entry*, %struct.rdma_restrack_entry** %3, align 8
  %36 = load %struct.rdma_restrack_entry*, %struct.rdma_restrack_entry** %2, align 8
  %37 = icmp ne %struct.rdma_restrack_entry* %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i64 @WARN_ON(i32 %38)
  %40 = load %struct.rdma_restrack_entry*, %struct.rdma_restrack_entry** %2, align 8
  %41 = getelementptr inbounds %struct.rdma_restrack_entry, %struct.rdma_restrack_entry* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load %struct.rdma_restrack_entry*, %struct.rdma_restrack_entry** %2, align 8
  %43 = call i32 @rdma_restrack_put(%struct.rdma_restrack_entry* %42)
  %44 = load %struct.rdma_restrack_entry*, %struct.rdma_restrack_entry** %2, align 8
  %45 = getelementptr inbounds %struct.rdma_restrack_entry, %struct.rdma_restrack_entry* %44, i32 0, i32 3
  %46 = call i32 @wait_for_completion(i32* %45)
  br label %47

47:                                               ; preds = %21, %10
  %48 = load %struct.rdma_restrack_entry*, %struct.rdma_restrack_entry** %2, align 8
  %49 = getelementptr inbounds %struct.rdma_restrack_entry, %struct.rdma_restrack_entry* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.rdma_restrack_entry*, %struct.rdma_restrack_entry** %2, align 8
  %54 = getelementptr inbounds %struct.rdma_restrack_entry, %struct.rdma_restrack_entry* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @put_task_struct(i32* %55)
  %57 = load %struct.rdma_restrack_entry*, %struct.rdma_restrack_entry** %2, align 8
  %58 = getelementptr inbounds %struct.rdma_restrack_entry, %struct.rdma_restrack_entry* %57, i32 0, i32 2
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %20, %52, %47
  ret void
}

declare dso_local %struct.ib_device* @res_to_dev(%struct.rdma_restrack_entry*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.rdma_restrack_entry* @xa_erase(i32*, i32) #1

declare dso_local i32 @rdma_restrack_put(%struct.rdma_restrack_entry*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @put_task_struct(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
