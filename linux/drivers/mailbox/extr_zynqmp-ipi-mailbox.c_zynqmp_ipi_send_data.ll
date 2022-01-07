; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_zynqmp-ipi-mailbox.c_zynqmp_ipi_send_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_zynqmp-ipi-mailbox.c_zynqmp_ipi_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { %struct.zynqmp_ipi_mchan*, %struct.TYPE_2__* }
%struct.zynqmp_ipi_mchan = type { i64, i64, i64, i32, i32 }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.zynqmp_ipi_mbox = type { i32 }
%struct.zynqmp_ipi_message = type { i64, i32 }
%struct.arm_smccc_res = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"no platform drv data??\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IPI_MB_CHNL_TX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"channel %d message length %u > max %lu\0A\00", align 1
@SMC_IPI_MAILBOX_NOTIFY = common dso_local global i32 0, align 4
@SMC_IPI_MAILBOX_ACK = common dso_local global i32 0, align 4
@IPI_SMC_ACK_EIRQ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbox_chan*, i8*)* @zynqmp_ipi_send_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynqmp_ipi_send_data(%struct.mbox_chan* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mbox_chan*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.zynqmp_ipi_mbox*, align 8
  %8 = alloca %struct.zynqmp_ipi_mchan*, align 8
  %9 = alloca %struct.zynqmp_ipi_message*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.arm_smccc_res, align 4
  store %struct.mbox_chan* %0, %struct.mbox_chan** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.mbox_chan*, %struct.mbox_chan** %4, align 8
  %13 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %6, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.zynqmp_ipi_mbox* @dev_get_drvdata(%struct.device* %17)
  store %struct.zynqmp_ipi_mbox* %18, %struct.zynqmp_ipi_mbox** %7, align 8
  %19 = load %struct.mbox_chan*, %struct.mbox_chan** %4, align 8
  %20 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %19, i32 0, i32 0
  %21 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %20, align 8
  store %struct.zynqmp_ipi_mchan* %21, %struct.zynqmp_ipi_mchan** %8, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = bitcast i8* %22 to %struct.zynqmp_ipi_message*
  store %struct.zynqmp_ipi_message* %23, %struct.zynqmp_ipi_message** %9, align 8
  %24 = load %struct.zynqmp_ipi_mbox*, %struct.zynqmp_ipi_mbox** %7, align 8
  %25 = icmp ne %struct.zynqmp_ipi_mbox* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %143

35:                                               ; preds = %2
  %36 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %8, align 8
  %37 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @IPI_MB_CHNL_TX, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %91

41:                                               ; preds = %35
  %42 = load %struct.zynqmp_ipi_message*, %struct.zynqmp_ipi_message** %9, align 8
  %43 = icmp ne %struct.zynqmp_ipi_message* %42, null
  br i1 %43, label %44, label %67

44:                                               ; preds = %41
  %45 = load %struct.zynqmp_ipi_message*, %struct.zynqmp_ipi_message** %9, align 8
  %46 = getelementptr inbounds %struct.zynqmp_ipi_message, %struct.zynqmp_ipi_message* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %8, align 8
  %49 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %47, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %44
  %53 = load %struct.device*, %struct.device** %6, align 8
  %54 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %8, align 8
  %55 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.zynqmp_ipi_message*, %struct.zynqmp_ipi_message** %9, align 8
  %58 = getelementptr inbounds %struct.zynqmp_ipi_message, %struct.zynqmp_ipi_message* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %8, align 8
  %62 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %53, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %56, i32 %60, i64 %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %143

67:                                               ; preds = %44, %41
  %68 = load %struct.zynqmp_ipi_message*, %struct.zynqmp_ipi_message** %9, align 8
  %69 = icmp ne %struct.zynqmp_ipi_message* %68, null
  br i1 %69, label %70, label %86

70:                                               ; preds = %67
  %71 = load %struct.zynqmp_ipi_message*, %struct.zynqmp_ipi_message** %9, align 8
  %72 = getelementptr inbounds %struct.zynqmp_ipi_message, %struct.zynqmp_ipi_message* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %70
  %76 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %8, align 8
  %77 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.zynqmp_ipi_message*, %struct.zynqmp_ipi_message** %9, align 8
  %80 = getelementptr inbounds %struct.zynqmp_ipi_message, %struct.zynqmp_ipi_message* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.zynqmp_ipi_message*, %struct.zynqmp_ipi_message** %9, align 8
  %83 = getelementptr inbounds %struct.zynqmp_ipi_message, %struct.zynqmp_ipi_message* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @memcpy_toio(i32 %78, i32 %81, i64 %84)
  br label %86

86:                                               ; preds = %75, %70, %67
  %87 = load i32, i32* @SMC_IPI_MAILBOX_NOTIFY, align 4
  store i32 %87, i32* %10, align 4
  %88 = load %struct.zynqmp_ipi_mbox*, %struct.zynqmp_ipi_mbox** %7, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @zynqmp_ipi_fw_call(%struct.zynqmp_ipi_mbox* %88, i32 %89, i32 0, %struct.arm_smccc_res* %11)
  br label %142

91:                                               ; preds = %35
  %92 = load %struct.zynqmp_ipi_message*, %struct.zynqmp_ipi_message** %9, align 8
  %93 = icmp ne %struct.zynqmp_ipi_message* %92, null
  br i1 %93, label %94, label %117

94:                                               ; preds = %91
  %95 = load %struct.zynqmp_ipi_message*, %struct.zynqmp_ipi_message** %9, align 8
  %96 = getelementptr inbounds %struct.zynqmp_ipi_message, %struct.zynqmp_ipi_message* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %8, align 8
  %99 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp sgt i64 %97, %100
  br i1 %101, label %102, label %117

102:                                              ; preds = %94
  %103 = load %struct.device*, %struct.device** %6, align 8
  %104 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %8, align 8
  %105 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.zynqmp_ipi_message*, %struct.zynqmp_ipi_message** %9, align 8
  %108 = getelementptr inbounds %struct.zynqmp_ipi_message, %struct.zynqmp_ipi_message* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %8, align 8
  %112 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %103, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %106, i32 %110, i64 %113)
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %3, align 4
  br label %143

