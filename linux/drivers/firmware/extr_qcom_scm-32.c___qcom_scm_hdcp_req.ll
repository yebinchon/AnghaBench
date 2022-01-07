; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_qcom_scm-32.c___qcom_scm_hdcp_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_qcom_scm-32.c___qcom_scm_hdcp_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.qcom_scm_hdcp_req = type { i32 }

@QCOM_SCM_HDCP_MAX_REQ_CNT = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@QCOM_SCM_SVC_HDCP = common dso_local global i32 0, align 4
@QCOM_SCM_CMD_HDCP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__qcom_scm_hdcp_req(%struct.device* %0, %struct.qcom_scm_hdcp_req* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.qcom_scm_hdcp_req*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.qcom_scm_hdcp_req* %1, %struct.qcom_scm_hdcp_req** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @QCOM_SCM_HDCP_MAX_REQ_CNT, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i32, i32* @ERANGE, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %5, align 4
  br label %27

16:                                               ; preds = %4
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = load i32, i32* @QCOM_SCM_SVC_HDCP, align 4
  %19 = load i32, i32* @QCOM_SCM_CMD_HDCP, align 4
  %20 = load %struct.qcom_scm_hdcp_req*, %struct.qcom_scm_hdcp_req** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = trunc i64 %23 to i32
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @qcom_scm_call(%struct.device* %17, i32 %18, i32 %19, %struct.qcom_scm_hdcp_req* %20, i32 %24, i32* %25, i32 4)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %16, %13
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @qcom_scm_call(%struct.device*, i32, i32, %struct.qcom_scm_hdcp_req*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
