; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_check_ah.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_check_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.rdma_ah_attr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IB_MULTICAST_LID_BASE = common dso_local global i32 0, align 4
@IB_LID_PERMISSIVE = common dso_local global i32 0, align 4
@IB_AH_GRH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_check_ah(%struct.ib_device* %0, %struct.rdma_ah_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca %struct.rdma_ah_attr*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store %struct.rdma_ah_attr* %1, %struct.rdma_ah_attr** %5, align 8
  %6 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %7 = call i32 @rdma_ah_get_sl(%struct.rdma_ah_attr* %6)
  %8 = icmp sgt i32 %7, 15
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %41

12:                                               ; preds = %2
  %13 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %14 = call i64 @rdma_ah_get_dlid(%struct.rdma_ah_attr* %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %41

19:                                               ; preds = %12
  %20 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %21 = call i64 @rdma_ah_get_dlid(%struct.rdma_ah_attr* %20)
  %22 = load i32, i32* @IB_MULTICAST_LID_BASE, align 4
  %23 = call i64 @be16_to_cpu(i32 %22)
  %24 = icmp sge i64 %21, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %19
  %26 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %27 = call i64 @rdma_ah_get_dlid(%struct.rdma_ah_attr* %26)
  %28 = load i32, i32* @IB_LID_PERMISSIVE, align 4
  %29 = call i64 @be16_to_cpu(i32 %28)
  %30 = icmp ne i64 %27, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %33 = call i32 @rdma_ah_get_ah_flags(%struct.rdma_ah_attr* %32)
  %34 = load i32, i32* @IB_AH_GRH, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %41

40:                                               ; preds = %31, %25, %19
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %37, %16, %9
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @rdma_ah_get_sl(%struct.rdma_ah_attr*) #1

declare dso_local i64 @rdma_ah_get_dlid(%struct.rdma_ah_attr*) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @rdma_ah_get_ah_flags(%struct.rdma_ah_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
