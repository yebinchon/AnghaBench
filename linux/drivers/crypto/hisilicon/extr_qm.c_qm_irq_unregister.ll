; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_qm_irq_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_qm_irq_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_qm = type { i64, i64, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@QM_EQ_EVENT_IRQ_VECTOR = common dso_local global i32 0, align 4
@QM_HW_V2 = common dso_local global i64 0, align 8
@QM_AEQ_EVENT_IRQ_VECTOR = common dso_local global i32 0, align 4
@QM_HW_PF = common dso_local global i64 0, align 8
@QM_ABNORMAL_EVENT_IRQ_VECTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_qm*)* @qm_irq_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qm_irq_unregister(%struct.hisi_qm* %0) #0 {
  %2 = alloca %struct.hisi_qm*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.hisi_qm* %0, %struct.hisi_qm** %2, align 8
  %4 = load %struct.hisi_qm*, %struct.hisi_qm** %2, align 8
  %5 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %4, i32 0, i32 2
  %6 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  store %struct.pci_dev* %6, %struct.pci_dev** %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = load i32, i32* @QM_EQ_EVENT_IRQ_VECTOR, align 4
  %9 = call i32 @pci_irq_vector(%struct.pci_dev* %7, i32 %8)
  %10 = load %struct.hisi_qm*, %struct.hisi_qm** %2, align 8
  %11 = call i32 @free_irq(i32 %9, %struct.hisi_qm* %10)
  %12 = load %struct.hisi_qm*, %struct.hisi_qm** %2, align 8
  %13 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @QM_HW_V2, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %1
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = load i32, i32* @QM_AEQ_EVENT_IRQ_VECTOR, align 4
  %20 = call i32 @pci_irq_vector(%struct.pci_dev* %18, i32 %19)
  %21 = load %struct.hisi_qm*, %struct.hisi_qm** %2, align 8
  %22 = call i32 @free_irq(i32 %20, %struct.hisi_qm* %21)
  %23 = load %struct.hisi_qm*, %struct.hisi_qm** %2, align 8
  %24 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @QM_HW_PF, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %17
  %29 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %30 = load i32, i32* @QM_ABNORMAL_EVENT_IRQ_VECTOR, align 4
  %31 = call i32 @pci_irq_vector(%struct.pci_dev* %29, i32 %30)
  %32 = load %struct.hisi_qm*, %struct.hisi_qm** %2, align 8
  %33 = call i32 @free_irq(i32 %31, %struct.hisi_qm* %32)
  br label %34

34:                                               ; preds = %28, %17
  br label %35

35:                                               ; preds = %34, %1
  ret void
}

declare dso_local i32 @free_irq(i32, %struct.hisi_qm*) #1

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
