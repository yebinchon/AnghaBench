; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_hfi1_modify_qp0_ah.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_hfi1_modify_qp0_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ibport = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.rvt_ah = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.rdma_ah_attr = type { i32 }
%struct.rvt_qp = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_ibport*, %struct.rvt_ah*, i32)* @hfi1_modify_qp0_ah to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfi1_modify_qp0_ah(%struct.hfi1_ibport* %0, %struct.rvt_ah* %1, i32 %2) #0 {
  %4 = alloca %struct.hfi1_ibport*, align 8
  %5 = alloca %struct.rvt_ah*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rdma_ah_attr, align 4
  %8 = alloca %struct.rvt_qp*, align 8
  %9 = alloca i32, align 4
  store %struct.hfi1_ibport* %0, %struct.hfi1_ibport** %4, align 8
  store %struct.rvt_ah* %1, %struct.rvt_ah** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = call i32 @memset(%struct.rdma_ah_attr* %7, i32 0, i32 4)
  %13 = load %struct.rvt_ah*, %struct.rvt_ah** %5, align 8
  %14 = getelementptr inbounds %struct.rvt_ah, %struct.rvt_ah* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %7, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @hfi1_update_sm_ah_attr(%struct.hfi1_ibport* %18, %struct.rdma_ah_attr* %7, i32 %19)
  %21 = call i32 (...) @rcu_read_lock()
  %22 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %4, align 8
  %23 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.rvt_qp* @rcu_dereference(i32 %27)
  store %struct.rvt_qp* %28, %struct.rvt_qp** %8, align 8
  %29 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %30 = icmp ne %struct.rvt_qp* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %3
  %32 = load %struct.rvt_ah*, %struct.rvt_ah** %5, align 8
  %33 = getelementptr inbounds %struct.rvt_ah, %struct.rvt_ah* %32, i32 0, i32 0
  %34 = call i32 @rdma_modify_ah(%struct.TYPE_4__* %33, %struct.rdma_ah_attr* %7)
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %31, %3
  %36 = call i32 (...) @rcu_read_unlock()
  %37 = load i32, i32* %9, align 4
  ret i32 %37
}

declare dso_local i32 @memset(%struct.rdma_ah_attr*, i32, i32) #1

declare dso_local i32 @hfi1_update_sm_ah_attr(%struct.hfi1_ibport*, %struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.rvt_qp* @rcu_dereference(i32) #1

declare dso_local i32 @rdma_modify_ah(%struct.TYPE_4__*, %struct.rdma_ah_attr*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
