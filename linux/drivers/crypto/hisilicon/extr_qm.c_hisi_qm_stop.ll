; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_hisi_qm_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_hisi_qm_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_qm = type { i32, i64, %struct.hisi_qp**, i64, %struct.TYPE_2__* }
%struct.hisi_qp = type { i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@QM_VF_EQ_INT_MASK = common dso_local global i64 0, align 8
@QM_VF_AEQ_INT_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Failed to stop qp%d!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@QM_HW_PF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"Failed to set vft!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hisi_qm_stop(%struct.hisi_qm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hisi_qm*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.hisi_qp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hisi_qm* %0, %struct.hisi_qm** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %9 = icmp ne %struct.hisi_qm* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %12 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %11, i32 0, i32 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %10, %1
  %16 = call i32 @WARN_ON(i32 1)
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %85

19:                                               ; preds = %10
  %20 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %21 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %20, i32 0, i32 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.device* %23, %struct.device** %4, align 8
  %24 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %25 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @QM_VF_EQ_INT_MASK, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i32 1, i64 %28)
  %30 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %31 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @QM_VF_AEQ_INT_MASK, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 1, i64 %34)
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %65, %19
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %39 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %68

42:                                               ; preds = %36
  %43 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %44 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %43, i32 0, i32 2
  %45 = load %struct.hisi_qp**, %struct.hisi_qp*** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.hisi_qp*, %struct.hisi_qp** %45, i64 %47
  %49 = load %struct.hisi_qp*, %struct.hisi_qp** %48, align 8
  store %struct.hisi_qp* %49, %struct.hisi_qp** %5, align 8
  %50 = load %struct.hisi_qp*, %struct.hisi_qp** %5, align 8
  %51 = icmp ne %struct.hisi_qp* %50, null
  br i1 %51, label %52, label %64

52:                                               ; preds = %42
  %53 = load %struct.hisi_qp*, %struct.hisi_qp** %5, align 8
  %54 = call i32 @hisi_qm_stop_qp(%struct.hisi_qp* %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @EBUSY, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %85

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63, %42
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %36

68:                                               ; preds = %36
  %69 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %70 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @QM_HW_PF, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %68
  %75 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %76 = call i32 @hisi_qm_set_vft(%struct.hisi_qm* %75, i32 0, i32 0, i32 0)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load %struct.device*, %struct.device** %4, align 8
  %81 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %80, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %74
  br label %83

83:                                               ; preds = %82, %68
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %83, %57, %15
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @hisi_qm_stop_qp(%struct.hisi_qp*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @hisi_qm_set_vft(%struct.hisi_qm*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
