; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_restrack.c_rdma_restrack_get_byid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_restrack.c_rdma_restrack_get_byid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_restrack_entry = type { i32 }
%struct.ib_device = type { %struct.rdma_restrack_root* }
%struct.rdma_restrack_root = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rdma_restrack_entry* @rdma_restrack_get_byid(%struct.ib_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rdma_restrack_root*, align 8
  %8 = alloca %struct.rdma_restrack_entry*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %10 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %9, i32 0, i32 0
  %11 = load %struct.rdma_restrack_root*, %struct.rdma_restrack_root** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.rdma_restrack_root, %struct.rdma_restrack_root* %11, i64 %13
  store %struct.rdma_restrack_root* %14, %struct.rdma_restrack_root** %7, align 8
  %15 = load %struct.rdma_restrack_root*, %struct.rdma_restrack_root** %7, align 8
  %16 = getelementptr inbounds %struct.rdma_restrack_root, %struct.rdma_restrack_root* %15, i32 0, i32 0
  %17 = call i32 @xa_lock(i32* %16)
  %18 = load %struct.rdma_restrack_root*, %struct.rdma_restrack_root** %7, align 8
  %19 = getelementptr inbounds %struct.rdma_restrack_root, %struct.rdma_restrack_root* %18, i32 0, i32 0
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.rdma_restrack_entry* @xa_load(i32* %19, i32 %20)
  store %struct.rdma_restrack_entry* %21, %struct.rdma_restrack_entry** %8, align 8
  %22 = load %struct.rdma_restrack_entry*, %struct.rdma_restrack_entry** %8, align 8
  %23 = icmp ne %struct.rdma_restrack_entry* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load %struct.rdma_restrack_entry*, %struct.rdma_restrack_entry** %8, align 8
  %26 = call i32 @rdma_restrack_get(%struct.rdma_restrack_entry* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24, %3
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.rdma_restrack_entry* @ERR_PTR(i32 %30)
  store %struct.rdma_restrack_entry* %31, %struct.rdma_restrack_entry** %8, align 8
  br label %32

32:                                               ; preds = %28, %24
  %33 = load %struct.rdma_restrack_root*, %struct.rdma_restrack_root** %7, align 8
  %34 = getelementptr inbounds %struct.rdma_restrack_root, %struct.rdma_restrack_root* %33, i32 0, i32 0
  %35 = call i32 @xa_unlock(i32* %34)
  %36 = load %struct.rdma_restrack_entry*, %struct.rdma_restrack_entry** %8, align 8
  ret %struct.rdma_restrack_entry* %36
}

declare dso_local i32 @xa_lock(i32*) #1

declare dso_local %struct.rdma_restrack_entry* @xa_load(i32*, i32) #1

declare dso_local i32 @rdma_restrack_get(%struct.rdma_restrack_entry*) #1

declare dso_local %struct.rdma_restrack_entry* @ERR_PTR(i32) #1

declare dso_local i32 @xa_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
