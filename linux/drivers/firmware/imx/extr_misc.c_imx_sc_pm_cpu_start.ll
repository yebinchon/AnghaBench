; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/imx/extr_misc.c_imx_sc_pm_cpu_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/imx/extr_misc.c_imx_sc_pm_cpu_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_sc_ipc = type { i32 }
%struct.imx_sc_msg_req_cpu_start = type { i32, i32, i32, i32, %struct.imx_sc_rpc_msg }
%struct.imx_sc_rpc_msg = type { i32, i32, i32, i32 }

@IMX_SC_RPC_VERSION = common dso_local global i32 0, align 4
@IMX_SC_RPC_SVC_PM = common dso_local global i32 0, align 4
@IMX_SC_PM_FUNC_CPU_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imx_sc_pm_cpu_start(%struct.imx_sc_ipc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.imx_sc_ipc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.imx_sc_msg_req_cpu_start, align 4
  %10 = alloca %struct.imx_sc_rpc_msg*, align 8
  store %struct.imx_sc_ipc* %0, %struct.imx_sc_ipc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = getelementptr inbounds %struct.imx_sc_msg_req_cpu_start, %struct.imx_sc_msg_req_cpu_start* %9, i32 0, i32 4
  store %struct.imx_sc_rpc_msg* %11, %struct.imx_sc_rpc_msg** %10, align 8
  %12 = load i32, i32* @IMX_SC_RPC_VERSION, align 4
  %13 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %10, align 8
  %14 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @IMX_SC_RPC_SVC_PM, align 4
  %16 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %10, align 8
  %17 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @IMX_SC_PM_FUNC_CPU_START, align 4
  %19 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %10, align 8
  %20 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %10, align 8
  %22 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %21, i32 0, i32 0
  store i32 4, i32* %22, align 4
  %23 = load i32, i32* %8, align 4
  %24 = ashr i32 %23, 32
  %25 = getelementptr inbounds %struct.imx_sc_msg_req_cpu_start, %struct.imx_sc_msg_req_cpu_start* %9, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %8, align 4
  %27 = getelementptr inbounds %struct.imx_sc_msg_req_cpu_start, %struct.imx_sc_msg_req_cpu_start* %9, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %6, align 4
  %29 = getelementptr inbounds %struct.imx_sc_msg_req_cpu_start, %struct.imx_sc_msg_req_cpu_start* %9, i32 0, i32 3
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %7, align 4
  %31 = getelementptr inbounds %struct.imx_sc_msg_req_cpu_start, %struct.imx_sc_msg_req_cpu_start* %9, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  %32 = load %struct.imx_sc_ipc*, %struct.imx_sc_ipc** %5, align 8
  %33 = call i32 @imx_scu_call_rpc(%struct.imx_sc_ipc* %32, %struct.imx_sc_msg_req_cpu_start* %9, i32 1)
  ret i32 %33
}

declare dso_local i32 @imx_scu_call_rpc(%struct.imx_sc_ipc*, %struct.imx_sc_msg_req_cpu_start*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
