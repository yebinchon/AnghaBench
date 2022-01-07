; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c_omap2_iommu_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c_omap2_iommu_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_iommu = type { i64, i32, i32, i64 }

@SZ_16K = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MMU_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s: version %d.%d\0A\00", align 1
@MMU_TTB = common dso_local global i32 0, align 4
@MMU_GP_REG_BUS_ERR_BACK_EN = common dso_local global i32 0, align 4
@MMU_GP_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_iommu*)* @omap2_iommu_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap2_iommu_enable(%struct.omap_iommu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_iommu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.omap_iommu* %0, %struct.omap_iommu** %3, align 8
  %6 = load %struct.omap_iommu*, %struct.omap_iommu** %3, align 8
  %7 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.omap_iommu*, %struct.omap_iommu** %3, align 8
  %12 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* @SZ_16K, align 4
  %16 = call i32 @IS_ALIGNED(i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %10, %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %67

21:                                               ; preds = %10
  %22 = load %struct.omap_iommu*, %struct.omap_iommu** %3, align 8
  %23 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @virt_to_phys(i64 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @SZ_16K, align 4
  %28 = call i32 @IS_ALIGNED(i32 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %21
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %67

33:                                               ; preds = %21
  %34 = load %struct.omap_iommu*, %struct.omap_iommu** %3, align 8
  %35 = load i32, i32* @MMU_REVISION, align 4
  %36 = call i32 @iommu_read_reg(%struct.omap_iommu* %34, i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load %struct.omap_iommu*, %struct.omap_iommu** %3, align 8
  %38 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.omap_iommu*, %struct.omap_iommu** %3, align 8
  %41 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = ashr i32 %43, 4
  %45 = and i32 %44, 15
  %46 = load i32, i32* %4, align 4
  %47 = and i32 %46, 15
  %48 = call i32 @dev_info(i32 %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45, i32 %47)
  %49 = load %struct.omap_iommu*, %struct.omap_iommu** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @MMU_TTB, align 4
  %52 = call i32 @iommu_write_reg(%struct.omap_iommu* %49, i32 %50, i32 %51)
  %53 = load %struct.omap_iommu*, %struct.omap_iommu** %3, align 8
  %54 = call i32 @dra7_cfg_dspsys_mmu(%struct.omap_iommu* %53, i32 1)
  %55 = load %struct.omap_iommu*, %struct.omap_iommu** %3, align 8
  %56 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %33
  %60 = load %struct.omap_iommu*, %struct.omap_iommu** %3, align 8
  %61 = load i32, i32* @MMU_GP_REG_BUS_ERR_BACK_EN, align 4
  %62 = load i32, i32* @MMU_GP_REG, align 4
  %63 = call i32 @iommu_write_reg(%struct.omap_iommu* %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %59, %33
  %65 = load %struct.omap_iommu*, %struct.omap_iommu** %3, align 8
  %66 = call i32 @__iommu_set_twl(%struct.omap_iommu* %65, i32 1)
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %64, %30, %18
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @virt_to_phys(i64) #1

declare dso_local i32 @iommu_read_reg(%struct.omap_iommu*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @iommu_write_reg(%struct.omap_iommu*, i32, i32) #1

declare dso_local i32 @dra7_cfg_dspsys_mmu(%struct.omap_iommu*, i32) #1

declare dso_local i32 @__iommu_set_twl(%struct.omap_iommu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
