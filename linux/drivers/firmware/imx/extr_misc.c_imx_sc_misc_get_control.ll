; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/imx/extr_misc.c_imx_sc_misc_get_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/imx/extr_misc.c_imx_sc_misc_get_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_sc_ipc = type { i32 }
%struct.imx_sc_msg_req_misc_get_ctrl = type { i32, i32, %struct.imx_sc_rpc_msg }
%struct.imx_sc_rpc_msg = type { i32, i8*, i8*, i32 }
%struct.imx_sc_msg_resp_misc_get_ctrl = type { i32 }

@IMX_SC_RPC_VERSION = common dso_local global i32 0, align 4
@IMX_SC_RPC_SVC_MISC = common dso_local global i64 0, align 8
@IMX_SC_MISC_FUNC_GET_CONTROL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imx_sc_misc_get_control(%struct.imx_sc_ipc* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.imx_sc_ipc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.imx_sc_msg_req_misc_get_ctrl, align 8
  %11 = alloca %struct.imx_sc_msg_resp_misc_get_ctrl*, align 8
  %12 = alloca %struct.imx_sc_rpc_msg*, align 8
  %13 = alloca i32, align 4
  store %struct.imx_sc_ipc* %0, %struct.imx_sc_ipc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = getelementptr inbounds %struct.imx_sc_msg_req_misc_get_ctrl, %struct.imx_sc_msg_req_misc_get_ctrl* %10, i32 0, i32 2
  store %struct.imx_sc_rpc_msg* %14, %struct.imx_sc_rpc_msg** %12, align 8
  %15 = load i32, i32* @IMX_SC_RPC_VERSION, align 4
  %16 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %12, align 8
  %17 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load i64, i64* @IMX_SC_RPC_SVC_MISC, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %12, align 8
  %21 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = load i64, i64* @IMX_SC_MISC_FUNC_GET_CONTROL, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %12, align 8
  %25 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %12, align 8
  %27 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %26, i32 0, i32 0
  store i32 3, i32* %27, align 8
  %28 = load i32, i32* %8, align 4
  %29 = getelementptr inbounds %struct.imx_sc_msg_req_misc_get_ctrl, %struct.imx_sc_msg_req_misc_get_ctrl* %10, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %7, align 4
  %31 = getelementptr inbounds %struct.imx_sc_msg_req_misc_get_ctrl, %struct.imx_sc_msg_req_misc_get_ctrl* %10, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load %struct.imx_sc_ipc*, %struct.imx_sc_ipc** %6, align 8
  %33 = call i32 @imx_scu_call_rpc(%struct.imx_sc_ipc* %32, %struct.imx_sc_msg_req_misc_get_ctrl* %10, i32 1)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %4
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %5, align 4
  br label %48

38:                                               ; preds = %4
  %39 = bitcast %struct.imx_sc_msg_req_misc_get_ctrl* %10 to %struct.imx_sc_msg_resp_misc_get_ctrl*
  store %struct.imx_sc_msg_resp_misc_get_ctrl* %39, %struct.imx_sc_msg_resp_misc_get_ctrl** %11, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load %struct.imx_sc_msg_resp_misc_get_ctrl*, %struct.imx_sc_msg_resp_misc_get_ctrl** %11, align 8
  %44 = getelementptr inbounds %struct.imx_sc_msg_resp_misc_get_ctrl, %struct.imx_sc_msg_resp_misc_get_ctrl* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %9, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %42, %38
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %36
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @imx_scu_call_rpc(%struct.imx_sc_ipc*, %struct.imx_sc_msg_req_misc_get_ctrl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
