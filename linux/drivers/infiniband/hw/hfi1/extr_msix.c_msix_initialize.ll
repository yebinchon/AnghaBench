; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_msix.c_msix_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_msix.c_msix_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i64, i64, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32, i32, %struct.hfi1_msix_entry* }
%struct.hfi1_msix_entry = type { i32 }

@CCE_NUM_MSIX_VECTORS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PCI_IRQ_MSIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"pci_alloc_irq_vectors() failed: %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"%u MSI-X interrupts allocated\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msix_initialize(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hfi1_msix_entry*, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  %7 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %8 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 1, %9
  %11 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %12 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %10, %13
  %15 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %16 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %14, %17
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @CCE_NUM_MSIX_VECTORS, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %75

25:                                               ; preds = %1
  %26 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %27 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load i32, i32* @PCI_IRQ_MSIX, align 4
  %32 = call i32 @pci_alloc_irq_vectors(i32 %28, i64 %29, i64 %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %25
  %36 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @dd_dev_err(%struct.hfi1_devdata* %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %75

40:                                               ; preds = %25
  %41 = load i64, i64* %4, align 8
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.hfi1_msix_entry* @kcalloc(i64 %41, i32 4, i32 %42)
  store %struct.hfi1_msix_entry* %43, %struct.hfi1_msix_entry** %6, align 8
  %44 = load %struct.hfi1_msix_entry*, %struct.hfi1_msix_entry** %6, align 8
  %45 = icmp ne %struct.hfi1_msix_entry* %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %40
  %47 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %48 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @pci_free_irq_vectors(i32 %49)
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %75

53:                                               ; preds = %40
  %54 = load %struct.hfi1_msix_entry*, %struct.hfi1_msix_entry** %6, align 8
  %55 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %56 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  store %struct.hfi1_msix_entry* %54, %struct.hfi1_msix_entry** %57, align 8
  %58 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %59 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = call i32 @spin_lock_init(i32* %60)
  %62 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %63 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i64, i64* %4, align 8
  %67 = call i32 @bitmap_zero(i32 %65, i64 %66)
  %68 = load i64, i64* %4, align 8
  %69 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %70 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i64 %68, i64* %71, align 8
  %72 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %73 = load i64, i64* %4, align 8
  %74 = call i32 @dd_dev_info(%struct.hfi1_devdata* %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %73)
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %53, %46, %35, %22
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @pci_alloc_irq_vectors(i32, i64, i64, i32) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*, i32) #1

declare dso_local %struct.hfi1_msix_entry* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @pci_free_irq_vectors(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @bitmap_zero(i32, i64) #1

declare dso_local i32 @dd_dev_info(%struct.hfi1_devdata*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
