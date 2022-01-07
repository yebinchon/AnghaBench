; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_main.c_qedr_pci_set_atomic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_main.c_qedr_pci_set_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { i32 }
%struct.pci_dev = type { i32 }

@PCI_EXP_DEVCAP2_ATOMIC_COMP64 = common dso_local global i32 0, align 4
@IB_ATOMIC_NONE = common dso_local global i32 0, align 4
@QEDR_MSG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Atomic capability disabled\0A\00", align 1
@IB_ATOMIC_GLOB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Atomic capability enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedr_dev*, %struct.pci_dev*)* @qedr_pci_set_atomic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedr_pci_set_atomic(%struct.qedr_dev* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca %struct.qedr_dev*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.qedr_dev* %0, %struct.qedr_dev** %3, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %4, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %7 = load i32, i32* @PCI_EXP_DEVCAP2_ATOMIC_COMP64, align 4
  %8 = call i32 @pci_enable_atomic_ops_to_root(%struct.pci_dev* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load i32, i32* @IB_ATOMIC_NONE, align 4
  %13 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %14 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %16 = load i32, i32* @QEDR_MSG_INIT, align 4
  %17 = call i32 @DP_DEBUG(%struct.qedr_dev* %15, i32 %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %25

18:                                               ; preds = %2
  %19 = load i32, i32* @IB_ATOMIC_GLOB, align 4
  %20 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %21 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %23 = load i32, i32* @QEDR_MSG_INIT, align 4
  %24 = call i32 @DP_DEBUG(%struct.qedr_dev* %22, i32 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %18, %11
  ret void
}

declare dso_local i32 @pci_enable_atomic_ops_to_root(%struct.pci_dev*, i32) #1

declare dso_local i32 @DP_DEBUG(%struct.qedr_dev*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
