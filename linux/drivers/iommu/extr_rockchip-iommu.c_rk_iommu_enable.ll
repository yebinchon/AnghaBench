; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_iommu_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_iommu_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_iommu = type { i32, i32, i32, i32*, %struct.iommu_domain* }
%struct.iommu_domain = type { i32 }
%struct.rk_iommu_domain = type { i32 }

@RK_MMU_DTE_ADDR = common dso_local global i32 0, align 4
@RK_MMU_CMD_ZAP_CACHE = common dso_local global i32 0, align 4
@RK_MMU_INT_MASK = common dso_local global i32 0, align 4
@RK_MMU_IRQ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rk_iommu*)* @rk_iommu_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_iommu_enable(%struct.rk_iommu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rk_iommu*, align 8
  %4 = alloca %struct.iommu_domain*, align 8
  %5 = alloca %struct.rk_iommu_domain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rk_iommu* %0, %struct.rk_iommu** %3, align 8
  %8 = load %struct.rk_iommu*, %struct.rk_iommu** %3, align 8
  %9 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %8, i32 0, i32 4
  %10 = load %struct.iommu_domain*, %struct.iommu_domain** %9, align 8
  store %struct.iommu_domain* %10, %struct.iommu_domain** %4, align 8
  %11 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %12 = call %struct.rk_iommu_domain* @to_rk_domain(%struct.iommu_domain* %11)
  store %struct.rk_iommu_domain* %12, %struct.rk_iommu_domain** %5, align 8
  %13 = load %struct.rk_iommu*, %struct.rk_iommu** %3, align 8
  %14 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.rk_iommu*, %struct.rk_iommu** %3, align 8
  %17 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @clk_bulk_enable(i32 %15, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %93

24:                                               ; preds = %1
  %25 = load %struct.rk_iommu*, %struct.rk_iommu** %3, align 8
  %26 = call i32 @rk_iommu_enable_stall(%struct.rk_iommu* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %84

30:                                               ; preds = %24
  %31 = load %struct.rk_iommu*, %struct.rk_iommu** %3, align 8
  %32 = call i32 @rk_iommu_force_reset(%struct.rk_iommu* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %81

36:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %75, %36
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.rk_iommu*, %struct.rk_iommu** %3, align 8
  %40 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %78

43:                                               ; preds = %37
  %44 = load %struct.rk_iommu*, %struct.rk_iommu** %3, align 8
  %45 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @RK_MMU_DTE_ADDR, align 4
  %52 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %5, align 8
  %53 = getelementptr inbounds %struct.rk_iommu_domain, %struct.rk_iommu_domain* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @rk_iommu_write(i32 %50, i32 %51, i32 %54)
  %56 = load %struct.rk_iommu*, %struct.rk_iommu** %3, align 8
  %57 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @RK_MMU_CMD_ZAP_CACHE, align 4
  %64 = call i32 @rk_iommu_base_command(i32 %62, i32 %63)
  %65 = load %struct.rk_iommu*, %struct.rk_iommu** %3, align 8
  %66 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @RK_MMU_INT_MASK, align 4
  %73 = load i32, i32* @RK_MMU_IRQ_MASK, align 4
  %74 = call i32 @rk_iommu_write(i32 %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %43
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %37

78:                                               ; preds = %37
  %79 = load %struct.rk_iommu*, %struct.rk_iommu** %3, align 8
  %80 = call i32 @rk_iommu_enable_paging(%struct.rk_iommu* %79)
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %78, %35
  %82 = load %struct.rk_iommu*, %struct.rk_iommu** %3, align 8
  %83 = call i32 @rk_iommu_disable_stall(%struct.rk_iommu* %82)
  br label %84

84:                                               ; preds = %81, %29
  %85 = load %struct.rk_iommu*, %struct.rk_iommu** %3, align 8
  %86 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.rk_iommu*, %struct.rk_iommu** %3, align 8
  %89 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @clk_bulk_disable(i32 %87, i32 %90)
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %84, %22
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.rk_iommu_domain* @to_rk_domain(%struct.iommu_domain*) #1

declare dso_local i32 @clk_bulk_enable(i32, i32) #1

declare dso_local i32 @rk_iommu_enable_stall(%struct.rk_iommu*) #1

declare dso_local i32 @rk_iommu_force_reset(%struct.rk_iommu*) #1

declare dso_local i32 @rk_iommu_write(i32, i32, i32) #1

declare dso_local i32 @rk_iommu_base_command(i32, i32) #1

declare dso_local i32 @rk_iommu_enable_paging(%struct.rk_iommu*) #1

declare dso_local i32 @rk_iommu_disable_stall(%struct.rk_iommu*) #1

declare dso_local i32 @clk_bulk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
