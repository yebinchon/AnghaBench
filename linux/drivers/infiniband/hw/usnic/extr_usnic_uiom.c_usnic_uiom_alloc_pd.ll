; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_uiom.c_usnic_uiom_alloc_pd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_uiom.c_usnic_uiom_alloc_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usnic_uiom_pd = type { i32, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pci_bus_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to allocate IOMMU domain\00", align 1
@usnic_uiom_dma_fault = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usnic_uiom_pd* @usnic_uiom_alloc_pd() #0 {
  %1 = alloca %struct.usnic_uiom_pd*, align 8
  %2 = alloca %struct.usnic_uiom_pd*, align 8
  %3 = alloca i8*, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.usnic_uiom_pd* @kzalloc(i32 16, i32 %4)
  store %struct.usnic_uiom_pd* %5, %struct.usnic_uiom_pd** %2, align 8
  %6 = load %struct.usnic_uiom_pd*, %struct.usnic_uiom_pd** %2, align 8
  %7 = icmp ne %struct.usnic_uiom_pd* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  %11 = call %struct.usnic_uiom_pd* @ERR_PTR(i32 %10)
  store %struct.usnic_uiom_pd* %11, %struct.usnic_uiom_pd** %1, align 8
  br label %38

12:                                               ; preds = %0
  %13 = call i8* @iommu_domain_alloc(i32* @pci_bus_type)
  store i8* %13, i8** %3, align 8
  %14 = load %struct.usnic_uiom_pd*, %struct.usnic_uiom_pd** %2, align 8
  %15 = getelementptr inbounds %struct.usnic_uiom_pd, %struct.usnic_uiom_pd* %14, i32 0, i32 2
  store i8* %13, i8** %15, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %12
  %19 = call i32 @usnic_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.usnic_uiom_pd*, %struct.usnic_uiom_pd** %2, align 8
  %21 = call i32 @kfree(%struct.usnic_uiom_pd* %20)
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.usnic_uiom_pd* @ERR_PTR(i32 %23)
  store %struct.usnic_uiom_pd* %24, %struct.usnic_uiom_pd** %1, align 8
  br label %38

25:                                               ; preds = %12
  %26 = load %struct.usnic_uiom_pd*, %struct.usnic_uiom_pd** %2, align 8
  %27 = getelementptr inbounds %struct.usnic_uiom_pd, %struct.usnic_uiom_pd* %26, i32 0, i32 2
  %28 = load i8*, i8** %27, align 8
  %29 = load i32, i32* @usnic_uiom_dma_fault, align 4
  %30 = call i32 @iommu_set_fault_handler(i8* %28, i32 %29, i32* null)
  %31 = load %struct.usnic_uiom_pd*, %struct.usnic_uiom_pd** %2, align 8
  %32 = getelementptr inbounds %struct.usnic_uiom_pd, %struct.usnic_uiom_pd* %31, i32 0, i32 1
  %33 = call i32 @spin_lock_init(i32* %32)
  %34 = load %struct.usnic_uiom_pd*, %struct.usnic_uiom_pd** %2, align 8
  %35 = getelementptr inbounds %struct.usnic_uiom_pd, %struct.usnic_uiom_pd* %34, i32 0, i32 0
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load %struct.usnic_uiom_pd*, %struct.usnic_uiom_pd** %2, align 8
  store %struct.usnic_uiom_pd* %37, %struct.usnic_uiom_pd** %1, align 8
  br label %38

38:                                               ; preds = %25, %18, %8
  %39 = load %struct.usnic_uiom_pd*, %struct.usnic_uiom_pd** %1, align 8
  ret %struct.usnic_uiom_pd* %39
}

declare dso_local %struct.usnic_uiom_pd* @kzalloc(i32, i32) #1

declare dso_local %struct.usnic_uiom_pd* @ERR_PTR(i32) #1

declare dso_local i8* @iommu_domain_alloc(i32*) #1

declare dso_local i32 @usnic_err(i8*) #1

declare dso_local i32 @kfree(%struct.usnic_uiom_pd*) #1

declare dso_local i32 @iommu_set_fault_handler(i8*, i32, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
