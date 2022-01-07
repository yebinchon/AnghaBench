; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_iommu.c_msm_iommu_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_iommu.c_msm_iommu_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_mmu = type { i32 }
%struct.device = type { i32 }
%struct.iommu_domain = type { i32 }
%struct.msm_iommu = type { %struct.msm_mmu, %struct.iommu_domain* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@funcs = common dso_local global i32 0, align 4
@msm_fault_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.msm_mmu* @msm_iommu_new(%struct.device* %0, %struct.iommu_domain* %1) #0 {
  %3 = alloca %struct.msm_mmu*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.iommu_domain*, align 8
  %6 = alloca %struct.msm_iommu*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.iommu_domain* %1, %struct.iommu_domain** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.msm_iommu* @kzalloc(i32 16, i32 %7)
  store %struct.msm_iommu* %8, %struct.msm_iommu** %6, align 8
  %9 = load %struct.msm_iommu*, %struct.msm_iommu** %6, align 8
  %10 = icmp ne %struct.msm_iommu* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.msm_mmu* @ERR_PTR(i32 %13)
  store %struct.msm_mmu* %14, %struct.msm_mmu** %3, align 8
  br label %29

15:                                               ; preds = %2
  %16 = load %struct.iommu_domain*, %struct.iommu_domain** %5, align 8
  %17 = load %struct.msm_iommu*, %struct.msm_iommu** %6, align 8
  %18 = getelementptr inbounds %struct.msm_iommu, %struct.msm_iommu* %17, i32 0, i32 1
  store %struct.iommu_domain* %16, %struct.iommu_domain** %18, align 8
  %19 = load %struct.msm_iommu*, %struct.msm_iommu** %6, align 8
  %20 = getelementptr inbounds %struct.msm_iommu, %struct.msm_iommu* %19, i32 0, i32 0
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call i32 @msm_mmu_init(%struct.msm_mmu* %20, %struct.device* %21, i32* @funcs)
  %23 = load %struct.iommu_domain*, %struct.iommu_domain** %5, align 8
  %24 = load i32, i32* @msm_fault_handler, align 4
  %25 = load %struct.msm_iommu*, %struct.msm_iommu** %6, align 8
  %26 = call i32 @iommu_set_fault_handler(%struct.iommu_domain* %23, i32 %24, %struct.msm_iommu* %25)
  %27 = load %struct.msm_iommu*, %struct.msm_iommu** %6, align 8
  %28 = getelementptr inbounds %struct.msm_iommu, %struct.msm_iommu* %27, i32 0, i32 0
  store %struct.msm_mmu* %28, %struct.msm_mmu** %3, align 8
  br label %29

29:                                               ; preds = %15, %11
  %30 = load %struct.msm_mmu*, %struct.msm_mmu** %3, align 8
  ret %struct.msm_mmu* %30
}

declare dso_local %struct.msm_iommu* @kzalloc(i32, i32) #1

declare dso_local %struct.msm_mmu* @ERR_PTR(i32) #1

declare dso_local i32 @msm_mmu_init(%struct.msm_mmu*, %struct.device*, i32*) #1

declare dso_local i32 @iommu_set_fault_handler(%struct.iommu_domain*, i32, %struct.msm_iommu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
