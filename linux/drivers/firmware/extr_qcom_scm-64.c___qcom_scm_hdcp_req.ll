; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_qcom_scm-64.c___qcom_scm_hdcp_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_qcom_scm-64.c___qcom_scm_hdcp_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.qcom_scm_hdcp_req = type { i32, i32 }
%struct.qcom_scm_desc = type { i32, i32*, i32 }
%struct.arm_smccc_res = type { i64 }

@QCOM_SCM_HDCP_MAX_REQ_CNT = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@QCOM_SCM_SVC_HDCP = common dso_local global i32 0, align 4
@QCOM_SCM_CMD_HDCP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__qcom_scm_hdcp_req(%struct.device* %0, %struct.qcom_scm_hdcp_req* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.qcom_scm_hdcp_req*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.qcom_scm_desc, align 8
  %12 = alloca %struct.arm_smccc_res, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.qcom_scm_hdcp_req* %1, %struct.qcom_scm_hdcp_req** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = bitcast %struct.qcom_scm_desc* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 24, i1 false)
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @QCOM_SCM_HDCP_MAX_REQ_CNT, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @ERANGE, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %101

20:                                               ; preds = %4
  %21 = load %struct.qcom_scm_hdcp_req*, %struct.qcom_scm_hdcp_req** %7, align 8
  %22 = getelementptr inbounds %struct.qcom_scm_hdcp_req, %struct.qcom_scm_hdcp_req* %21, i64 0
  %23 = getelementptr inbounds %struct.qcom_scm_hdcp_req, %struct.qcom_scm_hdcp_req* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.qcom_scm_desc, %struct.qcom_scm_desc* %11, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.qcom_scm_hdcp_req*, %struct.qcom_scm_hdcp_req** %7, align 8
  %29 = getelementptr inbounds %struct.qcom_scm_hdcp_req, %struct.qcom_scm_hdcp_req* %28, i64 0
  %30 = getelementptr inbounds %struct.qcom_scm_hdcp_req, %struct.qcom_scm_hdcp_req* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.qcom_scm_desc, %struct.qcom_scm_desc* %11, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  store i32 %31, i32* %34, align 4
  %35 = load %struct.qcom_scm_hdcp_req*, %struct.qcom_scm_hdcp_req** %7, align 8
  %36 = getelementptr inbounds %struct.qcom_scm_hdcp_req, %struct.qcom_scm_hdcp_req* %35, i64 1
  %37 = getelementptr inbounds %struct.qcom_scm_hdcp_req, %struct.qcom_scm_hdcp_req* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.qcom_scm_desc, %struct.qcom_scm_desc* %11, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  store i32 %38, i32* %41, align 4
  %42 = load %struct.qcom_scm_hdcp_req*, %struct.qcom_scm_hdcp_req** %7, align 8
  %43 = getelementptr inbounds %struct.qcom_scm_hdcp_req, %struct.qcom_scm_hdcp_req* %42, i64 1
  %44 = getelementptr inbounds %struct.qcom_scm_hdcp_req, %struct.qcom_scm_hdcp_req* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.qcom_scm_desc, %struct.qcom_scm_desc* %11, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  store i32 %45, i32* %48, align 4
  %49 = load %struct.qcom_scm_hdcp_req*, %struct.qcom_scm_hdcp_req** %7, align 8
  %50 = getelementptr inbounds %struct.qcom_scm_hdcp_req, %struct.qcom_scm_hdcp_req* %49, i64 2
  %51 = getelementptr inbounds %struct.qcom_scm_hdcp_req, %struct.qcom_scm_hdcp_req* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.qcom_scm_desc, %struct.qcom_scm_desc* %11, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 4
  store i32 %52, i32* %55, align 4
  %56 = load %struct.qcom_scm_hdcp_req*, %struct.qcom_scm_hdcp_req** %7, align 8
  %57 = getelementptr inbounds %struct.qcom_scm_hdcp_req, %struct.qcom_scm_hdcp_req* %56, i64 2
  %58 = getelementptr inbounds %struct.qcom_scm_hdcp_req, %struct.qcom_scm_hdcp_req* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.qcom_scm_desc, %struct.qcom_scm_desc* %11, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 5
  store i32 %59, i32* %62, align 4
  %63 = load %struct.qcom_scm_hdcp_req*, %struct.qcom_scm_hdcp_req** %7, align 8
  %64 = getelementptr inbounds %struct.qcom_scm_hdcp_req, %struct.qcom_scm_hdcp_req* %63, i64 3
  %65 = getelementptr inbounds %struct.qcom_scm_hdcp_req, %struct.qcom_scm_hdcp_req* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.qcom_scm_desc, %struct.qcom_scm_desc* %11, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 6
  store i32 %66, i32* %69, align 4
  %70 = load %struct.qcom_scm_hdcp_req*, %struct.qcom_scm_hdcp_req** %7, align 8
  %71 = getelementptr inbounds %struct.qcom_scm_hdcp_req, %struct.qcom_scm_hdcp_req* %70, i64 3
  %72 = getelementptr inbounds %struct.qcom_scm_hdcp_req, %struct.qcom_scm_hdcp_req* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.qcom_scm_desc, %struct.qcom_scm_desc* %11, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 7
  store i32 %73, i32* %76, align 4
  %77 = load %struct.qcom_scm_hdcp_req*, %struct.qcom_scm_hdcp_req** %7, align 8
  %78 = getelementptr inbounds %struct.qcom_scm_hdcp_req, %struct.qcom_scm_hdcp_req* %77, i64 4
  %79 = getelementptr inbounds %struct.qcom_scm_hdcp_req, %struct.qcom_scm_hdcp_req* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.qcom_scm_desc, %struct.qcom_scm_desc* %11, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 8
  store i32 %80, i32* %83, align 4
  %84 = load %struct.qcom_scm_hdcp_req*, %struct.qcom_scm_hdcp_req** %7, align 8
  %85 = getelementptr inbounds %struct.qcom_scm_hdcp_req, %struct.qcom_scm_hdcp_req* %84, i64 4
  %86 = getelementptr inbounds %struct.qcom_scm_hdcp_req, %struct.qcom_scm_hdcp_req* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.qcom_scm_desc, %struct.qcom_scm_desc* %11, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 9
  store i32 %87, i32* %90, align 4
  %91 = call i32 @QCOM_SCM_ARGS(i32 10)
  %92 = getelementptr inbounds %struct.qcom_scm_desc, %struct.qcom_scm_desc* %11, i32 0, i32 0
  store i32 %91, i32* %92, align 8
  %93 = load %struct.device*, %struct.device** %6, align 8
  %94 = load i32, i32* @QCOM_SCM_SVC_HDCP, align 4
  %95 = load i32, i32* @QCOM_SCM_CMD_HDCP, align 4
  %96 = call i32 @qcom_scm_call(%struct.device* %93, i32 %94, i32 %95, %struct.qcom_scm_desc* %11, %struct.arm_smccc_res* %12)
  store i32 %96, i32* %10, align 4
  %97 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %12, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64*, i64** %9, align 8
  store i64 %98, i64* %99, align 8
  %100 = load i32, i32* %10, align 4
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %20, %17
  %102 = load i32, i32* %5, align 4
  ret i32 %102
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
