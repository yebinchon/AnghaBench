; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cq.c_c4iw_poll_cq_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cq.c_c4iw_poll_cq_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_cq = type { i32, i32 }
%struct.ib_wc = type { i32 }
%struct.c4iw_srq = type { i32 }
%struct.c4iw_qp = type { i32, %struct.c4iw_srq* }
%struct.t4_cqe = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c4iw_cq*, %struct.ib_wc*)* @c4iw_poll_cq_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c4iw_poll_cq_one(%struct.c4iw_cq* %0, %struct.ib_wc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.c4iw_cq*, align 8
  %5 = alloca %struct.ib_wc*, align 8
  %6 = alloca %struct.c4iw_srq*, align 8
  %7 = alloca %struct.c4iw_qp*, align 8
  %8 = alloca %struct.t4_cqe*, align 8
  %9 = alloca i32, align 4
  store %struct.c4iw_cq* %0, %struct.c4iw_cq** %4, align 8
  store %struct.ib_wc* %1, %struct.ib_wc** %5, align 8
  store %struct.c4iw_srq* null, %struct.c4iw_srq** %6, align 8
  store %struct.c4iw_qp* null, %struct.c4iw_qp** %7, align 8
  %10 = load %struct.c4iw_cq*, %struct.c4iw_cq** %4, align 8
  %11 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %10, i32 0, i32 1
  %12 = call i32 @t4_next_cqe(i32* %11, %struct.t4_cqe** %8)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %3, align 4
  br label %61

17:                                               ; preds = %2
  %18 = load %struct.c4iw_cq*, %struct.c4iw_cq** %4, align 8
  %19 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.t4_cqe*, %struct.t4_cqe** %8, align 8
  %22 = call i32 @CQE_QPID(%struct.t4_cqe* %21)
  %23 = call %struct.c4iw_qp* @get_qhp(i32 %20, i32 %22)
  store %struct.c4iw_qp* %23, %struct.c4iw_qp** %7, align 8
  %24 = load %struct.c4iw_qp*, %struct.c4iw_qp** %7, align 8
  %25 = icmp ne %struct.c4iw_qp* %24, null
  br i1 %25, label %26, label %55

26:                                               ; preds = %17
  %27 = load %struct.c4iw_qp*, %struct.c4iw_qp** %7, align 8
  %28 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %27, i32 0, i32 0
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load %struct.c4iw_qp*, %struct.c4iw_qp** %7, align 8
  %31 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %30, i32 0, i32 1
  %32 = load %struct.c4iw_srq*, %struct.c4iw_srq** %31, align 8
  store %struct.c4iw_srq* %32, %struct.c4iw_srq** %6, align 8
  %33 = load %struct.c4iw_srq*, %struct.c4iw_srq** %6, align 8
  %34 = icmp ne %struct.c4iw_srq* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load %struct.c4iw_srq*, %struct.c4iw_srq** %6, align 8
  %37 = getelementptr inbounds %struct.c4iw_srq, %struct.c4iw_srq* %36, i32 0, i32 0
  %38 = call i32 @spin_lock(i32* %37)
  br label %39

39:                                               ; preds = %35, %26
  %40 = load %struct.c4iw_cq*, %struct.c4iw_cq** %4, align 8
  %41 = load %struct.c4iw_qp*, %struct.c4iw_qp** %7, align 8
  %42 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %43 = load %struct.c4iw_srq*, %struct.c4iw_srq** %6, align 8
  %44 = call i32 @__c4iw_poll_cq_one(%struct.c4iw_cq* %40, %struct.c4iw_qp* %41, %struct.ib_wc* %42, %struct.c4iw_srq* %43)
  store i32 %44, i32* %9, align 4
  %45 = load %struct.c4iw_qp*, %struct.c4iw_qp** %7, align 8
  %46 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load %struct.c4iw_srq*, %struct.c4iw_srq** %6, align 8
  %49 = icmp ne %struct.c4iw_srq* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %39
  %51 = load %struct.c4iw_srq*, %struct.c4iw_srq** %6, align 8
  %52 = getelementptr inbounds %struct.c4iw_srq, %struct.c4iw_srq* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock(i32* %52)
  br label %54

54:                                               ; preds = %50, %39
  br label %59

55:                                               ; preds = %17
  %56 = load %struct.c4iw_cq*, %struct.c4iw_cq** %4, align 8
  %57 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %58 = call i32 @__c4iw_poll_cq_one(%struct.c4iw_cq* %56, %struct.c4iw_qp* null, %struct.ib_wc* %57, %struct.c4iw_srq* null)
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %55, %54
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %15
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @t4_next_cqe(i32*, %struct.t4_cqe**) #1

declare dso_local %struct.c4iw_qp* @get_qhp(i32, i32) #1

declare dso_local i32 @CQE_QPID(%struct.t4_cqe*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__c4iw_poll_cq_one(%struct.c4iw_cq*, %struct.c4iw_qp*, %struct.ib_wc*, %struct.c4iw_srq*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
