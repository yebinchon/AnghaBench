; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_qm_poll_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_qm_poll_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_qp = type { %struct.TYPE_2__, i32, %struct.qm_cqe*, i64, i32 (%struct.hisi_qp*, i64)* }
%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.qm_cqe = type { i32 }
%struct.hisi_qm = type { i32 }

@QM_DOORBELL_CMD_CQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_qp*, %struct.hisi_qm*)* @qm_poll_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qm_poll_qp(%struct.hisi_qp* %0, %struct.hisi_qm* %1) #0 {
  %3 = alloca %struct.hisi_qp*, align 8
  %4 = alloca %struct.hisi_qm*, align 8
  %5 = alloca %struct.qm_cqe*, align 8
  store %struct.hisi_qp* %0, %struct.hisi_qp** %3, align 8
  store %struct.hisi_qm* %1, %struct.hisi_qm** %4, align 8
  %6 = load %struct.hisi_qp*, %struct.hisi_qp** %3, align 8
  %7 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %6, i32 0, i32 2
  %8 = load %struct.qm_cqe*, %struct.qm_cqe** %7, align 8
  %9 = load %struct.hisi_qp*, %struct.hisi_qp** %3, align 8
  %10 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.qm_cqe, %struct.qm_cqe* %8, i64 %13
  store %struct.qm_cqe* %14, %struct.qm_cqe** %5, align 8
  %15 = load %struct.hisi_qp*, %struct.hisi_qp** %3, align 8
  %16 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %15, i32 0, i32 4
  %17 = load i32 (%struct.hisi_qp*, i64)*, i32 (%struct.hisi_qp*, i64)** %16, align 8
  %18 = icmp ne i32 (%struct.hisi_qp*, i64)* %17, null
  br i1 %18, label %19, label %83

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %28, %19
  %21 = load %struct.qm_cqe*, %struct.qm_cqe** %5, align 8
  %22 = call i64 @QM_CQE_PHASE(%struct.qm_cqe* %21)
  %23 = load %struct.hisi_qp*, %struct.hisi_qp** %3, align 8
  %24 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %22, %26
  br i1 %27, label %28, label %72

28:                                               ; preds = %20
  %29 = call i32 (...) @dma_rmb()
  %30 = load %struct.hisi_qp*, %struct.hisi_qp** %3, align 8
  %31 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %30, i32 0, i32 4
  %32 = load i32 (%struct.hisi_qp*, i64)*, i32 (%struct.hisi_qp*, i64)** %31, align 8
  %33 = load %struct.hisi_qp*, %struct.hisi_qp** %3, align 8
  %34 = load %struct.hisi_qp*, %struct.hisi_qp** %3, align 8
  %35 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.hisi_qm*, %struct.hisi_qm** %4, align 8
  %38 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.qm_cqe*, %struct.qm_cqe** %5, align 8
  %41 = getelementptr inbounds %struct.qm_cqe, %struct.qm_cqe* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %39, %42
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %36, %44
  %46 = call i32 %32(%struct.hisi_qp* %33, i64 %45)
  %47 = load %struct.hisi_qp*, %struct.hisi_qp** %3, align 8
  %48 = call i32 @qm_cq_head_update(%struct.hisi_qp* %47)
  %49 = load %struct.hisi_qp*, %struct.hisi_qp** %3, align 8
  %50 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %49, i32 0, i32 2
  %51 = load %struct.qm_cqe*, %struct.qm_cqe** %50, align 8
  %52 = load %struct.hisi_qp*, %struct.hisi_qp** %3, align 8
  %53 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.qm_cqe, %struct.qm_cqe* %51, i64 %56
  store %struct.qm_cqe* %57, %struct.qm_cqe** %5, align 8
  %58 = load %struct.hisi_qm*, %struct.hisi_qm** %4, align 8
  %59 = load %struct.hisi_qp*, %struct.hisi_qp** %3, align 8
  %60 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @QM_DOORBELL_CMD_CQ, align 4
  %63 = load %struct.hisi_qp*, %struct.hisi_qp** %3, align 8
  %64 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @qm_db(%struct.hisi_qm* %58, i32 %61, i32 %62, i32 %66, i32 0)
  %68 = load %struct.hisi_qp*, %struct.hisi_qp** %3, align 8
  %69 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = call i32 @atomic_dec(i32* %70)
  br label %20

72:                                               ; preds = %20
  %73 = load %struct.hisi_qm*, %struct.hisi_qm** %4, align 8
  %74 = load %struct.hisi_qp*, %struct.hisi_qp** %3, align 8
  %75 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @QM_DOORBELL_CMD_CQ, align 4
  %78 = load %struct.hisi_qp*, %struct.hisi_qp** %3, align 8
  %79 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @qm_db(%struct.hisi_qm* %73, i32 %76, i32 %77, i32 %81, i32 1)
  br label %83

83:                                               ; preds = %72, %2
  ret void
}

declare dso_local i64 @QM_CQE_PHASE(%struct.qm_cqe*) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i32 @qm_cq_head_update(%struct.hisi_qp*) #1

declare dso_local i32 @qm_db(%struct.hisi_qm*, i32, i32, i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
