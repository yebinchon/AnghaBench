; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_zynqmp-ipi-mailbox.c_zynqmp_ipi_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_zynqmp-ipi-mailbox.c_zynqmp_ipi_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zynqmp_ipi_pdata = type { i32, %struct.zynqmp_ipi_mbox* }
%struct.zynqmp_ipi_mbox = type { %struct.TYPE_2__, %struct.zynqmp_ipi_mchan* }
%struct.TYPE_2__ = type { %struct.mbox_chan* }
%struct.mbox_chan = type { i32 }
%struct.zynqmp_ipi_mchan = type { i32, i32, %struct.zynqmp_ipi_message*, i64 }
%struct.zynqmp_ipi_message = type { i32, i32 }
%struct.arm_smccc_res = type { i32 }

@SMC_IPI_MAILBOX_STATUS_ENQUIRY = common dso_local global i32 0, align 4
@IPI_SMC_ENQUIRY_DIRQ_MASK = common dso_local global i32 0, align 4
@IPI_MB_CHNL_RX = common dso_local global i64 0, align 8
@IPI_MB_STATUS_RECV_PENDING = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @zynqmp_ipi_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynqmp_ipi_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.zynqmp_ipi_pdata*, align 8
  %7 = alloca %struct.mbox_chan*, align 8
  %8 = alloca %struct.zynqmp_ipi_mbox*, align 8
  %9 = alloca %struct.zynqmp_ipi_mchan*, align 8
  %10 = alloca %struct.zynqmp_ipi_message*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.arm_smccc_res, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.zynqmp_ipi_pdata*
  store %struct.zynqmp_ipi_pdata* %17, %struct.zynqmp_ipi_pdata** %6, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @SMC_IPI_MAILBOX_STATUS_ENQUIRY, align 4
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* @IPI_SMC_ENQUIRY_DIRQ_MASK, align 4
  store i32 %20, i32* %12, align 4
  store i32 0, i32* %15, align 4
  br label %21

21:                                               ; preds = %89, %2
  %22 = load i32, i32* %15, align 4
  %23 = load %struct.zynqmp_ipi_pdata*, %struct.zynqmp_ipi_pdata** %6, align 8
  %24 = getelementptr inbounds %struct.zynqmp_ipi_pdata, %struct.zynqmp_ipi_pdata* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %92

27:                                               ; preds = %21
  %28 = load %struct.zynqmp_ipi_pdata*, %struct.zynqmp_ipi_pdata** %6, align 8
  %29 = getelementptr inbounds %struct.zynqmp_ipi_pdata, %struct.zynqmp_ipi_pdata* %28, i32 0, i32 1
  %30 = load %struct.zynqmp_ipi_mbox*, %struct.zynqmp_ipi_mbox** %29, align 8
  %31 = load i32, i32* %15, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.zynqmp_ipi_mbox, %struct.zynqmp_ipi_mbox* %30, i64 %32
  store %struct.zynqmp_ipi_mbox* %33, %struct.zynqmp_ipi_mbox** %8, align 8
  %34 = load %struct.zynqmp_ipi_mbox*, %struct.zynqmp_ipi_mbox** %8, align 8
  %35 = getelementptr inbounds %struct.zynqmp_ipi_mbox, %struct.zynqmp_ipi_mbox* %34, i32 0, i32 1
  %36 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %35, align 8
  %37 = load i64, i64* @IPI_MB_CHNL_RX, align 8
  %38 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %36, i64 %37
  store %struct.zynqmp_ipi_mchan* %38, %struct.zynqmp_ipi_mchan** %9, align 8
  %39 = load %struct.zynqmp_ipi_mbox*, %struct.zynqmp_ipi_mbox** %8, align 8
  %40 = getelementptr inbounds %struct.zynqmp_ipi_mbox, %struct.zynqmp_ipi_mbox* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load %struct.mbox_chan*, %struct.mbox_chan** %41, align 8
  %43 = load i64, i64* @IPI_MB_CHNL_RX, align 8
  %44 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %42, i64 %43
  store %struct.mbox_chan* %44, %struct.mbox_chan** %7, align 8
  %45 = load %struct.zynqmp_ipi_mbox*, %struct.zynqmp_ipi_mbox** %8, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @zynqmp_ipi_fw_call(%struct.zynqmp_ipi_mbox* %45, i32 %46, i32 %47, %struct.arm_smccc_res* %13)
  %49 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %13, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %88

53:                                               ; preds = %27
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* @IPI_MB_STATUS_RECV_PENDING, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %88

58:                                               ; preds = %53
  %59 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %9, align 8
  %60 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %87

63:                                               ; preds = %58
  %64 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %9, align 8
  %65 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %64, i32 0, i32 2
  %66 = load %struct.zynqmp_ipi_message*, %struct.zynqmp_ipi_message** %65, align 8
  store %struct.zynqmp_ipi_message* %66, %struct.zynqmp_ipi_message** %10, align 8
  %67 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %9, align 8
  %68 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.zynqmp_ipi_message*, %struct.zynqmp_ipi_message** %10, align 8
  %71 = getelementptr inbounds %struct.zynqmp_ipi_message, %struct.zynqmp_ipi_message* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.zynqmp_ipi_message*, %struct.zynqmp_ipi_message** %10, align 8
  %73 = getelementptr inbounds %struct.zynqmp_ipi_message, %struct.zynqmp_ipi_message* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %9, align 8
  %76 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.zynqmp_ipi_message*, %struct.zynqmp_ipi_message** %10, align 8
  %79 = getelementptr inbounds %struct.zynqmp_ipi_message, %struct.zynqmp_ipi_message* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @memcpy_fromio(i32 %74, i32 %77, i32 %80)
  %82 = load %struct.mbox_chan*, %struct.mbox_chan** %7, align 8
  %83 = load %struct.zynqmp_ipi_message*, %struct.zynqmp_ipi_message** %10, align 8
  %84 = bitcast %struct.zynqmp_ipi_message* %83 to i8*
  %85 = call i32 @mbox_chan_received_data(%struct.mbox_chan* %82, i8* %84)
  %86 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %86, i32* %3, align 4
  br label %94

87:                                               ; preds = %58
  br label %88

88:                                               ; preds = %87, %53, %27
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %15, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %15, align 4
  br label %21

92:                                               ; preds = %21
  %93 = load i32, i32* @IRQ_NONE, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %92, %63
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @zynqmp_ipi_fw_call(%struct.zynqmp_ipi_mbox*, i32, i32, %struct.arm_smccc_res*) #1

declare dso_local i32 @memcpy_fromio(i32, i32, i32) #1

declare dso_local i32 @mbox_chan_received_data(%struct.mbox_chan*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
