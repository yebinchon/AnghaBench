; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_build_complete_ppr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_build_complete_ppr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_cmd = type { i32* }

@CMD_INV_IOMMU_PAGES_GN_MASK = common dso_local global i32 0, align 4
@PPR_STATUS_MASK = common dso_local global i32 0, align 4
@PPR_STATUS_SHIFT = common dso_local global i32 0, align 4
@CMD_COMPLETE_PPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iommu_cmd*, i32, i32, i32, i32, i32)* @build_complete_ppr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_complete_ppr(%struct.iommu_cmd* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.iommu_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iommu_cmd* %0, %struct.iommu_cmd** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load %struct.iommu_cmd*, %struct.iommu_cmd** %7, align 8
  %14 = call i32 @memset(%struct.iommu_cmd* %13, i32 0, i32 8)
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.iommu_cmd*, %struct.iommu_cmd** %7, align 8
  %17 = getelementptr inbounds %struct.iommu_cmd, %struct.iommu_cmd* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %15, i32* %19, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %6
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.iommu_cmd*, %struct.iommu_cmd** %7, align 8
  %25 = getelementptr inbounds %struct.iommu_cmd, %struct.iommu_cmd* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 %23, i32* %27, align 4
  %28 = load i32, i32* @CMD_INV_IOMMU_PAGES_GN_MASK, align 4
  %29 = load %struct.iommu_cmd*, %struct.iommu_cmd** %7, align 8
  %30 = getelementptr inbounds %struct.iommu_cmd, %struct.iommu_cmd* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  store i32 %28, i32* %32, align 4
  br label %33

33:                                               ; preds = %22, %6
  %34 = load i32, i32* %11, align 4
  %35 = and i32 %34, 511
  %36 = load %struct.iommu_cmd*, %struct.iommu_cmd** %7, align 8
  %37 = getelementptr inbounds %struct.iommu_cmd, %struct.iommu_cmd* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  store i32 %35, i32* %39, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @PPR_STATUS_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @PPR_STATUS_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = load %struct.iommu_cmd*, %struct.iommu_cmd** %7, align 8
  %46 = getelementptr inbounds %struct.iommu_cmd, %struct.iommu_cmd* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %44
  store i32 %50, i32* %48, align 4
  %51 = load %struct.iommu_cmd*, %struct.iommu_cmd** %7, align 8
  %52 = load i32, i32* @CMD_COMPLETE_PPR, align 4
  %53 = call i32 @CMD_SET_TYPE(%struct.iommu_cmd* %51, i32 %52)
  ret void
}

declare dso_local i32 @memset(%struct.iommu_cmd*, i32, i32) #1

declare dso_local i32 @CMD_SET_TYPE(%struct.iommu_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
