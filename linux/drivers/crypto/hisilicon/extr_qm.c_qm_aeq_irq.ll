; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_qm_aeq_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_qm_aeq_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_qm = type { %struct.TYPE_4__, %struct.qm_aeqe*, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.qm_aeqe = type { i64 }
%struct.TYPE_3__ = type { i32 }

@QM_VF_AEQ_INT_SOURCE = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@QM_AEQE_TYPE_SHIFT = common dso_local global i64 0, align 8
@qm_fifo_overflow = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"%s overflow\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"unknown error type %d\0A\00", align 1
@QM_Q_DEPTH = common dso_local global i32 0, align 4
@QM_DOORBELL_CMD_AEQ = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @qm_aeq_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qm_aeq_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hisi_qm*, align 8
  %7 = alloca %struct.qm_aeqe*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.hisi_qm*
  store %struct.hisi_qm* %10, %struct.hisi_qm** %6, align 8
  %11 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %12 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %11, i32 0, i32 1
  %13 = load %struct.qm_aeqe*, %struct.qm_aeqe** %12, align 8
  %14 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %15 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.qm_aeqe, %struct.qm_aeqe* %13, i64 %18
  store %struct.qm_aeqe* %19, %struct.qm_aeqe** %7, align 8
  %20 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %21 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @QM_VF_AEQ_INT_SOURCE, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl(i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @IRQ_NONE, align 4
  store i32 %28, i32* %3, align 4
  br label %108

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %98, %29
  %31 = load %struct.qm_aeqe*, %struct.qm_aeqe** %7, align 8
  %32 = call i32 @QM_AEQE_PHASE(%struct.qm_aeqe* %31)
  %33 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %34 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %32, %36
  br i1 %37, label %38, label %106

38:                                               ; preds = %30
  %39 = load %struct.qm_aeqe*, %struct.qm_aeqe** %7, align 8
  %40 = getelementptr inbounds %struct.qm_aeqe, %struct.qm_aeqe* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @QM_AEQE_TYPE_SHIFT, align 8
  %43 = lshr i64 %41, %42
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64*, i64** @qm_fifo_overflow, align 8
  %46 = call i64 @ARRAY_SIZE(i64* %45)
  %47 = icmp ult i64 %44, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %38
  %49 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %50 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %49, i32 0, i32 2
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64*, i64** @qm_fifo_overflow, align 8
  %54 = load i64, i64* %8, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %56)
  br label %65

58:                                               ; preds = %38
  %59 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %60 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %59, i32 0, i32 2
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @dev_err(i32* %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %63)
  br label %65

65:                                               ; preds = %58, %48
  %66 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %67 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @QM_Q_DEPTH, align 4
  %71 = sub nsw i32 %70, 1
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %90

73:                                               ; preds = %65
  %74 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %75 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %82 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 4
  %84 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %85 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %84, i32 0, i32 1
  %86 = load %struct.qm_aeqe*, %struct.qm_aeqe** %85, align 8
  store %struct.qm_aeqe* %86, %struct.qm_aeqe** %7, align 8
  %87 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %88 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i32 0, i32* %89, align 8
  br label %98

90:                                               ; preds = %65
  %91 = load %struct.qm_aeqe*, %struct.qm_aeqe** %7, align 8
  %92 = getelementptr inbounds %struct.qm_aeqe, %struct.qm_aeqe* %91, i32 1
  store %struct.qm_aeqe* %92, %struct.qm_aeqe** %7, align 8
  %93 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %94 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %90, %73
  %99 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %100 = load i32, i32* @QM_DOORBELL_CMD_AEQ, align 4
  %101 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %102 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @qm_db(%struct.hisi_qm* %99, i32 0, i32 %100, i32 %104, i32 0)
  br label %30

106:                                              ; preds = %30
  %107 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %106, %27
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @QM_AEQE_PHASE(%struct.qm_aeqe*) #1

declare dso_local i64 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @qm_db(%struct.hisi_qm*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
