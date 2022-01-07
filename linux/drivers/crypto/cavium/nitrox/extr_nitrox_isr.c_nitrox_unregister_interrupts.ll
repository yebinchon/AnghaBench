; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_isr.c_nitrox_unregister_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_isr.c_nitrox_unregister_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_device = type { i32, %struct.nitrox_q_vector*, %struct.pci_dev* }
%struct.nitrox_q_vector = type { i32, i32 }
%struct.pci_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nitrox_unregister_interrupts(%struct.nitrox_device* %0) #0 {
  %2 = alloca %struct.nitrox_device*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nitrox_q_vector*, align 8
  %6 = alloca i32, align 4
  store %struct.nitrox_device* %0, %struct.nitrox_device** %2, align 8
  %7 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %8 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %7, i32 0, i32 2
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %3, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %45, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %13 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %48

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
  br label %45

28:                                               ; preds = %16
  %29 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @pci_irq_vector(%struct.pci_dev* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @irq_set_affinity_hint(i32 %32, i32* null)
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %5, align 8
  %36 = call i32 @free_irq(i32 %34, %struct.nitrox_q_vector* %35)
  %37 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %5, align 8
  %38 = getelementptr inbounds %struct.nitrox_q_vector, %struct.nitrox_q_vector* %37, i32 0, i32 1
  %39 = call i32 @tasklet_disable(i32* %38)
  %40 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %5, align 8
  %41 = getelementptr inbounds %struct.nitrox_q_vector, %struct.nitrox_q_vector* %40, i32 0, i32 1
  %42 = call i32 @tasklet_kill(i32* %41)
  %43 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %5, align 8
  %44 = getelementptr inbounds %struct.nitrox_q_vector, %struct.nitrox_q_vector* %43, i32 0, i32 0
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %28, %27
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %10

48:                                               ; preds = %10
  %49 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %50 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %49, i32 0, i32 1
  %51 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %50, align 8
  %52 = call i32 @kfree(%struct.nitrox_q_vector* %51)
  %53 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %54 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %53, i32 0, i32 1
  store %struct.nitrox_q_vector* null, %struct.nitrox_q_vector** %54, align 8
  %55 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %56 = call i32 @pci_free_irq_vectors(%struct.pci_dev* %55)
  ret void
}

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #1

declare dso_local i32 @irq_set_affinity_hint(i32, i32*) #1

declare dso_local i32 @free_irq(i32, %struct.nitrox_q_vector*) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @kfree(%struct.nitrox_q_vector*) #1

declare dso_local i32 @pci_free_irq_vectors(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
