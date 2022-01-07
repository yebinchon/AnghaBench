; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_qcom_scm-64.c___qcom_scm_iommu_secure_ptbl_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_qcom_scm-64.c___qcom_scm_iommu_secure_ptbl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.qcom_scm_desc = type { i32, i8**, i32 }
%struct.arm_smccc_res = type { i32 }

@QCOM_SCM_RW = common dso_local global i32 0, align 4
@QCOM_SCM_VAL = common dso_local global i32 0, align 4
@QCOM_SCM_SVC_MP = common dso_local global i32 0, align 4
@QCOM_SCM_IOMMU_SECURE_PTBL_INIT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__qcom_scm_iommu_secure_ptbl_init(%struct.device* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.qcom_scm_desc, align 8
  %10 = alloca %struct.arm_smccc_res, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = bitcast %struct.qcom_scm_desc* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false)
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr inbounds %struct.qcom_scm_desc, %struct.qcom_scm_desc* %9, i32 0, i32 1
  %15 = load i8**, i8*** %14, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  store i8* %13, i8** %16, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds %struct.qcom_scm_desc, %struct.qcom_scm_desc* %9, i32 0, i32 1
  %19 = load i8**, i8*** %18, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  store i8* %17, i8** %20, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds %struct.qcom_scm_desc, %struct.qcom_scm_desc* %9, i32 0, i32 1
  %23 = load i8**, i8*** %22, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 2
  store i8* %21, i8** %24, align 8
  %25 = load i32, i32* @QCOM_SCM_RW, align 4
  %26 = load i32, i32* @QCOM_SCM_VAL, align 4
  %27 = load i32, i32* @QCOM_SCM_VAL, align 4
  %28 = call i32 @QCOM_SCM_ARGS(i32 3, i32 %25, i32 %26, i32 %27)
  %29 = getelementptr inbounds %struct.qcom_scm_desc, %struct.qcom_scm_desc* %9, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = load i32, i32* @QCOM_SCM_SVC_MP, align 4
  %32 = load i32, i32* @QCOM_SCM_IOMMU_SECURE_PTBL_INIT, align 4
  %33 = call i32 @qcom_scm_call(%struct.device* %30, i32 %31, i32 %32, %struct.qcom_scm_desc* %9, %struct.arm_smccc_res* %10)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @EPERM, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %38, %4
  %40 = load i32, i32* %11, align 4
  ret i32 %40
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @QCOM_SCM_ARGS(i32, i32, i32, i32) #2

declare dso_local i32 @qcom_scm_call(%struct.device*, i32, i32, %struct.qcom_scm_desc*, %struct.arm_smccc_res*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
