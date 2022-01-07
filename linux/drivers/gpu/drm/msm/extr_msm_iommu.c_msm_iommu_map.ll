; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_iommu.c_msm_iommu_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_iommu.c_msm_iommu_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_mmu = type { i32 }
%struct.sg_table = type { i32, i32 }
%struct.msm_iommu = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_mmu*, i32, %struct.sg_table*, i32, i32)* @msm_iommu_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_iommu_map(%struct.msm_mmu* %0, i32 %1, %struct.sg_table* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.msm_mmu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sg_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.msm_iommu*, align 8
  %12 = alloca i64, align 8
  store %struct.msm_mmu* %0, %struct.msm_mmu** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sg_table* %2, %struct.sg_table** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.msm_mmu*, %struct.msm_mmu** %6, align 8
  %14 = call %struct.msm_iommu* @to_msm_iommu(%struct.msm_mmu* %13)
  store %struct.msm_iommu* %14, %struct.msm_iommu** %11, align 8
  %15 = load %struct.msm_iommu*, %struct.msm_iommu** %11, align 8
  %16 = getelementptr inbounds %struct.msm_iommu, %struct.msm_iommu* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  %20 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  %23 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i64 @iommu_map_sg(i32 %17, i32 %18, i32 %21, i32 %24, i32 %25)
  store i64 %26, i64* %12, align 8
  %27 = load i64, i64* %12, align 8
  %28 = icmp ne i64 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @WARN_ON(i32 %30)
  %32 = load i64, i64* %12, align 8
  %33 = load i32, i32* %9, align 4
  %34 = zext i32 %33 to i64
  %35 = icmp eq i64 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %5
  br label %40

37:                                               ; preds = %5
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  br label %40

40:                                               ; preds = %37, %36
  %41 = phi i32 [ 0, %36 ], [ %39, %37 ]
  ret i32 %41
}

declare dso_local %struct.msm_iommu* @to_msm_iommu(%struct.msm_mmu*) #1

declare dso_local i64 @iommu_map_sg(i32, i32, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
