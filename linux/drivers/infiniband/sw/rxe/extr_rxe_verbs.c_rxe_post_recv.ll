; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_post_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_post_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_recv_wr = type { %struct.ib_recv_wr* }
%struct.rxe_qp = type { i32, %struct.TYPE_2__, i32, %struct.rxe_rq }
%struct.TYPE_2__ = type { i64, i32 }
%struct.rxe_rq = type { i32 }

@IB_QPS_INIT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@QP_STATE_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %struct.ib_recv_wr*, %struct.ib_recv_wr**)* @rxe_post_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxe_post_recv(%struct.ib_qp* %0, %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %2) #0 {
  %4 = alloca %struct.ib_qp*, align 8
  %5 = alloca %struct.ib_recv_wr*, align 8
  %6 = alloca %struct.ib_recv_wr**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rxe_qp*, align 8
  %9 = alloca %struct.rxe_rq*, align 8
  %10 = alloca i64, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %4, align 8
  store %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %5, align 8
  store %struct.ib_recv_wr** %2, %struct.ib_recv_wr*** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %12 = call %struct.rxe_qp* @to_rqp(%struct.ib_qp* %11)
  store %struct.rxe_qp* %12, %struct.rxe_qp** %8, align 8
  %13 = load %struct.rxe_qp*, %struct.rxe_qp** %8, align 8
  %14 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %13, i32 0, i32 3
  store %struct.rxe_rq* %14, %struct.rxe_rq** %9, align 8
  %15 = load %struct.rxe_qp*, %struct.rxe_qp** %8, align 8
  %16 = call i64 @qp_state(%struct.rxe_qp* %15)
  %17 = load i64, i64* @IB_QPS_INIT, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load %struct.rxe_qp*, %struct.rxe_qp** %8, align 8
  %21 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %19, %3
  %26 = phi i1 [ true, %3 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %32 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %6, align 8
  store %struct.ib_recv_wr* %31, %struct.ib_recv_wr** %32, align 8
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %85

35:                                               ; preds = %25
  %36 = load %struct.rxe_qp*, %struct.rxe_qp** %8, align 8
  %37 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %43 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %6, align 8
  store %struct.ib_recv_wr* %42, %struct.ib_recv_wr** %43, align 8
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  br label %85

46:                                               ; preds = %35
  %47 = load %struct.rxe_rq*, %struct.rxe_rq** %9, align 8
  %48 = getelementptr inbounds %struct.rxe_rq, %struct.rxe_rq* %47, i32 0, i32 0
  %49 = load i64, i64* %10, align 8
  %50 = call i32 @spin_lock_irqsave(i32* %48, i64 %49)
  br label %51

51:                                               ; preds = %64, %46
  %52 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %53 = icmp ne %struct.ib_recv_wr* %52, null
  br i1 %53, label %54, label %68

54:                                               ; preds = %51
  %55 = load %struct.rxe_rq*, %struct.rxe_rq** %9, align 8
  %56 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %57 = call i32 @post_one_recv(%struct.rxe_rq* %55, %struct.ib_recv_wr* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %63 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %6, align 8
  store %struct.ib_recv_wr* %62, %struct.ib_recv_wr** %63, align 8
  br label %68

64:                                               ; preds = %54
  %65 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %66 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %65, i32 0, i32 0
  %67 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %66, align 8
  store %struct.ib_recv_wr* %67, %struct.ib_recv_wr** %5, align 8
  br label %51

68:                                               ; preds = %61, %51
  %69 = load %struct.rxe_rq*, %struct.rxe_rq** %9, align 8
  %70 = getelementptr inbounds %struct.rxe_rq, %struct.rxe_rq* %69, i32 0, i32 0
  %71 = load i64, i64* %10, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  %73 = load %struct.rxe_qp*, %struct.rxe_qp** %8, align 8
  %74 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @QP_STATE_ERROR, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %68
  %80 = load %struct.rxe_qp*, %struct.rxe_qp** %8, align 8
  %81 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = call i32 @rxe_run_task(i32* %82, i32 1)
  br label %84

84:                                               ; preds = %79, %68
  br label %85

85:                                               ; preds = %84, %41, %30
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

declare dso_local %struct.rxe_qp* @to_rqp(%struct.ib_qp*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @qp_state(%struct.rxe_qp*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @post_one_recv(%struct.rxe_rq*, %struct.ib_recv_wr*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rxe_run_task(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
