; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/imx/extr_imx-scu-irq.c_imx_scu_irq_group_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/imx/extr_imx-scu-irq.c_imx_scu_irq_group_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_sc_msg_irq_enable = type { i8*, i32, i8*, i32, %struct.imx_sc_rpc_msg }
%struct.imx_sc_rpc_msg = type { i32, i32, i32, i32 }

@imx_sc_irq_ipc_handle = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@IMX_SC_RPC_VERSION = common dso_local global i32 0, align 4
@IMX_SC_RPC_SVC_IRQ = common dso_local global i32 0, align 4
@IMX_SC_IRQ_FUNC_ENABLE = common dso_local global i32 0, align 4
@mu_resource_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"enable irq failed, group %d, mask %d, ret %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imx_scu_irq_group_enable(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.imx_sc_msg_irq_enable, align 8
  %9 = alloca %struct.imx_sc_rpc_msg*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = getelementptr inbounds %struct.imx_sc_msg_irq_enable, %struct.imx_sc_msg_irq_enable* %8, i32 0, i32 4
  store %struct.imx_sc_rpc_msg* %11, %struct.imx_sc_rpc_msg** %9, align 8
  %12 = load i32, i32* @imx_sc_irq_ipc_handle, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EPROBE_DEFER, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %48

17:                                               ; preds = %3
  %18 = load i32, i32* @IMX_SC_RPC_VERSION, align 4
  %19 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %9, align 8
  %20 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @IMX_SC_RPC_SVC_IRQ, align 4
  %22 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %9, align 8
  %23 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @IMX_SC_IRQ_FUNC_ENABLE, align 4
  %25 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %9, align 8
  %26 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %9, align 8
  %28 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %27, i32 0, i32 0
  store i32 3, i32* %28, align 4
  %29 = load i32, i32* @mu_resource_id, align 4
  %30 = getelementptr inbounds %struct.imx_sc_msg_irq_enable, %struct.imx_sc_msg_irq_enable* %8, i32 0, i32 3
  store i32 %29, i32* %30, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds %struct.imx_sc_msg_irq_enable, %struct.imx_sc_msg_irq_enable* %8, i32 0, i32 2
  store i8* %31, i8** %32, align 8
  %33 = load i32, i32* %6, align 4
  %34 = getelementptr inbounds %struct.imx_sc_msg_irq_enable, %struct.imx_sc_msg_irq_enable* %8, i32 0, i32 1
  store i32 %33, i32* %34, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds %struct.imx_sc_msg_irq_enable, %struct.imx_sc_msg_irq_enable* %8, i32 0, i32 0
  store i8* %35, i8** %36, align 8
  %37 = load i32, i32* @imx_sc_irq_ipc_handle, align 4
  %38 = call i32 @imx_scu_call_rpc(i32 %37, %struct.imx_sc_msg_irq_enable* %8, i32 1)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %17
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %41, %17
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %46, %14
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @imx_scu_call_rpc(i32, %struct.imx_sc_msg_irq_enable*, i32) #1

declare dso_local i32 @pr_err(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
