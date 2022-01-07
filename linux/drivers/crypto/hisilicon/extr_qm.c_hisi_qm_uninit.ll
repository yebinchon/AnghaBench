; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_hisi_qm_uninit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_hisi_qm_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_qm = type { i32, %struct.TYPE_2__, i64, %struct.pci_dev* }
%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.pci_dev = type { %struct.device }
%struct.device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hisi_qm_uninit(%struct.hisi_qm* %0) #0 {
  %2 = alloca %struct.hisi_qm*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.hisi_qm* %0, %struct.hisi_qm** %2, align 8
  %5 = load %struct.hisi_qm*, %struct.hisi_qm** %2, align 8
  %6 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %5, i32 0, i32 3
  %7 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  store %struct.pci_dev* %7, %struct.pci_dev** %3, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.hisi_qm*, %struct.hisi_qm** %2, align 8
  %11 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %1
  %15 = load %struct.hisi_qm*, %struct.hisi_qm** %2, align 8
  %16 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %14
  %21 = load %struct.hisi_qm*, %struct.hisi_qm** %2, align 8
  %22 = call i32 @hisi_qm_cache_wb(%struct.hisi_qm* %21)
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load %struct.hisi_qm*, %struct.hisi_qm** %2, align 8
  %25 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.hisi_qm*, %struct.hisi_qm** %2, align 8
  %29 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.hisi_qm*, %struct.hisi_qm** %2, align 8
  %33 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dma_free_coherent(%struct.device* %23, i32 %27, i64 %31, i32 %35)
  %37 = load %struct.hisi_qm*, %struct.hisi_qm** %2, align 8
  %38 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %37, i32 0, i32 1
  %39 = call i32 @memset(%struct.TYPE_2__* %38, i32 0, i32 24)
  br label %40

40:                                               ; preds = %20, %14, %1
  %41 = load %struct.hisi_qm*, %struct.hisi_qm** %2, align 8
  %42 = call i32 @qm_irq_unregister(%struct.hisi_qm* %41)
  %43 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %44 = call i32 @pci_free_irq_vectors(%struct.pci_dev* %43)
  %45 = load %struct.hisi_qm*, %struct.hisi_qm** %2, align 8
  %46 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @iounmap(i32 %47)
  %49 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %50 = call i32 @pci_release_mem_regions(%struct.pci_dev* %49)
  %51 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %52 = call i32 @pci_disable_device(%struct.pci_dev* %51)
  ret void
}

declare dso_local i32 @hisi_qm_cache_wb(%struct.hisi_qm*) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i64, i32) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @qm_irq_unregister(%struct.hisi_qm*) #1

declare dso_local i32 @pci_free_irq_vectors(%struct.pci_dev*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_mem_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
