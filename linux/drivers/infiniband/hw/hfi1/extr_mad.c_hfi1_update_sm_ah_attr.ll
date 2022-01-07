; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_hfi1_update_sm_ah_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_hfi1_update_sm_ah_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ibport = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.rdma_ah_attr = type { i32 }
%struct.ib_global_route = type { i32, %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@IB_MULTICAST_LID_BASE = common dso_local global i32 0, align 4
@IB_AH_GRH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_ibport*, %struct.rdma_ah_attr*, i64)* @hfi1_update_sm_ah_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfi1_update_sm_ah_attr(%struct.hfi1_ibport* %0, %struct.rdma_ah_attr* %1, i64 %2) #0 {
  %4 = alloca %struct.hfi1_ibport*, align 8
  %5 = alloca %struct.rdma_ah_attr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ib_global_route*, align 8
  store %struct.hfi1_ibport* %0, %struct.hfi1_ibport** %4, align 8
  store %struct.rdma_ah_attr* %1, %struct.rdma_ah_attr** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @rdma_ah_set_dlid(%struct.rdma_ah_attr* %8, i64 %9)
  %11 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %12 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %4, align 8
  %13 = call %struct.TYPE_8__* @ppd_from_ibp(%struct.hfi1_ibport* %12)
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @rdma_ah_set_port_num(%struct.rdma_ah_attr* %11, i32 %15)
  %17 = load i64, i64* %6, align 8
  %18 = load i32, i32* @IB_MULTICAST_LID_BASE, align 4
  %19 = call i64 @be16_to_cpu(i32 %18)
  %20 = icmp sge i64 %17, %19
  br i1 %20, label %21, label %45

21:                                               ; preds = %3
  %22 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %23 = call %struct.ib_global_route* @rdma_ah_retrieve_grh(%struct.rdma_ah_attr* %22)
  store %struct.ib_global_route* %23, %struct.ib_global_route** %7, align 8
  %24 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %25 = load i32, i32* @IB_AH_GRH, align 4
  %26 = call i32 @rdma_ah_set_ah_flags(%struct.rdma_ah_attr* %24, i32 %25)
  %27 = load %struct.ib_global_route*, %struct.ib_global_route** %7, align 8
  %28 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.ib_global_route*, %struct.ib_global_route** %7, align 8
  %30 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %4, align 8
  %32 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ib_global_route*, %struct.ib_global_route** %7, align 8
  %36 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  store i32 %34, i32* %38, align 4
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @OPA_MAKE_ID(i64 %39)
  %41 = load %struct.ib_global_route*, %struct.ib_global_route** %7, align 8
  %42 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 4
  br label %45

45:                                               ; preds = %21, %3
  ret void
}

declare dso_local i32 @rdma_ah_set_dlid(%struct.rdma_ah_attr*, i64) #1

declare dso_local i32 @rdma_ah_set_port_num(%struct.rdma_ah_attr*, i32) #1

declare dso_local %struct.TYPE_8__* @ppd_from_ibp(%struct.hfi1_ibport*) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local %struct.ib_global_route* @rdma_ah_retrieve_grh(%struct.rdma_ah_attr*) #1

declare dso_local i32 @rdma_ah_set_ah_flags(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @OPA_MAKE_ID(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
