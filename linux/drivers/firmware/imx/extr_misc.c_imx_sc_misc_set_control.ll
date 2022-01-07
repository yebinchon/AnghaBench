; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/imx/extr_misc.c_imx_sc_misc_set_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/imx/extr_misc.c_imx_sc_misc_set_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_sc_ipc = type { i32 }
%struct.imx_sc_msg_req_misc_set_ctrl = type { i8*, i8*, i32, %struct.imx_sc_rpc_msg }
%struct.imx_sc_rpc_msg = type { i32, i8*, i8*, i32 }

@IMX_SC_RPC_VERSION = common dso_local global i32 0, align 4
@IMX_SC_RPC_SVC_MISC = common dso_local global i64 0, align 8
@IMX_SC_MISC_FUNC_SET_CONTROL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imx_sc_misc_set_control(%struct.imx_sc_ipc* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.imx_sc_ipc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.imx_sc_msg_req_misc_set_ctrl, align 8
  %10 = alloca %struct.imx_sc_rpc_msg*, align 8
  store %struct.imx_sc_ipc* %0, %struct.imx_sc_ipc** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = getelementptr inbounds %struct.imx_sc_msg_req_misc_set_ctrl, %struct.imx_sc_msg_req_misc_set_ctrl* %9, i32 0, i32 3
  store %struct.imx_sc_rpc_msg* %11, %struct.imx_sc_rpc_msg** %10, align 8
  %12 = load i32, i32* @IMX_SC_RPC_VERSION, align 4
  %13 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %10, align 8
  %14 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  %15 = load i64, i64* @IMX_SC_RPC_SVC_MISC, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %10, align 8
  %18 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %17, i32 0, i32 2
  store i8* %16, i8** %18, align 8
  %19 = load i64, i64* @IMX_SC_MISC_FUNC_SET_CONTROL, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %10, align 8
  %22 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %10, align 8
  %24 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %23, i32 0, i32 0
  store i32 4, i32* %24, align 8
  %25 = load i32, i32* %7, align 4
  %26 = getelementptr inbounds %struct.imx_sc_msg_req_misc_set_ctrl, %struct.imx_sc_msg_req_misc_set_ctrl* %9, i32 0, i32 2
  store i32 %25, i32* %26, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds %struct.imx_sc_msg_req_misc_set_ctrl, %struct.imx_sc_msg_req_misc_set_ctrl* %9, i32 0, i32 1
  store i8* %27, i8** %28, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds %struct.imx_sc_msg_req_misc_set_ctrl, %struct.imx_sc_msg_req_misc_set_ctrl* %9, i32 0, i32 0
  store i8* %29, i8** %30, align 8
  %31 = load %struct.imx_sc_ipc*, %struct.imx_sc_ipc** %5, align 8
  %32 = call i32 @imx_scu_call_rpc(%struct.imx_sc_ipc* %31, %struct.imx_sc_msg_req_misc_set_ctrl* %9, i32 1)
  ret i32 %32
}

declare dso_local i32 @imx_scu_call_rpc(%struct.imx_sc_ipc*, %struct.imx_sc_msg_req_misc_set_ctrl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
