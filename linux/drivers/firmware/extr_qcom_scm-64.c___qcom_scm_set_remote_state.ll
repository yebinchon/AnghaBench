; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_qcom_scm-64.c___qcom_scm_set_remote_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_qcom_scm-64.c___qcom_scm_set_remote_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.qcom_scm_desc = type { i32, i8**, i32 }
%struct.arm_smccc_res = type { i32 }

@QCOM_SCM_SVC_BOOT = common dso_local global i32 0, align 4
@QCOM_SCM_SET_REMOTE_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__qcom_scm_set_remote_state(%struct.device* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.qcom_scm_desc, align 8
  %8 = alloca %struct.arm_smccc_res, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = bitcast %struct.qcom_scm_desc* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 24, i1 false)
  %11 = load i8*, i8** %5, align 8
  %12 = getelementptr inbounds %struct.qcom_scm_desc, %struct.qcom_scm_desc* %7, i32 0, i32 1
  %13 = load i8**, i8*** %12, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  store i8* %11, i8** %14, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds %struct.qcom_scm_desc, %struct.qcom_scm_desc* %7, i32 0, i32 1
  %17 = load i8**, i8*** %16, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  store i8* %15, i8** %18, align 8
  %19 = call i32 @QCOM_SCM_ARGS(i32 2)
  %20 = getelementptr inbounds %struct.qcom_scm_desc, %struct.qcom_scm_desc* %7, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load i32, i32* @QCOM_SCM_SVC_BOOT, align 4
  %23 = load i32, i32* @QCOM_SCM_SET_REMOTE_STATE, align 4
  %24 = call i32 @qcom_scm_call(%struct.device* %21, i32 %22, i32 %23, %struct.qcom_scm_desc* %7, %struct.arm_smccc_res* %8)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %31

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %8, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  br label %31

31:                                               ; preds = %28, %27
  %32 = phi i32 [ %25, %27 ], [ %30, %28 ]
  ret i32 %32
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @QCOM_SCM_ARGS(i32) #2

declare dso_local i32 @qcom_scm_call(%struct.device*, i32, i32, %struct.qcom_scm_desc*, %struct.arm_smccc_res*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
