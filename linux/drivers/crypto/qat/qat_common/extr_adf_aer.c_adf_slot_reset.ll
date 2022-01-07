; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_aer.c_adf_slot_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_aer.c_adf_slot_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.adf_accel_dev = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"QAT: Can't find acceleration device\0A\00", align 1
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@ADF_DEV_RESET_SYNC = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_RECOVERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @adf_slot_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adf_slot_reset(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.adf_accel_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %6 = call %struct.adf_accel_dev* @adf_devmgr_pci_to_accel_dev(%struct.pci_dev* %5)
  store %struct.adf_accel_dev* %6, %struct.adf_accel_dev** %4, align 8
  %7 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %4, align 8
  %8 = icmp ne %struct.adf_accel_dev* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %11, i32* %2, align 4
  br label %21

12:                                               ; preds = %1
  %13 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %4, align 8
  %14 = load i32, i32* @ADF_DEV_RESET_SYNC, align 4
  %15 = call i64 @adf_dev_aer_schedule_reset(%struct.adf_accel_dev* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %18, i32* %2, align 4
  br label %21

19:                                               ; preds = %12
  %20 = load i32, i32* @PCI_ERS_RESULT_RECOVERED, align 4
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %19, %17, %9
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local %struct.adf_accel_dev* @adf_devmgr_pci_to_accel_dev(%struct.pci_dev*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @adf_dev_aer_schedule_reset(%struct.adf_accel_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
