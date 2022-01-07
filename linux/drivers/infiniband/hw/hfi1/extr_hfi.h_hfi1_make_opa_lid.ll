; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_hfi.h_hfi1_make_opa_lid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_hfi.h_hfi1_make_opa_lid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_ah_attr = type { i32 }
%struct.ib_global_route = type { i32 }

@IB_MULTICAST_LID_BASE = common dso_local global i32 0, align 4
@IB_LID_PERMISSIVE = common dso_local global i32 0, align 4
@OPA_LID_PERMISSIVE = common dso_local global i32 0, align 4
@OPA_MCAST_NR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdma_ah_attr*)* @hfi1_make_opa_lid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfi1_make_opa_lid(%struct.rdma_ah_attr* %0) #0 {
  %2 = alloca %struct.rdma_ah_attr*, align 8
  %3 = alloca %struct.ib_global_route*, align 8
  %4 = alloca i64, align 8
  store %struct.rdma_ah_attr* %0, %struct.rdma_ah_attr** %2, align 8
  %5 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %2, align 8
  %6 = call %struct.ib_global_route* @rdma_ah_read_grh(%struct.rdma_ah_attr* %5)
  store %struct.ib_global_route* %6, %struct.ib_global_route** %3, align 8
  %7 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %2, align 8
  %8 = call i64 @rdma_ah_get_dlid(%struct.rdma_ah_attr* %7)
  store i64 %8, i64* %4, align 8
  %9 = load %struct.ib_global_route*, %struct.ib_global_route** %3, align 8
  %10 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %9, i32 0, i32 0
  %11 = call i64 @ib_is_opa_gid(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.ib_global_route*, %struct.ib_global_route** %3, align 8
  %15 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %14, i32 0, i32 0
  %16 = call i64 @opa_get_lid_from_gid(i32* %15)
  store i64 %16, i64* %4, align 8
  br label %50

17:                                               ; preds = %1
  %18 = load i64, i64* %4, align 8
  %19 = load i32, i32* @IB_MULTICAST_LID_BASE, align 4
  %20 = call i64 @be16_to_cpu(i32 %19)
  %21 = icmp sge i64 %18, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %17
  %23 = load i64, i64* %4, align 8
  %24 = load i32, i32* @IB_LID_PERMISSIVE, align 4
  %25 = call i64 @be16_to_cpu(i32 %24)
  %26 = icmp ne i64 %23, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = load i64, i64* %4, align 8
  %29 = load i32, i32* @OPA_LID_PERMISSIVE, align 4
  %30 = call i64 @be32_to_cpu(i32 %29)
  %31 = icmp ne i64 %28, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load i64, i64* %4, align 8
  %34 = load i32, i32* @IB_MULTICAST_LID_BASE, align 4
  %35 = call i64 @be16_to_cpu(i32 %34)
  %36 = sub nsw i64 %33, %35
  %37 = load i32, i32* @OPA_MCAST_NR, align 4
  %38 = call i64 @opa_get_mcast_base(i32 %37)
  %39 = add nsw i64 %36, %38
  store i64 %39, i64* %4, align 8
  br label %49

40:                                               ; preds = %27, %22, %17
  %41 = load i64, i64* %4, align 8
  %42 = load i32, i32* @IB_LID_PERMISSIVE, align 4
  %43 = call i64 @be16_to_cpu(i32 %42)
  %44 = icmp eq i64 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @OPA_LID_PERMISSIVE, align 4
  %47 = call i64 @be32_to_cpu(i32 %46)
  store i64 %47, i64* %4, align 8
  br label %48

48:                                               ; preds = %45, %40
  br label %49

49:                                               ; preds = %48, %32
  br label %50

50:                                               ; preds = %49, %13
  %51 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %2, align 8
  %52 = load i64, i64* %4, align 8
  %53 = call i32 @rdma_ah_set_dlid(%struct.rdma_ah_attr* %51, i64 %52)
  ret void
}

declare dso_local %struct.ib_global_route* @rdma_ah_read_grh(%struct.rdma_ah_attr*) #1

declare dso_local i64 @rdma_ah_get_dlid(%struct.rdma_ah_attr*) #1

declare dso_local i64 @ib_is_opa_gid(i32*) #1

declare dso_local i64 @opa_get_lid_from_gid(i32*) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i64 @opa_get_mcast_base(i32) #1

declare dso_local i32 @rdma_ah_set_dlid(%struct.rdma_ah_attr*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
