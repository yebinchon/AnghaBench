; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_rc.c_rdma_seq_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_rc.c_rdma_seq_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i32, i32, i64, i32, i32 }
%struct.hfi1_ibport = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.hfi1_ctxtdata = type { i32 }
%struct.rvt_swqe = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }

@IB_WR_RDMA_READ = common dso_local global i64 0, align 8
@IB_WR_TID_RDMA_READ = common dso_local global i64 0, align 8
@IB_WR_TID_RDMA_WRITE = common dso_local global i64 0, align 8
@IB_WR_ATOMIC_CMP_AND_SWP = common dso_local global i64 0, align 8
@IB_WR_ATOMIC_FETCH_AND_ADD = common dso_local global i64 0, align 8
@RVT_R_RDMAR_SEQ = common dso_local global i32 0, align 4
@RVT_R_RSP_SEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvt_qp*, %struct.hfi1_ibport*, i32, %struct.hfi1_ctxtdata*)* @rdma_seq_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdma_seq_err(%struct.rvt_qp* %0, %struct.hfi1_ibport* %1, i32 %2, %struct.hfi1_ctxtdata* %3) #0 {
  %5 = alloca %struct.rvt_qp*, align 8
  %6 = alloca %struct.hfi1_ibport*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hfi1_ctxtdata*, align 8
  %9 = alloca %struct.rvt_swqe*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %5, align 8
  store %struct.hfi1_ibport* %1, %struct.hfi1_ibport** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.hfi1_ctxtdata* %3, %struct.hfi1_ctxtdata** %8, align 8
  %10 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %11 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %10, i32 0, i32 4
  %12 = call i32 @lockdep_assert_held(i32* %11)
  %13 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %14 = call i32 @rvt_stop_rc_timers(%struct.rvt_qp* %13)
  %15 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %16 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %17 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp* %15, i32 %18)
  store %struct.rvt_swqe* %19, %struct.rvt_swqe** %9, align 8
  br label %20

20:                                               ; preds = %63, %4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.rvt_swqe*, %struct.rvt_swqe** %9, align 8
  %23 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @cmp_psn(i32 %21, i32 %24)
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %68

27:                                               ; preds = %20
  %28 = load %struct.rvt_swqe*, %struct.rvt_swqe** %9, align 8
  %29 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IB_WR_RDMA_READ, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %62, label %34

34:                                               ; preds = %27
  %35 = load %struct.rvt_swqe*, %struct.rvt_swqe** %9, align 8
  %36 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @IB_WR_TID_RDMA_READ, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %62, label %41

41:                                               ; preds = %34
  %42 = load %struct.rvt_swqe*, %struct.rvt_swqe** %9, align 8
  %43 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @IB_WR_TID_RDMA_WRITE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %62, label %48

48:                                               ; preds = %41
  %49 = load %struct.rvt_swqe*, %struct.rvt_swqe** %9, align 8
  %50 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @IB_WR_ATOMIC_CMP_AND_SWP, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %62, label %55

55:                                               ; preds = %48
  %56 = load %struct.rvt_swqe*, %struct.rvt_swqe** %9, align 8
  %57 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @IB_WR_ATOMIC_FETCH_AND_ADD, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %55, %48, %41, %34, %27
  br label %68

63:                                               ; preds = %55
  %64 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %65 = load %struct.rvt_swqe*, %struct.rvt_swqe** %9, align 8
  %66 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %6, align 8
  %67 = call %struct.rvt_swqe* @do_rc_completion(%struct.rvt_qp* %64, %struct.rvt_swqe* %65, %struct.hfi1_ibport* %66)
  store %struct.rvt_swqe* %67, %struct.rvt_swqe** %9, align 8
  br label %20

68:                                               ; preds = %62, %20
  %69 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %6, align 8
  %70 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* @RVT_R_RDMAR_SEQ, align 4
  %75 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %76 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %80 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %81 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, 1
  %84 = call i32 @hfi1_restart_rc(%struct.rvt_qp* %79, i64 %83, i32 0)
  %85 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %86 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %85, i32 0, i32 0
  %87 = call i64 @list_empty(i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %68
  %90 = load i32, i32* @RVT_R_RSP_SEND, align 4
  %91 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %92 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %96 = call i32 @rvt_get_qp(%struct.rvt_qp* %95)
  %97 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %98 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %97, i32 0, i32 0
  %99 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %8, align 8
  %100 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %99, i32 0, i32 0
  %101 = call i32 @list_add_tail(i32* %98, i32* %100)
  br label %102

102:                                              ; preds = %89, %68
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @rvt_stop_rc_timers(%struct.rvt_qp*) #1

declare dso_local %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp*, i32) #1

declare dso_local i64 @cmp_psn(i32, i32) #1

declare dso_local %struct.rvt_swqe* @do_rc_completion(%struct.rvt_qp*, %struct.rvt_swqe*, %struct.hfi1_ibport*) #1

declare dso_local i32 @hfi1_restart_rc(%struct.rvt_qp*, i64, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @rvt_get_qp(%struct.rvt_qp*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
