; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_main.c_hisi_zip_process_hw_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_main.c_hisi_zip_process_hw_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.device }
%struct.device = type { i32 }
%struct.hisi_zip = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"Can't recover ZIP-error occurred during device init\0A\00", align 1
@PCI_ERS_RESULT_NONE = common dso_local global i64 0, align 8
@PCI_ERS_RESULT_NEED_RESET = common dso_local global i64 0, align 8
@PCI_ERS_RESULT_RECOVERED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pci_dev*)* @hisi_zip_process_hw_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hisi_zip_process_hw_error(%struct.pci_dev* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.hisi_zip*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = call %struct.hisi_zip* @pci_get_drvdata(%struct.pci_dev* %8)
  store %struct.hisi_zip* %9, %struct.hisi_zip** %4, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.hisi_zip*, %struct.hisi_zip** %4, align 8
  %13 = icmp ne %struct.hisi_zip* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call i32 @dev_err(%struct.device* %15, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %17 = load i64, i64* @PCI_ERS_RESULT_NONE, align 8
  store i64 %17, i64* %2, align 8
  br label %37

18:                                               ; preds = %1
  %19 = load %struct.hisi_zip*, %struct.hisi_zip** %4, align 8
  %20 = getelementptr inbounds %struct.hisi_zip, %struct.hisi_zip* %19, i32 0, i32 0
  %21 = call i64 @hisi_qm_hw_error_handle(i32* %20)
  store i64 %21, i64* %6, align 8
  %22 = load %struct.hisi_zip*, %struct.hisi_zip** %4, align 8
  %23 = call i64 @hisi_zip_hw_error_handle(%struct.hisi_zip* %22)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @PCI_ERS_RESULT_NEED_RESET, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @PCI_ERS_RESULT_NEED_RESET, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %18
  %32 = load i64, i64* @PCI_ERS_RESULT_NEED_RESET, align 8
  br label %35

33:                                               ; preds = %27
  %34 = load i64, i64* @PCI_ERS_RESULT_RECOVERED, align 8
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i64 [ %32, %31 ], [ %34, %33 ]
  store i64 %36, i64* %2, align 8
  br label %37

37:                                               ; preds = %35, %14
  %38 = load i64, i64* %2, align 8
  ret i64 %38
}

declare dso_local %struct.hisi_zip* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @hisi_qm_hw_error_handle(i32*) #1

declare dso_local i64 @hisi_zip_hw_error_handle(%struct.hisi_zip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
