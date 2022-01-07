; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_iommu_v2.c_etnaviv_iommuv2_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_iommu_v2.c_etnaviv_iommuv2_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gpu = type { i32 }
%struct.etnaviv_iommu_context = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"unhandled GPU security mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etnaviv_gpu*, %struct.etnaviv_iommu_context*)* @etnaviv_iommuv2_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etnaviv_iommuv2_restore(%struct.etnaviv_gpu* %0, %struct.etnaviv_iommu_context* %1) #0 {
  %3 = alloca %struct.etnaviv_gpu*, align 8
  %4 = alloca %struct.etnaviv_iommu_context*, align 8
  store %struct.etnaviv_gpu* %0, %struct.etnaviv_gpu** %3, align 8
  store %struct.etnaviv_iommu_context* %1, %struct.etnaviv_iommu_context** %4, align 8
  %5 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %6 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %16 [
    i32 128, label %8
    i32 129, label %12
  ]

8:                                                ; preds = %2
  %9 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %10 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %4, align 8
  %11 = call i32 @etnaviv_iommuv2_restore_nonsec(%struct.etnaviv_gpu* %9, %struct.etnaviv_iommu_context* %10)
  br label %18

12:                                               ; preds = %2
  %13 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %14 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %4, align 8
  %15 = call i32 @etnaviv_iommuv2_restore_sec(%struct.etnaviv_gpu* %13, %struct.etnaviv_iommu_context* %14)
  br label %18

16:                                               ; preds = %2
  %17 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %12, %8
  ret void
}

declare dso_local i32 @etnaviv_iommuv2_restore_nonsec(%struct.etnaviv_gpu*, %struct.etnaviv_iommu_context*) #1

declare dso_local i32 @etnaviv_iommuv2_restore_sec(%struct.etnaviv_gpu*, %struct.etnaviv_iommu_context*) #1

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
