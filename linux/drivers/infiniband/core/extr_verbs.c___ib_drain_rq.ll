; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c___ib_drain_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c___ib_drain_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { %struct.ib_cq* }
%struct.ib_cq = type { i64 }
%struct.ib_qp_attr = type { i32 }
%struct.ib_drain_cqe = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ib_recv_wr = type { %struct.TYPE_2__* }

@IB_QPS_ERR = common dso_local global i32 0, align 4
@IB_QP_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to drain recv queue: %d\0A\00", align 1
@ib_drain_qp_done = common dso_local global i32 0, align 4
@IB_POLL_DIRECT = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_qp*)* @__ib_drain_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ib_drain_rq(%struct.ib_qp* %0) #0 {
  %2 = alloca %struct.ib_qp*, align 8
  %3 = alloca %struct.ib_cq*, align 8
  %4 = alloca %struct.ib_qp_attr, align 4
  %5 = alloca %struct.ib_drain_cqe, align 4
  %6 = alloca %struct.ib_recv_wr, align 8
  %7 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %2, align 8
  %8 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %9 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %8, i32 0, i32 0
  %10 = load %struct.ib_cq*, %struct.ib_cq** %9, align 8
  store %struct.ib_cq* %10, %struct.ib_cq** %3, align 8
  %11 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %4, i32 0, i32 0
  %12 = load i32, i32* @IB_QPS_ERR, align 4
  store i32 %12, i32* %11, align 4
  %13 = bitcast %struct.ib_recv_wr* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 8, i1 false)
  %14 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %15 = load i32, i32* @IB_QP_STATE, align 4
  %16 = call i32 @ib_modify_qp(%struct.ib_qp* %14, %struct.ib_qp_attr* %4, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @WARN_ONCE(i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %59

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.ib_drain_cqe, %struct.ib_drain_cqe* %5, i32 0, i32 1
  %25 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %6, i32 0, i32 0
  store %struct.TYPE_2__* %24, %struct.TYPE_2__** %25, align 8
  %26 = load i32, i32* @ib_drain_qp_done, align 4
  %27 = getelementptr inbounds %struct.ib_drain_cqe, %struct.ib_drain_cqe* %5, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = getelementptr inbounds %struct.ib_drain_cqe, %struct.ib_drain_cqe* %5, i32 0, i32 0
  %30 = call i32 @init_completion(i32* %29)
  %31 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %32 = call i32 @ib_post_recv(%struct.ib_qp* %31, %struct.ib_recv_wr* %6, i32* null)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %23
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @WARN_ONCE(i32 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %59

39:                                               ; preds = %23
  %40 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %41 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @IB_POLL_DIRECT, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %52, %45
  %47 = getelementptr inbounds %struct.ib_drain_cqe, %struct.ib_drain_cqe* %5, i32 0, i32 0
  %48 = load i32, i32* @HZ, align 4
  %49 = sdiv i32 %48, 10
  %50 = call i64 @wait_for_completion_timeout(i32* %47, i32 %49)
  %51 = icmp sle i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %54 = call i32 @ib_process_cq_direct(%struct.ib_cq* %53, i32 -1)
  br label %46

55:                                               ; preds = %46
  br label %59

56:                                               ; preds = %39
  %57 = getelementptr inbounds %struct.ib_drain_cqe, %struct.ib_drain_cqe* %5, i32 0, i32 0
  %58 = call i32 @wait_for_completion(i32* %57)
  br label %59

59:                                               ; preds = %19, %35, %56, %55
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ib_modify_qp(%struct.ib_qp*, %struct.ib_qp_attr*, i32) #2

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #2

declare dso_local i32 @init_completion(i32*) #2

declare dso_local i32 @ib_post_recv(%struct.ib_qp*, %struct.ib_recv_wr*, i32*) #2

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #2

declare dso_local i32 @ib_process_cq_direct(%struct.ib_cq*, i32) #2

declare dso_local i32 @wait_for_completion(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
