; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_hfi.h_hfi1_update_ah_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_hfi.h_hfi1_update_ah_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.rdma_ah_attr = type { i32 }
%struct.hfi1_pportdata = type { i64 }
%struct.hfi1_ibport = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IB_MULTICAST_LID_BASE = common dso_local global i32 0, align 4
@OPA_LID_PERMISSIVE = common dso_local global i32 0, align 4
@IB_LID_PERMISSIVE = common dso_local global i32 0, align 4
@IB_AH_GRH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*, %struct.rdma_ah_attr*)* @hfi1_update_ah_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfi1_update_ah_attr(%struct.ib_device* %0, %struct.rdma_ah_attr* %1) #0 {
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca %struct.rdma_ah_attr*, align 8
  %5 = alloca %struct.hfi1_pportdata*, align 8
  %6 = alloca %struct.hfi1_ibport*, align 8
  %7 = alloca i64, align 8
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  store %struct.rdma_ah_attr* %1, %struct.rdma_ah_attr** %4, align 8
  %8 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %9 = call i64 @rdma_ah_get_dlid(%struct.rdma_ah_attr* %8)
  store i64 %9, i64* %7, align 8
  %10 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %11 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %12 = call i32 @rdma_ah_get_port_num(%struct.rdma_ah_attr* %11)
  %13 = call %struct.hfi1_ibport* @to_iport(%struct.ib_device* %10, i32 %12)
  store %struct.hfi1_ibport* %13, %struct.hfi1_ibport** %6, align 8
  %14 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %6, align 8
  %15 = call %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport* %14)
  store %struct.hfi1_pportdata* %15, %struct.hfi1_pportdata** %5, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i32, i32* @IB_MULTICAST_LID_BASE, align 4
  %18 = call i64 @be16_to_cpu(i32 %17)
  %19 = icmp sge i64 %16, %18
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %22 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @IB_MULTICAST_LID_BASE, align 4
  %25 = call i64 @be16_to_cpu(i32 %24)
  %26 = icmp sge i64 %23, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %20, %2
  %28 = load i64, i64* %7, align 8
  %29 = load i32, i32* @OPA_LID_PERMISSIVE, align 4
  %30 = call i64 @be32_to_cpu(i32 %29)
  %31 = icmp ne i64 %28, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load i64, i64* %7, align 8
  %34 = load i32, i32* @IB_LID_PERMISSIVE, align 4
  %35 = call i64 @be16_to_cpu(i32 %34)
  %36 = icmp ne i64 %33, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %39 = call i32 @rdma_ah_get_ah_flags(%struct.rdma_ah_attr* %38)
  %40 = load i32, i32* @IB_AH_GRH, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %37, %32, %27, %20
  %44 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %45 = call i64 @rdma_ah_get_make_grd(%struct.rdma_ah_attr* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %43, %37
  %48 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %49 = load i32, i32* @IB_AH_GRH, align 4
  %50 = call i32 @rdma_ah_set_ah_flags(%struct.rdma_ah_attr* %48, i32 %49)
  %51 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @OPA_MAKE_ID(i64 %52)
  %54 = call i32 @rdma_ah_set_interface_id(%struct.rdma_ah_attr* %51, i32 %53)
  %55 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %56 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %6, align 8
  %57 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @rdma_ah_set_subnet_prefix(%struct.rdma_ah_attr* %55, i32 %59)
  br label %61

61:                                               ; preds = %47, %43
  ret void
}

declare dso_local i64 @rdma_ah_get_dlid(%struct.rdma_ah_attr*) #1

declare dso_local %struct.hfi1_ibport* @to_iport(%struct.ib_device*, i32) #1

declare dso_local i32 @rdma_ah_get_port_num(%struct.rdma_ah_attr*) #1

declare dso_local %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport*) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @rdma_ah_get_ah_flags(%struct.rdma_ah_attr*) #1

declare dso_local i64 @rdma_ah_get_make_grd(%struct.rdma_ah_attr*) #1

declare dso_local i32 @rdma_ah_set_ah_flags(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @rdma_ah_set_interface_id(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @OPA_MAKE_ID(i64) #1

declare dso_local i32 @rdma_ah_set_subnet_prefix(%struct.rdma_ah_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
