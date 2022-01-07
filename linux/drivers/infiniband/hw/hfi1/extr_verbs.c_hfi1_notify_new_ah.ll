; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_hfi1_notify_new_ah.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_hfi1_notify_new_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.rdma_ah_attr = type { i32 }
%struct.rvt_ah = type { i32, i32, %struct.rdma_ah_attr }
%struct.hfi1_ibport = type { i32* }
%struct.hfi1_pportdata = type { i32 }
%struct.hfi1_devdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@num_vls = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*, %struct.rdma_ah_attr*, %struct.rvt_ah*)* @hfi1_notify_new_ah to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfi1_notify_new_ah(%struct.ib_device* %0, %struct.rdma_ah_attr* %1, %struct.rvt_ah* %2) #0 {
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca %struct.rdma_ah_attr*, align 8
  %6 = alloca %struct.rvt_ah*, align 8
  %7 = alloca %struct.hfi1_ibport*, align 8
  %8 = alloca %struct.hfi1_pportdata*, align 8
  %9 = alloca %struct.hfi1_devdata*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rdma_ah_attr*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store %struct.rdma_ah_attr* %1, %struct.rdma_ah_attr** %5, align 8
  store %struct.rvt_ah* %2, %struct.rvt_ah** %6, align 8
  %12 = load %struct.rvt_ah*, %struct.rvt_ah** %6, align 8
  %13 = getelementptr inbounds %struct.rvt_ah, %struct.rvt_ah* %12, i32 0, i32 2
  store %struct.rdma_ah_attr* %13, %struct.rdma_ah_attr** %11, align 8
  %14 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %15 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %16 = call i32 @rdma_ah_get_port_num(%struct.rdma_ah_attr* %15)
  %17 = call %struct.hfi1_ibport* @to_iport(%struct.ib_device* %14, i32 %16)
  store %struct.hfi1_ibport* %17, %struct.hfi1_ibport** %7, align 8
  %18 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %7, align 8
  %19 = call %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport* %18)
  store %struct.hfi1_pportdata* %19, %struct.hfi1_pportdata** %8, align 8
  %20 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %7, align 8
  %21 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.rvt_ah*, %struct.rvt_ah** %6, align 8
  %24 = getelementptr inbounds %struct.rvt_ah, %struct.rvt_ah* %23, i32 0, i32 2
  %25 = call i64 @rdma_ah_get_sl(%struct.rdma_ah_attr* %24)
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  %28 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %29 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %11, align 8
  %30 = call i32 @hfi1_update_ah_attr(%struct.ib_device* %28, %struct.rdma_ah_attr* %29)
  %31 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %11, align 8
  %32 = call i32 @hfi1_make_opa_lid(%struct.rdma_ah_attr* %31)
  %33 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %8, align 8
  %34 = call %struct.hfi1_devdata* @dd_from_ppd(%struct.hfi1_pportdata* %33)
  store %struct.hfi1_devdata* %34, %struct.hfi1_devdata** %9, align 8
  %35 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @sc_to_vlt(%struct.hfi1_devdata* %35, i32 %36)
  %38 = load %struct.rvt_ah*, %struct.rvt_ah** %6, align 8
  %39 = getelementptr inbounds %struct.rvt_ah, %struct.rvt_ah* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.rvt_ah*, %struct.rvt_ah** %6, align 8
  %41 = getelementptr inbounds %struct.rvt_ah, %struct.rvt_ah* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @num_vls, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %50, label %45

45:                                               ; preds = %3
  %46 = load %struct.rvt_ah*, %struct.rvt_ah** %6, align 8
  %47 = getelementptr inbounds %struct.rvt_ah, %struct.rvt_ah* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 15
  br i1 %49, label %50, label %64

50:                                               ; preds = %45, %3
  %51 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %52 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load %struct.rvt_ah*, %struct.rvt_ah** %6, align 8
  %55 = getelementptr inbounds %struct.rvt_ah, %struct.rvt_ah* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ilog2(i32 %60)
  %62 = load %struct.rvt_ah*, %struct.rvt_ah** %6, align 8
  %63 = getelementptr inbounds %struct.rvt_ah, %struct.rvt_ah* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %50, %45
  ret void
}

declare dso_local %struct.hfi1_ibport* @to_iport(%struct.ib_device*, i32) #1

declare dso_local i32 @rdma_ah_get_port_num(%struct.rdma_ah_attr*) #1

declare dso_local %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport*) #1

declare dso_local i64 @rdma_ah_get_sl(%struct.rdma_ah_attr*) #1

declare dso_local i32 @hfi1_update_ah_attr(%struct.ib_device*, %struct.rdma_ah_attr*) #1

declare dso_local i32 @hfi1_make_opa_lid(%struct.rdma_ah_attr*) #1

declare dso_local %struct.hfi1_devdata* @dd_from_ppd(%struct.hfi1_pportdata*) #1

declare dso_local i32 @sc_to_vlt(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @ilog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
