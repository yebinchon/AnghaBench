; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_isr.c_nitrox_sriov_unregister_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_isr.c_nitrox_sriov_unregister_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_device = type { i32, %struct.nitrox_q_vector*, %struct.TYPE_4__, %struct.pci_dev* }
%struct.nitrox_q_vector = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.pci_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nitrox_sriov_unregister_interrupts(%struct.nitrox_device* %0) #0 {
  %2 = alloca %struct.nitrox_device*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nitrox_q_vector*, align 8
  %6 = alloca i32, align 4
  store %struct.nitrox_device* %0, %struct.nitrox_device** %2, align 8
  %7 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %8 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %7, i32 0, i32 3
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %3, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %47, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %13 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %50

16:                                               ; preds = %10
  %17 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %18 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %17, i32 0, i32 1
  %19 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.nitrox_q_vector, %struct.nitrox_q_vector* %19, i64 %21
  store %struct.nitrox_q_vector* %22, %struct.nitrox_q_vector** %5, align 8
  %23 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %5, align 8
  %24 = getelementptr inbounds %struct.nitrox_q_vector, %struct.nitrox_q_vector* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %16
  br label %47

28:                                               ; preds = %16
  %29 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %30 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @irq_set_affinity_hint(i32 %34, i32* null)
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %5, align 8
  %38 = call i32 @free_irq(i32 %36, %struct.nitrox_q_vector* %37)
  %39 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %5, align 8
  %40 = getelementptr inbounds %struct.nitrox_q_vector, %struct.nitrox_q_vector* %39, i32 0, i32 1
  %41 = call i32 @tasklet_disable(i32* %40)
  %42 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %5, align 8
  %43 = getelementptr inbounds %struct.nitrox_q_vector, %struct.nitrox_q_vector* %42, i32 0, i32 1
  %44 = call i32 @tasklet_kill(i32* %43)
  %45 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %5, align 8
  %46 = getelementptr inbounds %struct.nitrox_q_vector, %struct.nitrox_q_vector* %45, i32 0, i32 0
  store i32 0, i32* %46, align 4
  br label %47

47:                                               ; preds = %28, %27
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %10

50:                                               ; preds = %10
  %51 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %52 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %51, i32 0, i32 1
  %53 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %52, align 8
  %54 = call i32 @kfree(%struct.nitrox_q_vector* %53)
  %55 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %56 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %55, i32 0, i32 1
  store %struct.nitrox_q_vector* null, %struct.nitrox_q_vector** %56, align 8
  %57 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %58 = call i32 @pci_disable_msix(%struct.pci_dev* %57)
  ret void
}

declare dso_local i32 @irq_set_affinity_hint(i32, i32*) #1

declare dso_local i32 @free_irq(i32, %struct.nitrox_q_vector*) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @kfree(%struct.nitrox_q_vector*) #1

declare dso_local i32 @pci_disable_msix(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
