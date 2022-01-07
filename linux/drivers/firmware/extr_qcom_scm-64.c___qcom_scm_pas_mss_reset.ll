; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_qcom_scm-64.c___qcom_scm_pas_mss_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_qcom_scm-64.c___qcom_scm_pas_mss_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.qcom_scm_desc = type { i32*, i32, i32 }
%struct.arm_smccc_res = type { i32 }

@QCOM_SCM_SVC_PIL = common dso_local global i32 0, align 4
@QCOM_SCM_PAS_MSS_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__qcom_scm_pas_mss_reset(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qcom_scm_desc, align 8
  %6 = alloca %struct.arm_smccc_res, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = bitcast %struct.qcom_scm_desc* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 16, i1 false)
  %9 = load i32, i32* %4, align 4
  %10 = getelementptr inbounds %struct.qcom_scm_desc, %struct.qcom_scm_desc* %5, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 %9, i32* %12, align 4
  %13 = getelementptr inbounds %struct.qcom_scm_desc, %struct.qcom_scm_desc* %5, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 0, i32* %15, align 4
  %16 = call i32 @QCOM_SCM_ARGS(i32 2)
  %17 = getelementptr inbounds %struct.qcom_scm_desc, %struct.qcom_scm_desc* %5, i32 0, i32 1
  store i32 %16, i32* %17, align 8
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = load i32, i32* @QCOM_SCM_SVC_PIL, align 4
  %20 = load i32, i32* @QCOM_SCM_PAS_MSS_RESET, align 4
  %21 = call i32 @qcom_scm_call(%struct.device* %18, i32 %19, i32 %20, %struct.qcom_scm_desc* %5, %struct.arm_smccc_res* %6)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %28

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %6, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  br label %28

28:                                               ; preds = %25, %24
  %29 = phi i32 [ %22, %24 ], [ %27, %25 ]
  ret i32 %29
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
