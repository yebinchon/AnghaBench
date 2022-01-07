; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_update_free_srq_cqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_update_free_srq_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_wc = type { i32 }
%struct.ocrdma_cqe = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ocrdma_qp = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ocrdma_srq = type { %struct.TYPE_6__, i32, i32* }
%struct.TYPE_6__ = type { i32 }

@OCRDMA_CQE_BUFTAG_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_wc*, %struct.ocrdma_cqe*, %struct.ocrdma_qp*)* @ocrdma_update_free_srq_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocrdma_update_free_srq_cqe(%struct.ib_wc* %0, %struct.ocrdma_cqe* %1, %struct.ocrdma_qp* %2) #0 {
  %4 = alloca %struct.ib_wc*, align 8
  %5 = alloca %struct.ocrdma_cqe*, align 8
  %6 = alloca %struct.ocrdma_qp*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ocrdma_srq*, align 8
  %9 = alloca i32, align 4
  store %struct.ib_wc* %0, %struct.ib_wc** %4, align 8
  store %struct.ocrdma_cqe* %1, %struct.ocrdma_cqe** %5, align 8
  store %struct.ocrdma_qp* %2, %struct.ocrdma_qp** %6, align 8
  %10 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %11 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.ocrdma_srq* @get_ocrdma_srq(i32 %13)
  store %struct.ocrdma_srq* %14, %struct.ocrdma_srq** %8, align 8
  %15 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %5, align 8
  %16 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le32_to_cpu(i32 %18)
  %20 = load i32, i32* @OCRDMA_CQE_BUFTAG_SHIFT, align 4
  %21 = ashr i32 %19, %20
  %22 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %8, align 8
  %23 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %21, %25
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 1
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %8, align 8
  %32 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %39 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %8, align 8
  %41 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %40, i32 0, i32 1
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sub nsw i32 %45, 1
  %47 = call i32 @ocrdma_srq_toggle_bit(%struct.ocrdma_srq* %44, i32 %46)
  %48 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %8, align 8
  %49 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %48, i32 0, i32 1
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  %52 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %8, align 8
  %53 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %52, i32 0, i32 0
  %54 = call i32 @ocrdma_hwq_inc_tail(%struct.TYPE_6__* %53)
  ret void
}

declare dso_local %struct.ocrdma_srq* @get_ocrdma_srq(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ocrdma_srq_toggle_bit(%struct.ocrdma_srq*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ocrdma_hwq_inc_tail(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
