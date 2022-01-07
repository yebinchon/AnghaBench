; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_increase_address_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_increase_address_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protection_domain = type { i64, i32, i32* }

@PAGE_MODE_6_LEVEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.protection_domain*, i64, i32)* @increase_address_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @increase_address_space(%struct.protection_domain* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.protection_domain*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.protection_domain* %0, %struct.protection_domain** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.protection_domain*, %struct.protection_domain** %4, align 8
  %11 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %10, i32 0, i32 1
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.protection_domain*, %struct.protection_domain** %4, align 8
  %16 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @PM_LEVEL_SIZE(i64 %17)
  %19 = icmp ule i64 %14, %18
  br i1 %19, label %29, label %20

20:                                               ; preds = %3
  %21 = load %struct.protection_domain*, %struct.protection_domain** %4, align 8
  %22 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PAGE_MODE_6_LEVEL, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON_ONCE(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20, %3
  br label %55

30:                                               ; preds = %20
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @get_zeroed_page(i32 %31)
  %33 = inttoptr i64 %32 to i8*
  %34 = bitcast i8* %33 to i32*
  store i32* %34, i32** %9, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  br label %55

38:                                               ; preds = %30
  %39 = load %struct.protection_domain*, %struct.protection_domain** %4, align 8
  %40 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.protection_domain*, %struct.protection_domain** %4, align 8
  %43 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @iommu_virt_to_phys(i32* %44)
  %46 = call i32 @PM_LEVEL_PDE(i64 %41, i32 %45)
  %47 = load i32*, i32** %9, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = load %struct.protection_domain*, %struct.protection_domain** %4, align 8
  %50 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %49, i32 0, i32 2
  store i32* %48, i32** %50, align 8
  %51 = load %struct.protection_domain*, %struct.protection_domain** %4, align 8
  %52 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %52, align 8
  store i32 1, i32* %8, align 4
  br label %55

55:                                               ; preds = %38, %37, %29
  %56 = load %struct.protection_domain*, %struct.protection_domain** %4, align 8
  %57 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %56, i32 0, i32 1
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  %60 = load i32, i32* %8, align 4
  ret i32 %60
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @PM_LEVEL_SIZE(i64) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @PM_LEVEL_PDE(i64, i32) #1

declare dso_local i32 @iommu_virt_to_phys(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
