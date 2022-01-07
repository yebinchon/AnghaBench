; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/imx/extr_scu-pd.c_imx_sc_pd_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/imx/extr_scu-pd.c_imx_sc_pd_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.generic_pm_domain = type { i32 }
%struct.imx_sc_msg_req_set_resource_power_mode = type { i32, i32, %struct.imx_sc_rpc_msg }
%struct.imx_sc_rpc_msg = type { i32, i32, i32, i32 }
%struct.imx_sc_pm_domain = type { i32 }

@IMX_SC_RPC_VERSION = common dso_local global i32 0, align 4
@IMX_SC_RPC_SVC_PM = common dso_local global i32 0, align 4
@IMX_SC_PM_FUNC_SET_RESOURCE_POWER_MODE = common dso_local global i32 0, align 4
@IMX_SC_PM_PW_MODE_ON = common dso_local global i32 0, align 4
@IMX_SC_PM_PW_MODE_LP = common dso_local global i32 0, align 4
@pm_ipc_handle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to power %s resource %d ret %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.generic_pm_domain*, i32)* @imx_sc_pd_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_sc_pd_power(%struct.generic_pm_domain* %0, i32 %1) #0 {
  %3 = alloca %struct.generic_pm_domain*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.imx_sc_msg_req_set_resource_power_mode, align 4
  %6 = alloca %struct.imx_sc_rpc_msg*, align 8
  %7 = alloca %struct.imx_sc_pm_domain*, align 8
  %8 = alloca i32, align 4
  store %struct.generic_pm_domain* %0, %struct.generic_pm_domain** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = getelementptr inbounds %struct.imx_sc_msg_req_set_resource_power_mode, %struct.imx_sc_msg_req_set_resource_power_mode* %5, i32 0, i32 2
  store %struct.imx_sc_rpc_msg* %9, %struct.imx_sc_rpc_msg** %6, align 8
  %10 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %3, align 8
  %11 = call %struct.imx_sc_pm_domain* @to_imx_sc_pd(%struct.generic_pm_domain* %10)
  store %struct.imx_sc_pm_domain* %11, %struct.imx_sc_pm_domain** %7, align 8
  %12 = load i32, i32* @IMX_SC_RPC_VERSION, align 4
  %13 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %6, align 8
  %14 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @IMX_SC_RPC_SVC_PM, align 4
  %16 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %6, align 8
  %17 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @IMX_SC_PM_FUNC_SET_RESOURCE_POWER_MODE, align 4
  %19 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %6, align 8
  %20 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %6, align 8
  %22 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %21, i32 0, i32 0
  store i32 2, i32* %22, align 4
  %23 = load %struct.imx_sc_pm_domain*, %struct.imx_sc_pm_domain** %7, align 8
  %24 = getelementptr inbounds %struct.imx_sc_pm_domain, %struct.imx_sc_pm_domain* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.imx_sc_msg_req_set_resource_power_mode, %struct.imx_sc_msg_req_set_resource_power_mode* %5, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @IMX_SC_PM_PW_MODE_ON, align 4
  br label %33

31:                                               ; preds = %2
  %32 = load i32, i32* @IMX_SC_PM_PW_MODE_LP, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = getelementptr inbounds %struct.imx_sc_msg_req_set_resource_power_mode, %struct.imx_sc_msg_req_set_resource_power_mode* %5, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @pm_ipc_handle, align 4
  %37 = call i32 @imx_scu_call_rpc(i32 %36, %struct.imx_sc_msg_req_set_resource_power_mode* %5, i32 1)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %33
  %41 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %3, align 8
  %42 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %41, i32 0, i32 0
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %47 = load %struct.imx_sc_pm_domain*, %struct.imx_sc_pm_domain** %7, align 8
  %48 = getelementptr inbounds %struct.imx_sc_pm_domain, %struct.imx_sc_pm_domain* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %46, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %40, %33
  %53 = load i32, i32* %8, align 4
  ret i32 %53
}

declare dso_local %struct.imx_sc_pm_domain* @to_imx_sc_pd(%struct.generic_pm_domain*) #1

declare dso_local i32 @imx_scu_call_rpc(i32, %struct.imx_sc_msg_req_set_resource_power_mode*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
