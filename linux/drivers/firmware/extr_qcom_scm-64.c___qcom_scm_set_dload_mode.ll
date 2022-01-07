; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_qcom_scm-64.c___qcom_scm_set_dload_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_qcom_scm-64.c___qcom_scm_set_dload_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.qcom_scm_desc = type { i32, i8**, i32 }
%struct.arm_smccc_res = type { i32 }

@QCOM_SCM_SET_DLOAD_MODE = common dso_local global i8* null, align 8
@QCOM_SCM_SVC_BOOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__qcom_scm_set_dload_mode(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qcom_scm_desc, align 8
  %6 = alloca %struct.arm_smccc_res, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = bitcast %struct.qcom_scm_desc* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 24, i1 false)
  %8 = load i8*, i8** @QCOM_SCM_SET_DLOAD_MODE, align 8
  %9 = getelementptr inbounds %struct.qcom_scm_desc, %struct.qcom_scm_desc* %5, i32 0, i32 1
  %10 = load i8**, i8*** %9, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  store i8* %8, i8** %11, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i8*, i8** @QCOM_SCM_SET_DLOAD_MODE, align 8
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %14
  %18 = phi i8* [ %15, %14 ], [ null, %16 ]
  %19 = getelementptr inbounds %struct.qcom_scm_desc, %struct.qcom_scm_desc* %5, i32 0, i32 1
  %20 = load i8**, i8*** %19, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  store i8* %18, i8** %21, align 8
  %22 = call i32 @QCOM_SCM_ARGS(i32 2)
  %23 = getelementptr inbounds %struct.qcom_scm_desc, %struct.qcom_scm_desc* %5, i32 0, i32 0
  store i32 %22, i32* %23, align 8
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = load i32, i32* @QCOM_SCM_SVC_BOOT, align 4
  %26 = load i8*, i8** @QCOM_SCM_SET_DLOAD_MODE, align 8
  %27 = call i32 @qcom_scm_call(%struct.device* %24, i32 %25, i8* %26, %struct.qcom_scm_desc* %5, %struct.arm_smccc_res* %6)
  ret i32 %27
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @QCOM_SCM_ARGS(i32) #2

declare dso_local i32 @qcom_scm_call(%struct.device*, i32, i8*, %struct.qcom_scm_desc*, %struct.arm_smccc_res*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
