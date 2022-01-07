; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_tid_rdma.c_hfi1_qp_priv_tid_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_tid_rdma.c_hfi1_qp_priv_tid_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_dev_info = type { i32 }
%struct.rvt_qp = type { i64, %struct.TYPE_5__*, %struct.TYPE_4__, %struct.hfi1_qp_priv* }
%struct.TYPE_5__ = type { %struct.hfi1_ack_priv* }
%struct.hfi1_ack_priv = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.hfi1_qp_priv = type { %struct.hfi1_ack_priv*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.rvt_swqe = type { %struct.hfi1_ack_priv* }

@IB_QPT_RC = common dso_local global i64 0, align 8
@TID_RDMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfi1_qp_priv_tid_free(%struct.rvt_dev_info* %0, %struct.rvt_qp* %1) #0 {
  %3 = alloca %struct.rvt_dev_info*, align 8
  %4 = alloca %struct.rvt_qp*, align 8
  %5 = alloca %struct.hfi1_qp_priv*, align 8
  %6 = alloca %struct.rvt_swqe*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hfi1_ack_priv*, align 8
  store %struct.rvt_dev_info* %0, %struct.rvt_dev_info** %3, align 8
  store %struct.rvt_qp* %1, %struct.rvt_qp** %4, align 8
  %9 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %10 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %9, i32 0, i32 3
  %11 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %10, align 8
  store %struct.hfi1_qp_priv* %11, %struct.hfi1_qp_priv** %5, align 8
  %12 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %13 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IB_QPT_RC, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %85

18:                                               ; preds = %2
  %19 = load i32, i32* @TID_RDMA, align 4
  %20 = call i64 @HFI1_CAP_IS_KSET(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %85

22:                                               ; preds = %18
  store i64 0, i64* %7, align 8
  br label %23

23:                                               ; preds = %39, %22
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %26 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp* %30, i64 %31)
  store %struct.rvt_swqe* %32, %struct.rvt_swqe** %6, align 8
  %33 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %34 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %33, i32 0, i32 0
  %35 = load %struct.hfi1_ack_priv*, %struct.hfi1_ack_priv** %34, align 8
  %36 = call i32 @kfree(%struct.hfi1_ack_priv* %35)
  %37 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %38 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %37, i32 0, i32 0
  store %struct.hfi1_ack_priv* null, %struct.hfi1_ack_priv** %38, align 8
  br label %39

39:                                               ; preds = %29
  %40 = load i64, i64* %7, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %7, align 8
  br label %23

42:                                               ; preds = %23
  store i64 0, i64* %7, align 8
  br label %43

43:                                               ; preds = %71, %42
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %46 = call i64 @rvt_max_atomic(%struct.rvt_dev_info* %45)
  %47 = icmp ult i64 %44, %46
  br i1 %47, label %48, label %74

48:                                               ; preds = %43
  %49 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %50 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load %struct.hfi1_ack_priv*, %struct.hfi1_ack_priv** %54, align 8
  store %struct.hfi1_ack_priv* %55, %struct.hfi1_ack_priv** %8, align 8
  %56 = load %struct.hfi1_ack_priv*, %struct.hfi1_ack_priv** %8, align 8
  %57 = icmp ne %struct.hfi1_ack_priv* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %48
  %59 = load %struct.hfi1_ack_priv*, %struct.hfi1_ack_priv** %8, align 8
  %60 = getelementptr inbounds %struct.hfi1_ack_priv, %struct.hfi1_ack_priv* %59, i32 0, i32 0
  %61 = call i32 @hfi1_kern_exp_rcv_free_flows(i32* %60)
  br label %62

62:                                               ; preds = %58, %48
  %63 = load %struct.hfi1_ack_priv*, %struct.hfi1_ack_priv** %8, align 8
  %64 = call i32 @kfree(%struct.hfi1_ack_priv* %63)
  %65 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %66 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %65, i32 0, i32 1
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store %struct.hfi1_ack_priv* null, %struct.hfi1_ack_priv** %70, align 8
  br label %71

71:                                               ; preds = %62
  %72 = load i64, i64* %7, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %7, align 8
  br label %43

74:                                               ; preds = %43
  %75 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %5, align 8
  %76 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = call i32 @cancel_work_sync(i32* %77)
  %79 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %5, align 8
  %80 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %79, i32 0, i32 0
  %81 = load %struct.hfi1_ack_priv*, %struct.hfi1_ack_priv** %80, align 8
  %82 = call i32 @kfree(%struct.hfi1_ack_priv* %81)
  %83 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %5, align 8
  %84 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %83, i32 0, i32 0
  store %struct.hfi1_ack_priv* null, %struct.hfi1_ack_priv** %84, align 8
  br label %85

85:                                               ; preds = %74, %18, %2
  ret void
}

declare dso_local i64 @HFI1_CAP_IS_KSET(i32) #1

declare dso_local %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp*, i64) #1

declare dso_local i32 @kfree(%struct.hfi1_ack_priv*) #1

declare dso_local i64 @rvt_max_atomic(%struct.rvt_dev_info*) #1

declare dso_local i32 @hfi1_kern_exp_rcv_free_flows(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
