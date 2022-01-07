; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_kms.c__dpu_kms_mmu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_kms.c__dpu_kms_mmu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_kms = type { %struct.TYPE_9__, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.msm_gem_address_space* }
%struct.msm_gem_address_space = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_10__*, i32, i32)* }
%struct.TYPE_7__ = type { i32 }
%struct.iommu_domain = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@platform_bus_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"dpu1\00", align 1
@iommu_ports = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to attach iommu %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_kms*)* @_dpu_kms_mmu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dpu_kms_mmu_init(%struct.dpu_kms* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dpu_kms*, align 8
  %4 = alloca %struct.iommu_domain*, align 8
  %5 = alloca %struct.msm_gem_address_space*, align 8
  %6 = alloca i32, align 4
  store %struct.dpu_kms* %0, %struct.dpu_kms** %3, align 8
  %7 = call %struct.iommu_domain* @iommu_domain_alloc(i32* @platform_bus_type)
  store %struct.iommu_domain* %7, %struct.iommu_domain** %4, align 8
  %8 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %9 = icmp ne %struct.iommu_domain* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %61

11:                                               ; preds = %1
  %12 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %13 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32 4096, i32* %14, align 4
  %15 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %16 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  store i32 -1, i32* %17, align 4
  %18 = load %struct.dpu_kms*, %struct.dpu_kms** %3, align 8
  %19 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %18, i32 0, i32 1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %24 = call %struct.msm_gem_address_space* @msm_gem_address_space_create(i32 %22, %struct.iommu_domain* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.msm_gem_address_space* %24, %struct.msm_gem_address_space** %5, align 8
  %25 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %5, align 8
  %26 = call i64 @IS_ERR(%struct.msm_gem_address_space* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %11
  %29 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %30 = call i32 @iommu_domain_free(%struct.iommu_domain* %29)
  %31 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %5, align 8
  %32 = call i32 @PTR_ERR(%struct.msm_gem_address_space* %31)
  store i32 %32, i32* %2, align 4
  br label %61

33:                                               ; preds = %11
  %34 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %5, align 8
  %35 = getelementptr inbounds %struct.msm_gem_address_space, %struct.msm_gem_address_space* %34, i32 0, i32 0
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_10__*, i32, i32)*, i32 (%struct.TYPE_10__*, i32, i32)** %39, align 8
  %41 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %5, align 8
  %42 = getelementptr inbounds %struct.msm_gem_address_space, %struct.msm_gem_address_space* %41, i32 0, i32 0
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = load i32, i32* @iommu_ports, align 4
  %45 = load i32, i32* @iommu_ports, align 4
  %46 = call i32 @ARRAY_SIZE(i32 %45)
  %47 = call i32 %40(%struct.TYPE_10__* %43, i32 %44, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %33
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %5, align 8
  %54 = call i32 @msm_gem_address_space_put(%struct.msm_gem_address_space* %53)
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %61

56:                                               ; preds = %33
  %57 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %5, align 8
  %58 = load %struct.dpu_kms*, %struct.dpu_kms** %3, align 8
  %59 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  store %struct.msm_gem_address_space* %57, %struct.msm_gem_address_space** %60, align 8
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %56, %50, %28, %10
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.iommu_domain* @iommu_domain_alloc(i32*) #1

declare dso_local %struct.msm_gem_address_space* @msm_gem_address_space_create(i32, %struct.iommu_domain*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.msm_gem_address_space*) #1

declare dso_local i32 @iommu_domain_free(%struct.iommu_domain*) #1

declare dso_local i32 @PTR_ERR(%struct.msm_gem_address_space*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @DPU_ERROR(i8*, i32) #1

declare dso_local i32 @msm_gem_address_space_put(%struct.msm_gem_address_space*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
