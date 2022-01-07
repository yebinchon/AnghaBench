; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_zynqmp-ipi-mailbox.c_zynqmp_ipi_last_tx_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_zynqmp-ipi-mailbox.c_zynqmp_ipi_last_tx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { %struct.zynqmp_ipi_mchan*, %struct.TYPE_2__* }
%struct.zynqmp_ipi_mchan = type { i64 }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.zynqmp_ipi_mbox = type { i32 }
%struct.arm_smccc_res = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"no platform drv data??\0A\00", align 1
@IPI_MB_CHNL_TX = common dso_local global i64 0, align 8
@SMC_IPI_MAILBOX_STATUS_ENQUIRY = common dso_local global i32 0, align 4
@IPI_MB_STATUS_SEND_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbox_chan*)* @zynqmp_ipi_last_tx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynqmp_ipi_last_tx_done(%struct.mbox_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mbox_chan*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.zynqmp_ipi_mbox*, align 8
  %6 = alloca %struct.zynqmp_ipi_mchan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.arm_smccc_res, align 4
  store %struct.mbox_chan* %0, %struct.mbox_chan** %3, align 8
  %10 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %11 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %4, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call %struct.zynqmp_ipi_mbox* @dev_get_drvdata(%struct.device* %15)
  store %struct.zynqmp_ipi_mbox* %16, %struct.zynqmp_ipi_mbox** %5, align 8
  %17 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %18 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %17, i32 0, i32 0
  %19 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %18, align 8
  store %struct.zynqmp_ipi_mchan* %19, %struct.zynqmp_ipi_mchan** %6, align 8
  %20 = load %struct.zynqmp_ipi_mbox*, %struct.zynqmp_ipi_mbox** %5, align 8
  %21 = icmp ne %struct.zynqmp_ipi_mbox* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %52

29:                                               ; preds = %1
  %30 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %6, align 8
  %31 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IPI_MB_CHNL_TX, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %29
  %36 = load i32, i32* @SMC_IPI_MAILBOX_STATUS_ENQUIRY, align 4
  store i32 %36, i32* %8, align 4
  %37 = load %struct.zynqmp_ipi_mbox*, %struct.zynqmp_ipi_mbox** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @zynqmp_ipi_fw_call(%struct.zynqmp_ipi_mbox* %37, i32 %38, i32 0, %struct.arm_smccc_res* %9)
  %40 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %9, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %35
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @IPI_MB_STATUS_SEND_PENDING, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44, %35
  store i32 0, i32* %2, align 4
  br label %52

50:                                               ; preds = %44
  store i32 1, i32* %2, align 4
  br label %52

51:                                               ; preds = %29
  store i32 1, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %50, %49, %26
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.zynqmp_ipi_mbox* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @zynqmp_ipi_fw_call(%struct.zynqmp_ipi_mbox*, i32, i32, %struct.arm_smccc_res*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
