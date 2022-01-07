; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_hfi1_create_qp0_ah.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_hfi1_create_qp0_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { i32 }
%struct.hfi1_ibport = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.rdma_ah_attr = type { i32 }
%struct.rvt_qp = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.hfi1_pportdata = type { i32 }
%struct.hfi1_devdata = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_ah* (%struct.hfi1_ibport*, i32)* @hfi1_create_qp0_ah to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_ah* @hfi1_create_qp0_ah(%struct.hfi1_ibport* %0, i32 %1) #0 {
  %3 = alloca %struct.hfi1_ibport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rdma_ah_attr, align 4
  %6 = alloca %struct.ib_ah*, align 8
  %7 = alloca %struct.rvt_qp*, align 8
  %8 = alloca %struct.hfi1_pportdata*, align 8
  %9 = alloca %struct.hfi1_devdata*, align 8
  %10 = alloca i32, align 4
  store %struct.hfi1_ibport* %0, %struct.hfi1_ibport** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.ib_ah* @ERR_PTR(i32 %12)
  store %struct.ib_ah* %13, %struct.ib_ah** %6, align 8
  %14 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %3, align 8
  %15 = call %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport* %14)
  store %struct.hfi1_pportdata* %15, %struct.hfi1_pportdata** %8, align 8
  %16 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %8, align 8
  %17 = call %struct.hfi1_devdata* @dd_from_ppd(%struct.hfi1_pportdata* %16)
  store %struct.hfi1_devdata* %17, %struct.hfi1_devdata** %9, align 8
  %18 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %8, align 8
  %19 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = call i32 @memset(%struct.rdma_ah_attr* %5, i32 0, i32 4)
  %22 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %23 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @rdma_ah_find_type(i32* %25, i32 %26)
  %28 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %5, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @hfi1_update_sm_ah_attr(%struct.hfi1_ibport* %29, %struct.rdma_ah_attr* %5, i32 %30)
  %32 = call i32 (...) @rcu_read_lock()
  %33 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %3, align 8
  %34 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.rvt_qp* @rcu_dereference(i32 %38)
  store %struct.rvt_qp* %39, %struct.rvt_qp** %7, align 8
  %40 = load %struct.rvt_qp*, %struct.rvt_qp** %7, align 8
  %41 = icmp ne %struct.rvt_qp* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %2
  %43 = load %struct.rvt_qp*, %struct.rvt_qp** %7, align 8
  %44 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.ib_ah* @rdma_create_ah(i32 %46, %struct.rdma_ah_attr* %5, i32 0)
  store %struct.ib_ah* %47, %struct.ib_ah** %6, align 8
  br label %48

48:                                               ; preds = %42, %2
  %49 = call i32 (...) @rcu_read_unlock()
  %50 = load %struct.ib_ah*, %struct.ib_ah** %6, align 8
  ret %struct.ib_ah* %50
}

declare dso_local %struct.ib_ah* @ERR_PTR(i32) #1

declare dso_local %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport*) #1

declare dso_local %struct.hfi1_devdata* @dd_from_ppd(%struct.hfi1_pportdata*) #1

declare dso_local i32 @memset(%struct.rdma_ah_attr*, i32, i32) #1

declare dso_local i32 @rdma_ah_find_type(i32*, i32) #1

declare dso_local i32 @hfi1_update_sm_ah_attr(%struct.hfi1_ibport*, %struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.rvt_qp* @rcu_dereference(i32) #1

declare dso_local %struct.ib_ah* @rdma_create_ah(i32, %struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
