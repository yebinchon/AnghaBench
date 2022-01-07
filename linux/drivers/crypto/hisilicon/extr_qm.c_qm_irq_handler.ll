; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_qm_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_qm_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_qm = type { %struct.TYPE_2__, %struct.qm_eqe* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.qm_eqe = type { i32 }
%struct.hisi_qp = type { i32, i32 }

@QM_Q_DEPTH = common dso_local global i32 0, align 4
@QM_DOORBELL_CMD_EQ = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @qm_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qm_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hisi_qm*, align 8
  %6 = alloca %struct.qm_eqe*, align 8
  %7 = alloca %struct.hisi_qp*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.hisi_qm*
  store %struct.hisi_qm* %10, %struct.hisi_qm** %5, align 8
  %11 = load %struct.hisi_qm*, %struct.hisi_qm** %5, align 8
  %12 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %11, i32 0, i32 1
  %13 = load %struct.qm_eqe*, %struct.qm_eqe** %12, align 8
  %14 = load %struct.hisi_qm*, %struct.hisi_qm** %5, align 8
  %15 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.qm_eqe, %struct.qm_eqe* %13, i64 %18
  store %struct.qm_eqe* %19, %struct.qm_eqe** %6, align 8
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %90, %2
  %21 = load %struct.qm_eqe*, %struct.qm_eqe** %6, align 8
  %22 = call i32 @QM_EQE_PHASE(%struct.qm_eqe* %21)
  %23 = load %struct.hisi_qm*, %struct.hisi_qm** %5, align 8
  %24 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %22, %26
  br i1 %27, label %28, label %91

28:                                               ; preds = %20
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  %31 = load %struct.hisi_qm*, %struct.hisi_qm** %5, align 8
  %32 = load %struct.qm_eqe*, %struct.qm_eqe** %6, align 8
  %33 = call %struct.hisi_qp* @qm_to_hisi_qp(%struct.hisi_qm* %31, %struct.qm_eqe* %32)
  store %struct.hisi_qp* %33, %struct.hisi_qp** %7, align 8
  %34 = load %struct.hisi_qp*, %struct.hisi_qp** %7, align 8
  %35 = icmp ne %struct.hisi_qp* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %28
  %37 = load %struct.hisi_qp*, %struct.hisi_qp** %7, align 8
  %38 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.hisi_qp*, %struct.hisi_qp** %7, align 8
  %41 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %40, i32 0, i32 0
  %42 = call i32 @queue_work(i32 %39, i32* %41)
  br label %43

43:                                               ; preds = %36, %28
  %44 = load %struct.hisi_qm*, %struct.hisi_qm** %5, align 8
  %45 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @QM_Q_DEPTH, align 4
  %49 = sub nsw i32 %48, 1
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %68

51:                                               ; preds = %43
  %52 = load %struct.hisi_qm*, %struct.hisi_qm** %5, align 8
  %53 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = load %struct.hisi_qm*, %struct.hisi_qm** %5, align 8
  %60 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load %struct.hisi_qm*, %struct.hisi_qm** %5, align 8
  %63 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %62, i32 0, i32 1
  %64 = load %struct.qm_eqe*, %struct.qm_eqe** %63, align 8
  store %struct.qm_eqe* %64, %struct.qm_eqe** %6, align 8
  %65 = load %struct.hisi_qm*, %struct.hisi_qm** %5, align 8
  %66 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  br label %76

68:                                               ; preds = %43
  %69 = load %struct.qm_eqe*, %struct.qm_eqe** %6, align 8
  %70 = getelementptr inbounds %struct.qm_eqe, %struct.qm_eqe* %69, i32 1
  store %struct.qm_eqe* %70, %struct.qm_eqe** %6, align 8
  %71 = load %struct.hisi_qm*, %struct.hisi_qm** %5, align 8
  %72 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %68, %51
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @QM_Q_DEPTH, align 4
  %79 = sdiv i32 %78, 2
  %80 = sub nsw i32 %79, 1
  %81 = icmp eq i32 %77, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %76
  store i32 0, i32* %8, align 4
  %83 = load %struct.hisi_qm*, %struct.hisi_qm** %5, align 8
  %84 = load i32, i32* @QM_DOORBELL_CMD_EQ, align 4
  %85 = load %struct.hisi_qm*, %struct.hisi_qm** %5, align 8
  %86 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @qm_db(%struct.hisi_qm* %83, i32 0, i32 %84, i32 %88, i32 0)
  br label %90

90:                                               ; preds = %82, %76
  br label %20

91:                                               ; preds = %20
  %92 = load %struct.hisi_qm*, %struct.hisi_qm** %5, align 8
  %93 = load i32, i32* @QM_DOORBELL_CMD_EQ, align 4
  %94 = load %struct.hisi_qm*, %struct.hisi_qm** %5, align 8
  %95 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @qm_db(%struct.hisi_qm* %92, i32 0, i32 %93, i32 %97, i32 0)
  %99 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %99
}

declare dso_local i32 @QM_EQE_PHASE(%struct.qm_eqe*) #1

declare dso_local %struct.hisi_qp* @qm_to_hisi_qp(%struct.hisi_qm*, %struct.qm_eqe*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @qm_db(%struct.hisi_qm*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
