; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_bus_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_bus_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_type = type { i32 }
%struct.iommu_ops = type { i32 }
%struct.notifier_block = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@iommu_bus_notifier = common dso_local global i32 0, align 4
@add_iommu_group = common dso_local global i32 0, align 4
@remove_iommu_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bus_type*, %struct.iommu_ops*)* @iommu_bus_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iommu_bus_init(%struct.bus_type* %0, %struct.iommu_ops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bus_type*, align 8
  %5 = alloca %struct.iommu_ops*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.notifier_block*, align 8
  store %struct.bus_type* %0, %struct.bus_type** %4, align 8
  store %struct.iommu_ops* %1, %struct.iommu_ops** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.notifier_block* @kzalloc(i32 4, i32 %8)
  store %struct.notifier_block* %9, %struct.notifier_block** %7, align 8
  %10 = load %struct.notifier_block*, %struct.notifier_block** %7, align 8
  %11 = icmp ne %struct.notifier_block* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %44

15:                                               ; preds = %2
  %16 = load i32, i32* @iommu_bus_notifier, align 4
  %17 = load %struct.notifier_block*, %struct.notifier_block** %7, align 8
  %18 = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %20 = load %struct.notifier_block*, %struct.notifier_block** %7, align 8
  %21 = call i32 @bus_register_notifier(%struct.bus_type* %19, %struct.notifier_block* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %40

25:                                               ; preds = %15
  %26 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %27 = load i32, i32* @add_iommu_group, align 4
  %28 = call i32 @bus_for_each_dev(%struct.bus_type* %26, i32* null, i32* null, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %33

32:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %44

33:                                               ; preds = %31
  %34 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %35 = load i32, i32* @remove_iommu_group, align 4
  %36 = call i32 @bus_for_each_dev(%struct.bus_type* %34, i32* null, i32* null, i32 %35)
  %37 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %38 = load %struct.notifier_block*, %struct.notifier_block** %7, align 8
  %39 = call i32 @bus_unregister_notifier(%struct.bus_type* %37, %struct.notifier_block* %38)
  br label %40

40:                                               ; preds = %33, %24
  %41 = load %struct.notifier_block*, %struct.notifier_block** %7, align 8
  %42 = call i32 @kfree(%struct.notifier_block* %41)
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %32, %12
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.notifier_block* @kzalloc(i32, i32) #1

declare dso_local i32 @bus_register_notifier(%struct.bus_type*, %struct.notifier_block*) #1

declare dso_local i32 @bus_for_each_dev(%struct.bus_type*, i32*, i32*, i32) #1

declare dso_local i32 @bus_unregister_notifier(%struct.bus_type*, %struct.notifier_block*) #1

declare dso_local i32 @kfree(%struct.notifier_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
