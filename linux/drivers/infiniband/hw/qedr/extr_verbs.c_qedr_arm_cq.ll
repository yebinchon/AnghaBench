; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_arm_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_arm_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.qedr_cq = type { i64, i32, i32, i64, i32, i64 }
%struct.qedr_dev = type { i32 }

@.str = private unnamed_addr constant [60 x i8] c"warning: arm was invoked after destroy for cq %p (icid=%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QEDR_CQ_TYPE_GSI = common dso_local global i64 0, align 8
@IB_CQ_SOLICITED = common dso_local global i32 0, align 4
@DQ_UCM_ROCE_CQ_ARM_SE_CF_CMD = common dso_local global i32 0, align 4
@IB_CQ_NEXT_COMP = common dso_local global i32 0, align 4
@DQ_UCM_ROCE_CQ_ARM_CF_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qedr_arm_cq(%struct.ib_cq* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qedr_cq*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qedr_dev*, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %10 = call %struct.qedr_cq* @get_qedr_cq(%struct.ib_cq* %9)
  store %struct.qedr_cq* %10, %struct.qedr_cq** %6, align 8
  %11 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %12 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.qedr_dev* @get_qedr_dev(i32 %13)
  store %struct.qedr_dev* %14, %struct.qedr_dev** %8, align 8
  %15 = load %struct.qedr_cq*, %struct.qedr_cq** %6, align 8
  %16 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.qedr_dev*, %struct.qedr_dev** %8, align 8
  %21 = load %struct.qedr_cq*, %struct.qedr_cq** %6, align 8
  %22 = load %struct.qedr_cq*, %struct.qedr_cq** %6, align 8
  %23 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @DP_ERR(%struct.qedr_dev* %20, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), %struct.qedr_cq* %21, i32 %24)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %77

28:                                               ; preds = %2
  %29 = load %struct.qedr_cq*, %struct.qedr_cq** %6, align 8
  %30 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @QEDR_CQ_TYPE_GSI, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %77

35:                                               ; preds = %28
  %36 = load %struct.qedr_cq*, %struct.qedr_cq** %6, align 8
  %37 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %36, i32 0, i32 1
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load %struct.qedr_cq*, %struct.qedr_cq** %6, align 8
  %41 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %40, i32 0, i32 2
  store i32 0, i32* %41, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @IB_CQ_SOLICITED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %35
  %47 = load i32, i32* @DQ_UCM_ROCE_CQ_ARM_SE_CF_CMD, align 4
  %48 = load %struct.qedr_cq*, %struct.qedr_cq** %6, align 8
  %49 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %46, %35
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @IB_CQ_NEXT_COMP, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i32, i32* @DQ_UCM_ROCE_CQ_ARM_CF_CMD, align 4
  %59 = load %struct.qedr_cq*, %struct.qedr_cq** %6, align 8
  %60 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %57, %52
  %64 = load %struct.qedr_cq*, %struct.qedr_cq** %6, align 8
  %65 = load %struct.qedr_cq*, %struct.qedr_cq** %6, align 8
  %66 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %67, 1
  %69 = load %struct.qedr_cq*, %struct.qedr_cq** %6, align 8
  %70 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @doorbell_cq(%struct.qedr_cq* %64, i64 %68, i32 %71)
  %73 = load %struct.qedr_cq*, %struct.qedr_cq** %6, align 8
  %74 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %73, i32 0, i32 1
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %63, %34, %19
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.qedr_cq* @get_qedr_cq(%struct.ib_cq*) #1

declare dso_local %struct.qedr_dev* @get_qedr_dev(i32) #1

declare dso_local i32 @DP_ERR(%struct.qedr_dev*, i8*, %struct.qedr_cq*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @doorbell_cq(%struct.qedr_cq*, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
