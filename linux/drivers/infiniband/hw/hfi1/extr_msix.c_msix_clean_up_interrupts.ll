; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_msix.c_msix_clean_up_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_msix.c_msix_clean_up_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.hfi1_msix_entry* }
%struct.hfi1_msix_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msix_clean_up_interrupts(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca %struct.hfi1_devdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfi1_msix_entry*, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %2, align 8
  %5 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %6 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load %struct.hfi1_msix_entry*, %struct.hfi1_msix_entry** %7, align 8
  store %struct.hfi1_msix_entry* %8, %struct.hfi1_msix_entry** %4, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %20, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %12 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %9
  %17 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @msix_free_irq(%struct.hfi1_devdata* %17, i32 %18)
  br label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  %23 = load %struct.hfi1_msix_entry*, %struct.hfi1_msix_entry** %4, align 8
  %24 = getelementptr inbounds %struct.hfi1_msix_entry, %struct.hfi1_msix_entry* %23, i32 1
  store %struct.hfi1_msix_entry* %24, %struct.hfi1_msix_entry** %4, align 8
  br label %9

25:                                               ; preds = %9
  %26 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %27 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load %struct.hfi1_msix_entry*, %struct.hfi1_msix_entry** %28, align 8
  %30 = call i32 @kfree(%struct.hfi1_msix_entry* %29)
  %31 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %32 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store %struct.hfi1_msix_entry* null, %struct.hfi1_msix_entry** %33, align 8
  %34 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %35 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %38 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @pci_free_irq_vectors(i32 %39)
  ret void
}

declare dso_local i32 @msix_free_irq(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @kfree(%struct.hfi1_msix_entry*) #1

declare dso_local i32 @pci_free_irq_vectors(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
