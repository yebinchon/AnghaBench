; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_restrack.c_rdma_restrack_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_restrack.c_rdma_restrack_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { %struct.rdma_restrack_root* }
%struct.rdma_restrack_root = type { i32 }

@RDMA_RESTRACK_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XA_FLAGS_ALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdma_restrack_init(%struct.ib_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca %struct.rdma_restrack_root*, align 8
  %5 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  %6 = load i32, i32* @RDMA_RESTRACK_MAX, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.rdma_restrack_root* @kcalloc(i32 %6, i32 4, i32 %7)
  %9 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %10 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %9, i32 0, i32 0
  store %struct.rdma_restrack_root* %8, %struct.rdma_restrack_root** %10, align 8
  %11 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %12 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %11, i32 0, i32 0
  %13 = load %struct.rdma_restrack_root*, %struct.rdma_restrack_root** %12, align 8
  %14 = icmp ne %struct.rdma_restrack_root* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %38

18:                                               ; preds = %1
  %19 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %20 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %19, i32 0, i32 0
  %21 = load %struct.rdma_restrack_root*, %struct.rdma_restrack_root** %20, align 8
  store %struct.rdma_restrack_root* %21, %struct.rdma_restrack_root** %4, align 8
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %34, %18
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @RDMA_RESTRACK_MAX, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = load %struct.rdma_restrack_root*, %struct.rdma_restrack_root** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.rdma_restrack_root, %struct.rdma_restrack_root* %27, i64 %29
  %31 = getelementptr inbounds %struct.rdma_restrack_root, %struct.rdma_restrack_root* %30, i32 0, i32 0
  %32 = load i32, i32* @XA_FLAGS_ALLOC, align 4
  %33 = call i32 @xa_init_flags(i32* %31, i32 %32)
  br label %34

34:                                               ; preds = %26
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %22

37:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %15
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.rdma_restrack_root* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @xa_init_flags(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
