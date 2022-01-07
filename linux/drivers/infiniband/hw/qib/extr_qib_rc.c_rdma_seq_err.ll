; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_rc.c_rdma_seq_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_rc.c_rdma_seq_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i32, i32, i64, i32 }
%struct.qib_ibport = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.qib_ctxtdata = type { i32 }
%struct.rvt_swqe = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }

@IB_WR_RDMA_READ = common dso_local global i64 0, align 8
@IB_WR_ATOMIC_CMP_AND_SWP = common dso_local global i64 0, align 8
@IB_WR_ATOMIC_FETCH_AND_ADD = common dso_local global i64 0, align 8
@RVT_R_RDMAR_SEQ = common dso_local global i32 0, align 4
@RVT_R_RSP_SEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvt_qp*, %struct.qib_ibport*, i32, %struct.qib_ctxtdata*)* @rdma_seq_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdma_seq_err(%struct.rvt_qp* %0, %struct.qib_ibport* %1, i32 %2, %struct.qib_ctxtdata* %3) #0 {
  %5 = alloca %struct.rvt_qp*, align 8
  %6 = alloca %struct.qib_ibport*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qib_ctxtdata*, align 8
  %9 = alloca %struct.rvt_swqe*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %5, align 8
  store %struct.qib_ibport* %1, %struct.qib_ibport** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.qib_ctxtdata* %3, %struct.qib_ctxtdata** %8, align 8
  %10 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %11 = call i32 @rvt_stop_rc_timers(%struct.rvt_qp* %10)
  %12 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %13 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %14 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp* %12, i32 %15)
  store %struct.rvt_swqe* %16, %struct.rvt_swqe** %9, align 8
  br label %17

17:                                               ; preds = %46, %4
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.rvt_swqe*, %struct.rvt_swqe** %9, align 8
  %20 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @qib_cmp24(i32 %18, i32 %21)
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %51

24:                                               ; preds = %17
  %25 = load %struct.rvt_swqe*, %struct.rvt_swqe** %9, align 8
  %26 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IB_WR_RDMA_READ, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %45, label %31

31:                                               ; preds = %24
  %32 = load %struct.rvt_swqe*, %struct.rvt_swqe** %9, align 8
  %33 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @IB_WR_ATOMIC_CMP_AND_SWP, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %45, label %38

38:                                               ; preds = %31
  %39 = load %struct.rvt_swqe*, %struct.rvt_swqe** %9, align 8
  %40 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @IB_WR_ATOMIC_FETCH_AND_ADD, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %38, %31, %24
  br label %51

46:                                               ; preds = %38
  %47 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %48 = load %struct.rvt_swqe*, %struct.rvt_swqe** %9, align 8
  %49 = load %struct.qib_ibport*, %struct.qib_ibport** %6, align 8
  %50 = call %struct.rvt_swqe* @do_rc_completion(%struct.rvt_qp* %47, %struct.rvt_swqe* %48, %struct.qib_ibport* %49)
  store %struct.rvt_swqe* %50, %struct.rvt_swqe** %9, align 8
  br label %17

51:                                               ; preds = %45, %17
  %52 = load %struct.qib_ibport*, %struct.qib_ibport** %6, align 8
  %53 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* @RVT_R_RDMAR_SEQ, align 4
  %58 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %59 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %63 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %64 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 1
  %67 = call i32 @qib_restart_rc(%struct.rvt_qp* %62, i64 %66, i32 0)
  %68 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %69 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %68, i32 0, i32 0
  %70 = call i64 @list_empty(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %51
  %73 = load i32, i32* @RVT_R_RSP_SEND, align 4
  %74 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %75 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %79 = call i32 @rvt_get_qp(%struct.rvt_qp* %78)
  %80 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %81 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %80, i32 0, i32 0
  %82 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %8, align 8
  %83 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %82, i32 0, i32 0
  %84 = call i32 @list_add_tail(i32* %81, i32* %83)
  br label %85

85:                                               ; preds = %72, %51
  ret void
}

declare dso_local i32 @rvt_stop_rc_timers(%struct.rvt_qp*) #1

declare dso_local %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp*, i32) #1

declare dso_local i64 @qib_cmp24(i32, i32) #1

declare dso_local %struct.rvt_swqe* @do_rc_completion(%struct.rvt_qp*, %struct.rvt_swqe*, %struct.qib_ibport*) #1

declare dso_local i32 @qib_restart_rc(%struct.rvt_qp*, i64, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @rvt_get_qp(%struct.rvt_qp*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
