; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb3/extr_iwch_cq.c_iwch_poll_cq_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb3/extr_iwch_cq.c_iwch_poll_cq_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwch_dev = type { i32 }
%struct.iwch_cq = type { i32 }
%struct.ib_wc = type { i32 }
%struct.iwch_qp = type { i32 }
%struct.t3_cqe = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwch_dev*, %struct.iwch_cq*, %struct.ib_wc*)* @iwch_poll_cq_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwch_poll_cq_one(%struct.iwch_dev* %0, %struct.iwch_cq* %1, %struct.ib_wc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwch_dev*, align 8
  %6 = alloca %struct.iwch_cq*, align 8
  %7 = alloca %struct.ib_wc*, align 8
  %8 = alloca %struct.iwch_qp*, align 8
  %9 = alloca %struct.t3_cqe*, align 8
  %10 = alloca i32, align 4
  store %struct.iwch_dev* %0, %struct.iwch_dev** %5, align 8
  store %struct.iwch_cq* %1, %struct.iwch_cq** %6, align 8
  store %struct.ib_wc* %2, %struct.ib_wc** %7, align 8
  %11 = load %struct.iwch_cq*, %struct.iwch_cq** %6, align 8
  %12 = getelementptr inbounds %struct.iwch_cq, %struct.iwch_cq* %11, i32 0, i32 0
  %13 = call %struct.t3_cqe* @cxio_next_cqe(i32* %12)
  store %struct.t3_cqe* %13, %struct.t3_cqe** %9, align 8
  %14 = load %struct.t3_cqe*, %struct.t3_cqe** %9, align 8
  %15 = icmp ne %struct.t3_cqe* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %45

17:                                               ; preds = %3
  %18 = load %struct.iwch_dev*, %struct.iwch_dev** %5, align 8
  %19 = load %struct.t3_cqe*, %struct.t3_cqe** %9, align 8
  %20 = getelementptr inbounds %struct.t3_cqe, %struct.t3_cqe* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @CQE_QPID(i32 %21)
  %23 = call %struct.iwch_qp* @get_qhp(%struct.iwch_dev* %18, i32 %22)
  store %struct.iwch_qp* %23, %struct.iwch_qp** %8, align 8
  %24 = load %struct.iwch_qp*, %struct.iwch_qp** %8, align 8
  %25 = icmp ne %struct.iwch_qp* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %17
  %27 = load %struct.iwch_qp*, %struct.iwch_qp** %8, align 8
  %28 = getelementptr inbounds %struct.iwch_qp, %struct.iwch_qp* %27, i32 0, i32 0
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load %struct.iwch_dev*, %struct.iwch_dev** %5, align 8
  %31 = load %struct.iwch_cq*, %struct.iwch_cq** %6, align 8
  %32 = load %struct.iwch_qp*, %struct.iwch_qp** %8, align 8
  %33 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %34 = call i32 @__iwch_poll_cq_one(%struct.iwch_dev* %30, %struct.iwch_cq* %31, %struct.iwch_qp* %32, %struct.ib_wc* %33)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.iwch_qp*, %struct.iwch_qp** %8, align 8
  %36 = getelementptr inbounds %struct.iwch_qp, %struct.iwch_qp* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock(i32* %36)
  br label %43

38:                                               ; preds = %17
  %39 = load %struct.iwch_dev*, %struct.iwch_dev** %5, align 8
  %40 = load %struct.iwch_cq*, %struct.iwch_cq** %6, align 8
  %41 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %42 = call i32 @__iwch_poll_cq_one(%struct.iwch_dev* %39, %struct.iwch_cq* %40, %struct.iwch_qp* null, %struct.ib_wc* %41)
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %38, %26
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %16
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.t3_cqe* @cxio_next_cqe(i32*) #1

declare dso_local %struct.iwch_qp* @get_qhp(%struct.iwch_dev*, i32) #1

declare dso_local i32 @CQE_QPID(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__iwch_poll_cq_one(%struct.iwch_dev*, %struct.iwch_cq*, %struct.iwch_qp*, %struct.ib_wc*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
