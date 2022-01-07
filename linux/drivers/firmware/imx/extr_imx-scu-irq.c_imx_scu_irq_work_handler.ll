; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/imx/extr_imx-scu-irq.c_imx_scu_irq_work_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/imx/extr_imx-scu-irq.c_imx_scu_irq_work_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.imx_sc_msg_irq_get_status = type { %struct.TYPE_6__, %struct.imx_sc_rpc_msg }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.imx_sc_rpc_msg = type { i32, i32, i32, i32 }

@IMX_SC_IRQ_NUM_GROUP = common dso_local global i64 0, align 8
@IMX_SC_RPC_VERSION = common dso_local global i32 0, align 4
@IMX_SC_RPC_SVC_IRQ = common dso_local global i32 0, align 4
@IMX_SC_IRQ_FUNC_STATUS = common dso_local global i32 0, align 4
@mu_resource_id = common dso_local global i32 0, align 4
@imx_sc_irq_ipc_handle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"get irq group %d status failed, ret %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @imx_scu_irq_work_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_scu_irq_work_handler(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.imx_sc_msg_irq_get_status, align 8
  %4 = alloca %struct.imx_sc_rpc_msg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %8 = getelementptr inbounds %struct.imx_sc_msg_irq_get_status, %struct.imx_sc_msg_irq_get_status* %3, i32 0, i32 1
  store %struct.imx_sc_rpc_msg* %8, %struct.imx_sc_rpc_msg** %4, align 8
  store i64 0, i64* %7, align 8
  br label %9

9:                                                ; preds = %52, %1
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* @IMX_SC_IRQ_NUM_GROUP, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %55

13:                                               ; preds = %9
  %14 = load i32, i32* @IMX_SC_RPC_VERSION, align 4
  %15 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %4, align 8
  %16 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @IMX_SC_RPC_SVC_IRQ, align 4
  %18 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %4, align 8
  %19 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @IMX_SC_IRQ_FUNC_STATUS, align 4
  %21 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %4, align 8
  %22 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %4, align 8
  %24 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %23, i32 0, i32 0
  store i32 2, i32* %24, align 4
  %25 = load i32, i32* @mu_resource_id, align 4
  %26 = getelementptr inbounds %struct.imx_sc_msg_irq_get_status, %struct.imx_sc_msg_irq_get_status* %3, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds %struct.imx_sc_msg_irq_get_status, %struct.imx_sc_msg_irq_get_status* %3, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i64 %29, i64* %32, align 8
  %33 = load i32, i32* @imx_sc_irq_ipc_handle, align 4
  %34 = call i32 @imx_scu_call_rpc(i32 %33, %struct.imx_sc_msg_irq_get_status* %3, i32 1)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %13
  %38 = load i64, i64* %7, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %38, i32 %39)
  br label %55

41:                                               ; preds = %13
  %42 = getelementptr inbounds %struct.imx_sc_msg_irq_get_status, %struct.imx_sc_msg_irq_get_status* %3, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  br label %52

49:                                               ; preds = %41
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @imx_scu_irq_notifier_call_chain(i32 %50, i64* %7)
  br label %52

52:                                               ; preds = %49, %48
  %53 = load i64, i64* %7, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %7, align 8
  br label %9

55:                                               ; preds = %37, %9
  ret void
}

declare dso_local i32 @imx_scu_call_rpc(i32, %struct.imx_sc_msg_irq_get_status*, i32) #1

declare dso_local i32 @pr_err(i8*, i64, i32) #1

declare dso_local i32 @imx_scu_irq_notifier_call_chain(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
