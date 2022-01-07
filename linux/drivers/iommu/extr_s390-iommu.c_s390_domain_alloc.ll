; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_s390-iommu.c_s390_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_s390-iommu.c_s390_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.s390_domain = type { %struct.iommu_domain, i32, i32, i32, i32 }

@IOMMU_DOMAIN_UNMANAGED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iommu_domain* (i32)* @s390_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iommu_domain* @s390_domain_alloc(i32 %0) #0 {
  %2 = alloca %struct.iommu_domain*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.s390_domain*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @IOMMU_DOMAIN_UNMANAGED, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.iommu_domain* null, %struct.iommu_domain** %2, align 8
  br label %38

9:                                                ; preds = %1
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.s390_domain* @kzalloc(i32 20, i32 %10)
  store %struct.s390_domain* %11, %struct.s390_domain** %4, align 8
  %12 = load %struct.s390_domain*, %struct.s390_domain** %4, align 8
  %13 = icmp ne %struct.s390_domain* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  store %struct.iommu_domain* null, %struct.iommu_domain** %2, align 8
  br label %38

15:                                               ; preds = %9
  %16 = call i32 (...) @dma_alloc_cpu_table()
  %17 = load %struct.s390_domain*, %struct.s390_domain** %4, align 8
  %18 = getelementptr inbounds %struct.s390_domain, %struct.s390_domain* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  %19 = load %struct.s390_domain*, %struct.s390_domain** %4, align 8
  %20 = getelementptr inbounds %struct.s390_domain, %struct.s390_domain* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = load %struct.s390_domain*, %struct.s390_domain** %4, align 8
  %25 = call i32 @kfree(%struct.s390_domain* %24)
  store %struct.iommu_domain* null, %struct.iommu_domain** %2, align 8
  br label %38

26:                                               ; preds = %15
  %27 = load %struct.s390_domain*, %struct.s390_domain** %4, align 8
  %28 = getelementptr inbounds %struct.s390_domain, %struct.s390_domain* %27, i32 0, i32 3
  %29 = call i32 @spin_lock_init(i32* %28)
  %30 = load %struct.s390_domain*, %struct.s390_domain** %4, align 8
  %31 = getelementptr inbounds %struct.s390_domain, %struct.s390_domain* %30, i32 0, i32 2
  %32 = call i32 @spin_lock_init(i32* %31)
  %33 = load %struct.s390_domain*, %struct.s390_domain** %4, align 8
  %34 = getelementptr inbounds %struct.s390_domain, %struct.s390_domain* %33, i32 0, i32 1
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.s390_domain*, %struct.s390_domain** %4, align 8
  %37 = getelementptr inbounds %struct.s390_domain, %struct.s390_domain* %36, i32 0, i32 0
  store %struct.iommu_domain* %37, %struct.iommu_domain** %2, align 8
  br label %38

38:                                               ; preds = %26, %23, %14, %8
  %39 = load %struct.iommu_domain*, %struct.iommu_domain** %2, align 8
  ret %struct.iommu_domain* %39
}

declare dso_local %struct.s390_domain* @kzalloc(i32, i32) #1

declare dso_local i32 @dma_alloc_cpu_table(...) #1

declare dso_local i32 @kfree(%struct.s390_domain*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
