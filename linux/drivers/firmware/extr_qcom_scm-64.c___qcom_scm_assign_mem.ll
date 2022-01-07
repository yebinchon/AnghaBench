; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_qcom_scm-64.c___qcom_scm_assign_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_qcom_scm-64.c___qcom_scm_assign_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.qcom_scm_desc = type { i64*, i32, i32 }
%struct.arm_smccc_res = type { i32 }

@QCOM_SCM_RO = common dso_local global i32 0, align 4
@QCOM_SCM_VAL = common dso_local global i32 0, align 4
@QCOM_SCM_SVC_MP = common dso_local global i32 0, align 4
@QCOM_MEM_PROT_ASSIGN_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__qcom_scm_assign_mem(%struct.device* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6) #0 {
  %8 = alloca %struct.device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.qcom_scm_desc, align 8
  %17 = alloca %struct.arm_smccc_res, align 4
  store %struct.device* %0, %struct.device** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  store i64 %6, i64* %14, align 8
  %18 = bitcast %struct.qcom_scm_desc* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 16, i1 false)
  %19 = load i8*, i8** %9, align 8
  %20 = ptrtoint i8* %19 to i64
  %21 = getelementptr inbounds %struct.qcom_scm_desc, %struct.qcom_scm_desc* %16, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  store i64 %20, i64* %23, align 8
  %24 = load i64, i64* %10, align 8
  %25 = getelementptr inbounds %struct.qcom_scm_desc, %struct.qcom_scm_desc* %16, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  store i64 %24, i64* %27, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = getelementptr inbounds %struct.qcom_scm_desc, %struct.qcom_scm_desc* %16, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 2
  store i64 %29, i64* %32, align 8
  %33 = load i64, i64* %12, align 8
  %34 = getelementptr inbounds %struct.qcom_scm_desc, %struct.qcom_scm_desc* %16, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 3
  store i64 %33, i64* %36, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = ptrtoint i8* %37 to i64
  %39 = getelementptr inbounds %struct.qcom_scm_desc, %struct.qcom_scm_desc* %16, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 4
  store i64 %38, i64* %41, align 8
  %42 = load i64, i64* %14, align 8
  %43 = getelementptr inbounds %struct.qcom_scm_desc, %struct.qcom_scm_desc* %16, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 5
  store i64 %42, i64* %45, align 8
  %46 = getelementptr inbounds %struct.qcom_scm_desc, %struct.qcom_scm_desc* %16, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 6
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* @QCOM_SCM_RO, align 4
  %50 = load i32, i32* @QCOM_SCM_VAL, align 4
  %51 = load i32, i32* @QCOM_SCM_RO, align 4
  %52 = load i32, i32* @QCOM_SCM_VAL, align 4
  %53 = load i32, i32* @QCOM_SCM_RO, align 4
  %54 = load i32, i32* @QCOM_SCM_VAL, align 4
  %55 = load i32, i32* @QCOM_SCM_VAL, align 4
  %56 = call i32 @QCOM_SCM_ARGS(i32 7, i32 %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55)
  %57 = getelementptr inbounds %struct.qcom_scm_desc, %struct.qcom_scm_desc* %16, i32 0, i32 1
  store i32 %56, i32* %57, align 8
  %58 = load %struct.device*, %struct.device** %8, align 8
  %59 = load i32, i32* @QCOM_SCM_SVC_MP, align 4
  %60 = load i32, i32* @QCOM_MEM_PROT_ASSIGN_ID, align 4
  %61 = call i32 @qcom_scm_call(%struct.device* %58, i32 %59, i32 %60, %struct.qcom_scm_desc* %16, %struct.arm_smccc_res* %17)
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %15, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %7
  br label %68

65:                                               ; preds = %7
  %66 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %17, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  br label %68

68:                                               ; preds = %65, %64
  %69 = phi i32 [ %62, %64 ], [ %67, %65 ]
  ret i32 %69
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @QCOM_SCM_ARGS(i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @qcom_scm_call(%struct.device*, i32, i32, %struct.qcom_scm_desc*, %struct.arm_smccc_res*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
