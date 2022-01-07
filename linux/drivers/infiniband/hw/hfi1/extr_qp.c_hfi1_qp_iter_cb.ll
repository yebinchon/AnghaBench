; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.c_hfi1_qp_iter_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.c_hfi1_qp_iter_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i64, i64, %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i32 (%struct.ib_event*, i32)*, i32 }
%struct.ib_event = type opaque
%struct.ib_event.0 = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.hfi1_ibport = type { i32 }
%struct.hfi1_pportdata = type { i64 }

@IB_QPT_UC = common dso_local global i64 0, align 8
@IB_QPT_RC = common dso_local global i64 0, align 8
@ib_rvt_state_ops = common dso_local global i32* null, align 8
@RVT_POST_SEND_OK = common dso_local global i32 0, align 4
@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@IB_EVENT_QP_LAST_WQE_REACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvt_qp*, i32)* @hfi1_qp_iter_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfi1_qp_iter_cb(%struct.rvt_qp* %0, i32 %1) #0 {
  %3 = alloca %struct.rvt_qp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_event.0, align 8
  %7 = alloca %struct.hfi1_ibport*, align 8
  %8 = alloca %struct.hfi1_pportdata*, align 8
  %9 = alloca i64, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %11 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %15 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call %struct.hfi1_ibport* @to_iport(i32 %13, i64 %16)
  store %struct.hfi1_ibport* %17, %struct.hfi1_ibport** %7, align 8
  %18 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %7, align 8
  %19 = call %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport* %18)
  store %struct.hfi1_pportdata* %19, %struct.hfi1_pportdata** %8, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %9, align 8
  %22 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %23 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %8, align 8
  %26 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %59, label %29

29:                                               ; preds = %2
  %30 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %31 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @IB_QPT_UC, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %38 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @IB_QPT_RC, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %59, label %43

43:                                               ; preds = %36, %29
  %44 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %45 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %44, i32 0, i32 6
  %46 = call i64 @rdma_ah_get_sl(i32* %45)
  %47 = load i64, i64* %9, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %59, label %49

49:                                               ; preds = %43
  %50 = load i32*, i32** @ib_rvt_state_ops, align 8
  %51 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %52 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @RVT_POST_SEND_OK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %49, %43, %36, %2
  br label %106

60:                                               ; preds = %49
  %61 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %62 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %61, i32 0, i32 3
  %63 = call i32 @spin_lock_irq(i32* %62)
  %64 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %65 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %64, i32 0, i32 4
  %66 = call i32 @spin_lock(i32* %65)
  %67 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %68 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %67, i32 0, i32 5
  %69 = call i32 @spin_lock(i32* %68)
  %70 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %71 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %72 = call i32 @rvt_error_qp(%struct.rvt_qp* %70, i32 %71)
  store i32 %72, i32* %5, align 4
  %73 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %74 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %73, i32 0, i32 5
  %75 = call i32 @spin_unlock(i32* %74)
  %76 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %77 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %76, i32 0, i32 4
  %78 = call i32 @spin_unlock(i32* %77)
  %79 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %80 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %79, i32 0, i32 3
  %81 = call i32 @spin_unlock_irq(i32* %80)
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %106

84:                                               ; preds = %60
  %85 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %86 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %6, i32 0, i32 2
  store i32 %88, i32* %89, align 8
  %90 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %91 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %6, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  store %struct.TYPE_4__* %91, %struct.TYPE_4__** %93, align 8
  %94 = load i32, i32* @IB_EVENT_QP_LAST_WQE_REACHED, align 4
  %95 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %6, i32 0, i32 0
  store i32 %94, i32* %95, align 8
  %96 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %97 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %98, align 8
  %100 = bitcast %struct.ib_event.0* %6 to %struct.ib_event*
  %101 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %102 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 %99(%struct.ib_event* %100, i32 %104)
  br label %106

106:                                              ; preds = %59, %84, %60
  ret void
}

declare dso_local %struct.hfi1_ibport* @to_iport(i32, i64) #1

declare dso_local %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport*) #1

declare dso_local i64 @rdma_ah_get_sl(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rvt_error_qp(%struct.rvt_qp*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
