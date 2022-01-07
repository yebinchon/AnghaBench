; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_iommu_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_iommu_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_iommu = type { i32, i32, i32, i32* }

@RK_MMU_INT_MASK = common dso_local global i32 0, align 4
@RK_MMU_DTE_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rk_iommu*)* @rk_iommu_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk_iommu_disable(%struct.rk_iommu* %0) #0 {
  %2 = alloca %struct.rk_iommu*, align 8
  %3 = alloca i32, align 4
  store %struct.rk_iommu* %0, %struct.rk_iommu** %2, align 8
  %4 = load %struct.rk_iommu*, %struct.rk_iommu** %2, align 8
  %5 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.rk_iommu*, %struct.rk_iommu** %2, align 8
  %8 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @clk_bulk_enable(i32 %6, i32 %9)
  %11 = call i32 @WARN_ON(i32 %10)
  %12 = load %struct.rk_iommu*, %struct.rk_iommu** %2, align 8
  %13 = call i32 @rk_iommu_enable_stall(%struct.rk_iommu* %12)
  %14 = load %struct.rk_iommu*, %struct.rk_iommu** %2, align 8
  %15 = call i32 @rk_iommu_disable_paging(%struct.rk_iommu* %14)
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %41, %1
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.rk_iommu*, %struct.rk_iommu** %2, align 8
  %19 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %16
  %23 = load %struct.rk_iommu*, %struct.rk_iommu** %2, align 8
  %24 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @RK_MMU_INT_MASK, align 4
  %31 = call i32 @rk_iommu_write(i32 %29, i32 %30, i32 0)
  %32 = load %struct.rk_iommu*, %struct.rk_iommu** %2, align 8
  %33 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @RK_MMU_DTE_ADDR, align 4
  %40 = call i32 @rk_iommu_write(i32 %38, i32 %39, i32 0)
  br label %41

41:                                               ; preds = %22
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %16

44:                                               ; preds = %16
  %45 = load %struct.rk_iommu*, %struct.rk_iommu** %2, align 8
  %46 = call i32 @rk_iommu_disable_stall(%struct.rk_iommu* %45)
  %47 = load %struct.rk_iommu*, %struct.rk_iommu** %2, align 8
  %48 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.rk_iommu*, %struct.rk_iommu** %2, align 8
  %51 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @clk_bulk_disable(i32 %49, i32 %52)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @clk_bulk_enable(i32, i32) #1

declare dso_local i32 @rk_iommu_enable_stall(%struct.rk_iommu*) #1

declare dso_local i32 @rk_iommu_disable_paging(%struct.rk_iommu*) #1

declare dso_local i32 @rk_iommu_write(i32, i32, i32) #1

declare dso_local i32 @rk_iommu_disable_stall(%struct.rk_iommu*) #1

declare dso_local i32 @clk_bulk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
