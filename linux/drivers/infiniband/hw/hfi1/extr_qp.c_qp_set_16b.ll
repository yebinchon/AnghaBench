; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.c_qp_set_16b.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.c_qp_set_16b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i32, i32, %struct.TYPE_2__, %struct.hfi1_qp_priv* }
%struct.TYPE_2__ = type { i32 }
%struct.hfi1_qp_priv = type { i32 }
%struct.hfi1_pportdata = type { i32 }
%struct.hfi1_ibport = type { i32 }

@IB_AH_GRH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvt_qp*)* @qp_set_16b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qp_set_16b(%struct.rvt_qp* %0) #0 {
  %2 = alloca %struct.rvt_qp*, align 8
  %3 = alloca %struct.hfi1_pportdata*, align 8
  %4 = alloca %struct.hfi1_ibport*, align 8
  %5 = alloca %struct.hfi1_qp_priv*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %2, align 8
  %6 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %7 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %6, i32 0, i32 3
  %8 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %7, align 8
  store %struct.hfi1_qp_priv* %8, %struct.hfi1_qp_priv** %5, align 8
  %9 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %10 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %14 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %13, i32 0, i32 0
  %15 = call i32 @hfi1_update_ah_attr(i32 %12, i32* %14)
  %16 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %17 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %16, i32 0, i32 0
  %18 = call i32 @hfi1_make_opa_lid(i32* %17)
  %19 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %20 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %19, i32 0, i32 0
  %21 = call i32 @rdma_ah_get_ah_flags(i32* %20)
  %22 = load i32, i32* @IB_AH_GRH, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  br label %45

26:                                               ; preds = %1
  %27 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %28 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %32 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.hfi1_ibport* @to_iport(i32 %30, i32 %33)
  store %struct.hfi1_ibport* %34, %struct.hfi1_ibport** %4, align 8
  %35 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %4, align 8
  %36 = call %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport* %35)
  store %struct.hfi1_pportdata* %36, %struct.hfi1_pportdata** %3, align 8
  %37 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %38 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %41 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %40, i32 0, i32 0
  %42 = call i32 @hfi1_get_hdr_type(i32 %39, i32* %41)
  %43 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %5, align 8
  %44 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %26, %25
  ret void
}

declare dso_local i32 @hfi1_update_ah_attr(i32, i32*) #1

declare dso_local i32 @hfi1_make_opa_lid(i32*) #1

declare dso_local i32 @rdma_ah_get_ah_flags(i32*) #1

declare dso_local %struct.hfi1_ibport* @to_iport(i32, i32) #1

declare dso_local %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport*) #1

declare dso_local i32 @hfi1_get_hdr_type(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
