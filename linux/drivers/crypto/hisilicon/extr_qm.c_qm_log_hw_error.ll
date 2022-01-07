; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_qm_log_hw_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_qm_log_hw_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_qm_hw_error = type { i32, i64 }
%struct.hisi_qm = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@qm_hw_error = common dso_local global %struct.hisi_qm_hw_error* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"%s [error status=0x%x] found\0A\00", align 1
@QM_DB_TIMEOUT = common dso_local global i32 0, align 4
@QM_ABNORMAL_INF01 = common dso_local global i64 0, align 8
@QM_DB_TIMEOUT_TYPE = common dso_local global i32 0, align 4
@QM_DB_TIMEOUT_TYPE_SHIFT = common dso_local global i32 0, align 4
@QM_DB_TIMEOUT_VF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"qm %s doorbell timeout in function %u\0A\00", align 1
@qm_db_timeout = common dso_local global i32* null, align 8
@QM_OF_FIFO_OF = common dso_local global i32 0, align 4
@QM_ABNORMAL_INF00 = common dso_local global i64 0, align 8
@QM_FIFO_OVERFLOW_TYPE = common dso_local global i32 0, align 4
@QM_FIFO_OVERFLOW_TYPE_SHIFT = common dso_local global i32 0, align 4
@QM_FIFO_OVERFLOW_VF = common dso_local global i32 0, align 4
@qm_fifo_overflow = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"qm %s fifo overflow in function %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"unknown error type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_qm*, i32)* @qm_log_hw_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qm_log_hw_error(%struct.hisi_qm* %0, i32 %1) #0 {
  %3 = alloca %struct.hisi_qm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hisi_qm_hw_error*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hisi_qm* %0, %struct.hisi_qm** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.hisi_qm_hw_error*, %struct.hisi_qm_hw_error** @qm_hw_error, align 8
  store %struct.hisi_qm_hw_error* %10, %struct.hisi_qm_hw_error** %5, align 8
  %11 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %12 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %6, align 8
  br label %15

15:                                               ; preds = %101, %2
  %16 = load %struct.hisi_qm_hw_error*, %struct.hisi_qm_hw_error** %5, align 8
  %17 = getelementptr inbounds %struct.hisi_qm_hw_error, %struct.hisi_qm_hw_error* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %104

20:                                               ; preds = %15
  %21 = load %struct.hisi_qm_hw_error*, %struct.hisi_qm_hw_error** %5, align 8
  %22 = getelementptr inbounds %struct.hisi_qm_hw_error, %struct.hisi_qm_hw_error* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %101

27:                                               ; preds = %20
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = load %struct.hisi_qm_hw_error*, %struct.hisi_qm_hw_error** %5, align 8
  %30 = getelementptr inbounds %struct.hisi_qm_hw_error, %struct.hisi_qm_hw_error* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.hisi_qm_hw_error*, %struct.hisi_qm_hw_error** %5, align 8
  %33 = getelementptr inbounds %struct.hisi_qm_hw_error, %struct.hisi_qm_hw_error* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %31, i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @QM_DB_TIMEOUT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %27
  %41 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %42 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @QM_ABNORMAL_INF01, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @readl(i64 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @QM_DB_TIMEOUT_TYPE, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @QM_DB_TIMEOUT_TYPE_SHIFT, align 4
  %51 = ashr i32 %49, %50
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @QM_DB_TIMEOUT_VF, align 4
  %54 = and i32 %52, %53
  store i32 %54, i32* %9, align 4
  %55 = load %struct.device*, %struct.device** %6, align 8
  %56 = load i32*, i32** @qm_db_timeout, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %55, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %40, %27
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @QM_OF_FIFO_OF, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %100

68:                                               ; preds = %63
  %69 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %70 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @QM_ABNORMAL_INF00, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @readl(i64 %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @QM_FIFO_OVERFLOW_TYPE, align 4
  %77 = and i32 %75, %76
  %78 = load i32, i32* @QM_FIFO_OVERFLOW_TYPE_SHIFT, align 4
  %79 = ashr i32 %77, %78
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @QM_FIFO_OVERFLOW_VF, align 4
  %82 = and i32 %80, %81
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32*, i32** @qm_fifo_overflow, align 8
  %85 = call i32 @ARRAY_SIZE(i32* %84)
  %86 = icmp slt i32 %83, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %68
  %88 = load %struct.device*, %struct.device** %6, align 8
  %89 = load i32*, i32** @qm_fifo_overflow, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %88, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %93, i32 %94)
  br label %99

96:                                               ; preds = %68
  %97 = load %struct.device*, %struct.device** %6, align 8
  %98 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %97, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %99

99:                                               ; preds = %96, %87
  br label %100

100:                                              ; preds = %99, %63
  br label %101

101:                                              ; preds = %100, %20
  %102 = load %struct.hisi_qm_hw_error*, %struct.hisi_qm_hw_error** %5, align 8
  %103 = getelementptr inbounds %struct.hisi_qm_hw_error, %struct.hisi_qm_hw_error* %102, i32 1
  store %struct.hisi_qm_hw_error* %103, %struct.hisi_qm_hw_error** %5, align 8
  br label %15

104:                                              ; preds = %15
  ret void
}

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
