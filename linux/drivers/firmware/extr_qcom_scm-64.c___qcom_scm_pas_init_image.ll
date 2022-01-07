; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_qcom_scm-64.c___qcom_scm_pas_init_image.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_qcom_scm-64.c___qcom_scm_pas_init_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.qcom_scm_desc = type { i32, i32*, i32 }
%struct.arm_smccc_res = type { i32 }

@QCOM_SCM_VAL = common dso_local global i32 0, align 4
@QCOM_SCM_RW = common dso_local global i32 0, align 4
@QCOM_SCM_SVC_PIL = common dso_local global i32 0, align 4
@QCOM_SCM_PAS_INIT_IMAGE_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__qcom_scm_pas_init_image(%struct.device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qcom_scm_desc, align 8
  %9 = alloca %struct.arm_smccc_res, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = bitcast %struct.qcom_scm_desc* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 24, i1 false)
  %11 = load i32, i32* %5, align 4
  %12 = getelementptr inbounds %struct.qcom_scm_desc, %struct.qcom_scm_desc* %8, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* %6, align 4
  %16 = getelementptr inbounds %struct.qcom_scm_desc, %struct.qcom_scm_desc* %8, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @QCOM_SCM_VAL, align 4
  %20 = load i32, i32* @QCOM_SCM_RW, align 4
  %21 = call i32 @QCOM_SCM_ARGS(i32 2, i32 %19, i32 %20)
  %22 = getelementptr inbounds %struct.qcom_scm_desc, %struct.qcom_scm_desc* %8, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load i32, i32* @QCOM_SCM_SVC_PIL, align 4
  %25 = load i32, i32* @QCOM_SCM_PAS_INIT_IMAGE_CMD, align 4
  %26 = call i32 @qcom_scm_call(%struct.device* %23, i32 %24, i32 %25, %struct.qcom_scm_desc* %8, %struct.arm_smccc_res* %9)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %33

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %9, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  br label %33

33:                                               ; preds = %30, %29
  %34 = phi i32 [ %27, %29 ], [ %32, %30 ]
  ret i32 %34
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @QCOM_SCM_ARGS(i32, i32, i32) #2

declare dso_local i32 @qcom_scm_call(%struct.device*, i32, i32, %struct.qcom_scm_desc*, %struct.arm_smccc_res*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
