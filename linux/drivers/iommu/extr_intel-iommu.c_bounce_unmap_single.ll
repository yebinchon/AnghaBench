; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_bounce_unmap_single.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_bounce_unmap_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dmar_domain = type { i32 }

@VTD_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32, i64, i32, i64)* @bounce_unmap_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bounce_unmap_single(%struct.device* %0, i32 %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.dmar_domain*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i32, i32* @VTD_PAGE_SIZE, align 4
  %16 = call i64 @ALIGN(i64 %14, i32 %15)
  store i64 %16, i64* %11, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.dmar_domain* @find_domain(%struct.device* %17)
  store %struct.dmar_domain* %18, %struct.dmar_domain** %12, align 8
  %19 = load %struct.dmar_domain*, %struct.dmar_domain** %12, align 8
  %20 = icmp ne %struct.dmar_domain* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @WARN_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  br label %59

26:                                               ; preds = %5
  %27 = load %struct.dmar_domain*, %struct.dmar_domain** %12, align 8
  %28 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %27, i32 0, i32 0
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @intel_iommu_iova_to_phys(i32* %28, i32 %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @WARN_ON(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %59

38:                                               ; preds = %26
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @intel_unmap(%struct.device* %39, i32 %40, i64 %41)
  %43 = load i32, i32* %13, align 4
  %44 = call i64 @is_swiotlb_buffer(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %38
  %47 = load %struct.device*, %struct.device** %6, align 8
  %48 = load i32, i32* %13, align 4
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @swiotlb_tbl_unmap_single(%struct.device* %47, i32 %48, i64 %49, i64 %50, i32 %51, i64 %52)
  br label %54

54:                                               ; preds = %46, %38
  %55 = load %struct.device*, %struct.device** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @trace_bounce_unmap_single(%struct.device* %55, i32 %56, i64 %57)
  br label %59

59:                                               ; preds = %54, %37, %25
  ret void
}

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local %struct.dmar_domain* @find_domain(%struct.device*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @intel_iommu_iova_to_phys(i32*, i32) #1

declare dso_local i32 @intel_unmap(%struct.device*, i32, i64) #1

declare dso_local i64 @is_swiotlb_buffer(i32) #1

declare dso_local i32 @swiotlb_tbl_unmap_single(%struct.device*, i32, i64, i64, i32, i64) #1

declare dso_local i32 @trace_bounce_unmap_single(%struct.device*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