117:                                              ; preds = %94, %91
  %118 = load %struct.zynqmp_ipi_message*, %struct.zynqmp_ipi_message** %9, align 8
  %119 = icmp ne %struct.zynqmp_ipi_message* %118, null
  br i1 %119, label %120, label %136

120:                                              ; preds = %117
  %121 = load %struct.zynqmp_ipi_message*, %struct.zynqmp_ipi_message** %9, align 8
  %122 = getelementptr inbounds %struct.zynqmp_ipi_message, %struct.zynqmp_ipi_message* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %120
  %126 = load %struct.zynqmp_ipi_mchan*, %struct.zynqmp_ipi_mchan** %8, align 8
  %127 = getelementptr inbounds %struct.zynqmp_ipi_mchan, %struct.zynqmp_ipi_mchan* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.zynqmp_ipi_message*, %struct.zynqmp_ipi_message** %9, align 8
  %130 = getelementptr inbounds %struct.zynqmp_ipi_message, %struct.zynqmp_ipi_message* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.zynqmp_ipi_message*, %struct.zynqmp_ipi_message** %9, align 8
  %133 = getelementptr inbounds %struct.zynqmp_ipi_message, %struct.zynqmp_ipi_message* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @memcpy_toio(i32 %128, i32 %131, i64 %134)
  br label %136

136:                                              ; preds = %125, %120, %117
  %137 = load i32, i32* @SMC_IPI_MAILBOX_ACK, align 4
  store i32 %137, i32* %10, align 4
  %138 = load %struct.zynqmp_ipi_mbox*, %struct.zynqmp_ipi_mbox** %7, align 8
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* @IPI_SMC_ACK_EIRQ_MASK, align 4
  %141 = call i32 @zynqmp_ipi_fw_call(%struct.zynqmp_ipi_mbox* %138, i32 %139, i32 %140, %struct.arm_smccc_res* %11)
  br label %142

142:                                              ; preds = %136, %86
  store i32 0, i32* %3, align 4
  br label %143

143:                                              ; preds = %142, %102, %52, %30
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local %struct.zynqmp_ipi_mbox* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @memcpy_toio(i32, i32, i64) #1

declare dso_local i32 @zynqmp_ipi_fw_call(%struct.zynqmp_ipi_mbox*, i32, i32, %struct.arm_smccc_res*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
