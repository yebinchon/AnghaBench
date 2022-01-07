; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_zynqmp-ipi-mailbox.c_zynqmp_ipi_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_zynqmp-ipi-mailbox.c_zynqmp_ipi_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { %struct.zynqmp_ipi_mchan*, %struct.TYPE_4__* }
%struct.zynqmp_ipi_mchan = type { i32, i64 }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.zynqmp_ipi_mbox = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.arm_smccc_res = type { i32 }

@IPI_MB_CHNL_RX = common dso_local global i32 0, align 4
@SMC_IPI_MAILBOX_DISABLE_IRQ = common dso_local global i32 0, align 4
@SMC_IPI_MAILBOX_RELEASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbox_chan*)* @zynqmp_ipi_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zynqmp_ipi_shutdown(%struct.mbox_chan* %0) #0 {
  %2 = alloca %struct.mbox_chan*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.zynqmp_ipi_mbox*, align 8
  %5 = alloca %struct.zynqmp_ipi_mchan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.arm_smccc_res, align 4
  %8 = alloca i32, align 4
  store %struct.mbox_chan* %0, %struct.mbox_chan** %2, align 8
  %9 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %10 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %3, align 8
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = call %struct.zynqmp_ipi_mbox* @dev_get_drvdata(%struct.device* %14)
  store %struct.zynqmp_ipi_mbox* %15, %struct.zynqmp_ipi_mbox** %4, align 8
  %16 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %17 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %16, i32 0, i32 0
  %18 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %17, align 8
  store %struct.zynqmp_ipi_mchan* %18, %struct.zynqmp_ipi_mchan** %5, align 8
  %19 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %5, align 8
  %20 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %57

24:                                               ; preds = %1
  %25 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %5, align 8
  %26 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @IPI_MB_CHNL_RX, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load i32, i32* @SMC_IPI_MAILBOX_DISABLE_IRQ, align 4
  store i32 %32, i32* %6, align 4
  %33 = load %struct.zynqmp_ipi_mbox*, %struct.zynqmp_ipi_mbox** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @zynqmp_ipi_fw_call(%struct.zynqmp_ipi_mbox* %33, i32 %34, i32 0, %struct.arm_smccc_res* %7)
  br label %36

36:                                               ; preds = %31, %24
  %37 = load i32, i32* %8, align 4
  %38 = add i32 %37, 1
  %39 = urem i32 %38, 2
  store i32 %39, i32* %8, align 4
  %40 = load %struct.zynqmp_ipi_mbox*, %struct.zynqmp_ipi_mbox** %4, align 8
  %41 = getelementptr inbounds %struct.zynqmp_ipi_mbox, %struct.zynqmp_ipi_mbox* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %36
  %50 = load i32, i32* @SMC_IPI_MAILBOX_RELEASE, align 4
  store i32 %50, i32* %6, align 4
  %51 = load %struct.zynqmp_ipi_mbox*, %struct.zynqmp_ipi_mbox** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @zynqmp_ipi_fw_call(%struct.zynqmp_ipi_mbox* %51, i32 %52, i32 0, %struct.arm_smccc_res* %7)
  br label %54

54:                                               ; preds = %49, %36
  %55 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %5, align 8
  %56 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %54, %23
  ret void
}

declare dso_local %struct.zynqmp_ipi_mbox* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @zynqmp_ipi_fw_call(%struct.zynqmp_ipi_mbox*, i32, i32, %struct.arm_smccc_res*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
