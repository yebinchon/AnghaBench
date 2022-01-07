; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_iommu.c_msm_iommu_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_iommu.c_msm_iommu_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_mmu = type { i32 }
%struct.msm_iommu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_mmu*, i8**, i32)* @msm_iommu_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_iommu_attach(%struct.msm_mmu* %0, i8** %1, i32 %2) #0 {
  %4 = alloca %struct.msm_mmu*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.msm_iommu*, align 8
  store %struct.msm_mmu* %0, %struct.msm_mmu** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.msm_mmu*, %struct.msm_mmu** %4, align 8
  %9 = call %struct.msm_iommu* @to_msm_iommu(%struct.msm_mmu* %8)
  store %struct.msm_iommu* %9, %struct.msm_iommu** %7, align 8
  %10 = load %struct.msm_iommu*, %struct.msm_iommu** %7, align 8
  %11 = getelementptr inbounds %struct.msm_iommu, %struct.msm_iommu* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.msm_mmu*, %struct.msm_mmu** %4, align 8
  %14 = getelementptr inbounds %struct.msm_mmu, %struct.msm_mmu* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @iommu_attach_device(i32 %12, i32 %15)
  ret i32 %16
}

declare dso_local %struct.msm_iommu* @to_msm_iommu(%struct.msm_mmu*) #1

declare dso_local i32 @iommu_attach_device(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
