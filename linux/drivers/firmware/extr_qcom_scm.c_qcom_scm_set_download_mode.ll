; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_qcom_scm.c_qcom_scm_set_download_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_qcom_scm.c_qcom_scm_set_download_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@__scm = common dso_local global %struct.TYPE_2__* null, align 8
@QCOM_SCM_SVC_BOOT = common dso_local global i32 0, align 4
@QCOM_SCM_SET_DLOAD_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"No available mechanism for setting download mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to set download mode: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @qcom_scm_set_download_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_scm_set_download_mode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__scm, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @QCOM_SCM_SVC_BOOT, align 4
  %9 = load i32, i32* @QCOM_SCM_SET_DLOAD_MODE, align 4
  %10 = call i32 @__qcom_scm_is_call_available(i32 %7, i32 %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__scm, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @__qcom_scm_set_dload_mode(i32 %16, i32 %17)
  store i32 %18, i32* %4, align 4
  br label %45

19:                                               ; preds = %1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__scm, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %19
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__scm, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__scm, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %2, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* @QCOM_SCM_SET_DLOAD_MODE, align 4
  br label %36

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i32 [ %34, %33 ], [ 0, %35 ]
  %38 = call i32 @__qcom_scm_io_writel(i32 %27, i64 %30, i32 %37)
  store i32 %38, i32* %4, align 4
  br label %44

39:                                               ; preds = %19
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__scm, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i32, i8*, ...) @dev_err(i32 %42, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %36
  br label %45

45:                                               ; preds = %44, %13
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__scm, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 (i32, i8*, ...) @dev_err(i32 %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %48, %45
  ret void
}

declare dso_local i32 @__qcom_scm_is_call_available(i32, i32, i32) #1

declare dso_local i32 @__qcom_scm_set_dload_mode(i32, i32) #1

declare dso_local i32 @__qcom_scm_io_writel(i32, i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
