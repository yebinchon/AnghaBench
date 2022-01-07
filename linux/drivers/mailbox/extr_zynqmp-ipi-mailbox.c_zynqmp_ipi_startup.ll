; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_zynqmp-ipi-mailbox.c_zynqmp_ipi_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_zynqmp-ipi-mailbox.c_zynqmp_ipi_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { %struct.zynqmp_ipi_mchan*, %struct.TYPE_3__* }
%struct.zynqmp_ipi_mchan = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.zynqmp_ipi_mbox = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.arm_smccc_res = type { i32 }

@SMC_IPI_MAILBOX_OPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"SMC to open the IPI channel failed.\0A\00", align 1
@IPI_MB_CHNL_RX = common dso_local global i32 0, align 4
@SMC_IPI_MAILBOX_ENABLE_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbox_chan*)* @zynqmp_ipi_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynqmp_ipi_startup(%struct.mbox_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mbox_chan*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.zynqmp_ipi_mbox*, align 8
  %6 = alloca %struct.zynqmp_ipi_mchan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.arm_smccc_res, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mbox_chan* %0, %struct.mbox_chan** %3, align 8
  %11 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %12 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %4, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call %struct.zynqmp_ipi_mbox* @dev_get_drvdata(%struct.device* %16)
  store %struct.zynqmp_ipi_mbox* %17, %struct.zynqmp_ipi_mbox** %5, align 8
  %18 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %19 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %18, i32 0, i32 0
  %20 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %19, align 8
  store %struct.zynqmp_ipi_mchan* %20, %struct.zynqmp_ipi_mchan** %6, align 8
  store i32 0, i32* %9, align 4
  %21 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %6, align 8
  %22 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %70

26:                                               ; preds = %1
  %27 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %6, align 8
  %28 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  %31 = srem i32 %30, 2
  store i32 %31, i32* %10, align 4
  %32 = load %struct.zynqmp_ipi_mbox*, %struct.zynqmp_ipi_mbox** %5, align 8
  %33 = getelementptr inbounds %struct.zynqmp_ipi_mbox, %struct.zynqmp_ipi_mbox* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %26
  %42 = load i32, i32* @SMC_IPI_MAILBOX_OPEN, align 4
  store i32 %42, i32* %7, align 4
  %43 = load %struct.zynqmp_ipi_mbox*, %struct.zynqmp_ipi_mbox** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @zynqmp_ipi_fw_call(%struct.zynqmp_ipi_mbox* %43, i32 %44, i32 0, %struct.arm_smccc_res* %8)
  %46 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %8, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = call i32 @dev_err(%struct.device* %51, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %2, align 4
  br label %70

54:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %54, %26
  %56 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %6, align 8
  %57 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IPI_MB_CHNL_RX, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load i32, i32* @SMC_IPI_MAILBOX_ENABLE_IRQ, align 4
  store i32 %62, i32* %7, align 4
  %63 = load %struct.zynqmp_ipi_mbox*, %struct.zynqmp_ipi_mbox** %5, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @zynqmp_ipi_fw_call(%struct.zynqmp_ipi_mbox* %63, i32 %64, i32 0, %struct.arm_smccc_res* %8)
  br label %66

66:                                               ; preds = %61, %55
  %67 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %6, align 8
  %68 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %67, i32 0, i32 0
  store i32 1, i32* %68, align 4
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %66, %50, %25
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.zynqmp_ipi_mbox* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @zynqmp_ipi_fw_call(%struct.zynqmp_ipi_mbox*, i32, i32, %struct.arm_smccc_res*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
