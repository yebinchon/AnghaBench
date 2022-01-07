; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_virtio-iommu.c_viommu_add_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_virtio-iommu.c_viommu_add_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.viommu_domain = type { i32, i32 }
%struct.viommu_mapping = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.viommu_domain*, i64, i32, i64, i32)* @viommu_add_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viommu_add_mapping(%struct.viommu_domain* %0, i64 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.viommu_domain*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.viommu_mapping*, align 8
  store %struct.viommu_domain* %0, %struct.viommu_domain** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.viommu_mapping* @kzalloc(i32 24, i32 %14)
  store %struct.viommu_mapping* %15, %struct.viommu_mapping** %13, align 8
  %16 = load %struct.viommu_mapping*, %struct.viommu_mapping** %13, align 8
  %17 = icmp ne %struct.viommu_mapping* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %52

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.viommu_mapping*, %struct.viommu_mapping** %13, align 8
  %24 = getelementptr inbounds %struct.viommu_mapping, %struct.viommu_mapping* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.viommu_mapping*, %struct.viommu_mapping** %13, align 8
  %27 = getelementptr inbounds %struct.viommu_mapping, %struct.viommu_mapping* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i64 %25, i64* %28, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %10, align 8
  %31 = add i64 %29, %30
  %32 = sub i64 %31, 1
  %33 = load %struct.viommu_mapping*, %struct.viommu_mapping** %13, align 8
  %34 = getelementptr inbounds %struct.viommu_mapping, %struct.viommu_mapping* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i64 %32, i64* %35, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.viommu_mapping*, %struct.viommu_mapping** %13, align 8
  %38 = getelementptr inbounds %struct.viommu_mapping, %struct.viommu_mapping* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.viommu_domain*, %struct.viommu_domain** %7, align 8
  %40 = getelementptr inbounds %struct.viommu_domain, %struct.viommu_domain* %39, i32 0, i32 0
  %41 = load i64, i64* %12, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.viommu_mapping*, %struct.viommu_mapping** %13, align 8
  %44 = getelementptr inbounds %struct.viommu_mapping, %struct.viommu_mapping* %43, i32 0, i32 0
  %45 = load %struct.viommu_domain*, %struct.viommu_domain** %7, align 8
  %46 = getelementptr inbounds %struct.viommu_domain, %struct.viommu_domain* %45, i32 0, i32 1
  %47 = call i32 @interval_tree_insert(%struct.TYPE_2__* %44, i32* %46)
  %48 = load %struct.viommu_domain*, %struct.viommu_domain** %7, align 8
  %49 = getelementptr inbounds %struct.viommu_domain, %struct.viommu_domain* %48, i32 0, i32 0
  %50 = load i64, i64* %12, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %21, %18
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local %struct.viommu_mapping* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @interval_tree_insert(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
