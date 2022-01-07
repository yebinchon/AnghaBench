; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_kms.c__dpu_kms_mmu_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_kms.c__dpu_kms_mmu_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_kms = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.msm_mmu* }
%struct.msm_mmu = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.msm_mmu*, i8**, i32)* }

@iommu_ports = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_kms*)* @_dpu_kms_mmu_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dpu_kms_mmu_destroy(%struct.dpu_kms* %0) #0 {
  %2 = alloca %struct.dpu_kms*, align 8
  %3 = alloca %struct.msm_mmu*, align 8
  store %struct.dpu_kms* %0, %struct.dpu_kms** %2, align 8
  %4 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %5 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = icmp ne %struct.TYPE_6__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %36

10:                                               ; preds = %1
  %11 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %12 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.msm_mmu*, %struct.msm_mmu** %15, align 8
  store %struct.msm_mmu* %16, %struct.msm_mmu** %3, align 8
  %17 = load %struct.msm_mmu*, %struct.msm_mmu** %3, align 8
  %18 = getelementptr inbounds %struct.msm_mmu, %struct.msm_mmu* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32 (%struct.msm_mmu*, i8**, i32)*, i32 (%struct.msm_mmu*, i8**, i32)** %20, align 8
  %22 = load %struct.msm_mmu*, %struct.msm_mmu** %3, align 8
  %23 = load i64, i64* @iommu_ports, align 8
  %24 = inttoptr i64 %23 to i8**
  %25 = load i64, i64* @iommu_ports, align 8
  %26 = call i32 @ARRAY_SIZE(i64 %25)
  %27 = call i32 %21(%struct.msm_mmu* %22, i8** %24, i32 %26)
  %28 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %29 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = call i32 @msm_gem_address_space_put(%struct.TYPE_6__* %31)
  %33 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %34 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %35, align 8
  br label %36

36:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i64) #1

declare dso_local i32 @msm_gem_address_space_put(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
