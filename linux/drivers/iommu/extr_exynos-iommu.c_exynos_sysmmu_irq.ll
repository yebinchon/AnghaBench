; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_exynos-iommu.c_exynos_sysmmu_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_exynos-iommu.c_exynos_sysmmu_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysmmu_fault_info = type { i32, i32, i64 }
%struct.sysmmu_drvdata = type { i32, i32, i64, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@REG_INT_STATUS = common dso_local global i16 0, align 2
@REG_INT_CLEAR = common dso_local global i16 0, align 2
@sysmmu_faults = common dso_local global %struct.sysmmu_fault_info* null, align 8
@REG_V5_INT_STATUS = common dso_local global i16 0, align 2
@REG_V5_INT_CLEAR = common dso_local global i16 0, align 2
@sysmmu_v5_faults = common dso_local global %struct.sysmmu_fault_info* null, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @exynos_sysmmu_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_sysmmu_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sysmmu_drvdata*, align 8
  %6 = alloca %struct.sysmmu_fault_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.sysmmu_drvdata*
  store %struct.sysmmu_drvdata* %15, %struct.sysmmu_drvdata** %5, align 8
  store i32 -1, i32* %10, align 4
  %16 = load i32, i32* @ENOSYS, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %13, align 4
  %18 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %5, align 8
  %19 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %5, align 8
  %26 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @MMU_MAJ_VER(i32 %27)
  %29 = icmp slt i32 %28, 5
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load i16, i16* @REG_INT_STATUS, align 2
  store i16 %31, i16* %11, align 2
  %32 = load i16, i16* @REG_INT_CLEAR, align 2
  store i16 %32, i16* %12, align 2
  %33 = load %struct.sysmmu_fault_info*, %struct.sysmmu_fault_info** @sysmmu_faults, align 8
  store %struct.sysmmu_fault_info* %33, %struct.sysmmu_fault_info** %6, align 8
  %34 = load %struct.sysmmu_fault_info*, %struct.sysmmu_fault_info** @sysmmu_faults, align 8
  %35 = call i32 @ARRAY_SIZE(%struct.sysmmu_fault_info* %34)
  store i32 %35, i32* %8, align 4
  br label %42

36:                                               ; preds = %2
  %37 = load i16, i16* @REG_V5_INT_STATUS, align 2
  store i16 %37, i16* %11, align 2
  %38 = load i16, i16* @REG_V5_INT_CLEAR, align 2
  store i16 %38, i16* %12, align 2
  %39 = load %struct.sysmmu_fault_info*, %struct.sysmmu_fault_info** @sysmmu_v5_faults, align 8
  store %struct.sysmmu_fault_info* %39, %struct.sysmmu_fault_info** %6, align 8
  %40 = load %struct.sysmmu_fault_info*, %struct.sysmmu_fault_info** @sysmmu_v5_faults, align 8
  %41 = call i32 @ARRAY_SIZE(%struct.sysmmu_fault_info* %40)
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %36, %30
  %43 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %5, align 8
  %44 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %43, i32 0, i32 0
  %45 = call i32 @spin_lock(i32* %44)
  %46 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %5, align 8
  %47 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @clk_enable(i32 %48)
  %50 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %5, align 8
  %51 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i16, i16* %11, align 2
  %54 = zext i16 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = call i32 @readl(i64 %55)
  %57 = call i32 @__ffs(i32 %56)
  store i32 %57, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %70, %42
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %58
  %63 = load %struct.sysmmu_fault_info*, %struct.sysmmu_fault_info** %6, align 8
  %64 = getelementptr inbounds %struct.sysmmu_fault_info, %struct.sysmmu_fault_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %75

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %7, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %7, align 4
  %73 = load %struct.sysmmu_fault_info*, %struct.sysmmu_fault_info** %6, align 8
  %74 = getelementptr inbounds %struct.sysmmu_fault_info, %struct.sysmmu_fault_info* %73, i32 1
  store %struct.sysmmu_fault_info* %74, %struct.sysmmu_fault_info** %6, align 8
  br label %58

75:                                               ; preds = %68, %58
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp eq i32 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @BUG_ON(i32 %79)
  %81 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %5, align 8
  %82 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.sysmmu_fault_info*, %struct.sysmmu_fault_info** %6, align 8
  %85 = getelementptr inbounds %struct.sysmmu_fault_info, %struct.sysmmu_fault_info* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %83, %86
  %88 = call i32 @readl(i64 %87)
  store i32 %88, i32* %10, align 4
  %89 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %5, align 8
  %90 = load %struct.sysmmu_fault_info*, %struct.sysmmu_fault_info** %6, align 8
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @show_fault_information(%struct.sysmmu_drvdata* %89, %struct.sysmmu_fault_info* %90, i32 %91)
  %93 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %5, align 8
  %94 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %93, i32 0, i32 4
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = icmp ne %struct.TYPE_2__* %95, null
  br i1 %96, label %97, label %110

97:                                               ; preds = %75
  %98 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %5, align 8
  %99 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %98, i32 0, i32 4
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %5, align 8
  %103 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.sysmmu_fault_info*, %struct.sysmmu_fault_info** %6, align 8
  %107 = getelementptr inbounds %struct.sysmmu_fault_info, %struct.sysmmu_fault_info* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @report_iommu_fault(i32* %101, i32 %104, i32 %105, i32 %108)
  store i32 %109, i32* %13, align 4
  br label %110

110:                                              ; preds = %97, %75
  %111 = load i32, i32* %13, align 4
  %112 = icmp ne i32 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i32 @BUG_ON(i32 %113)
  %115 = load i32, i32* %9, align 4
  %116 = shl i32 1, %115
  %117 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %5, align 8
  %118 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load i16, i16* %12, align 2
  %121 = zext i16 %120 to i64
  %122 = add nsw i64 %119, %121
  %123 = call i32 @writel(i32 %116, i64 %122)
  %124 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %5, align 8
  %125 = call i32 @sysmmu_unblock(%struct.sysmmu_drvdata* %124)
  %126 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %5, align 8
  %127 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @clk_disable(i32 %128)
  %130 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %5, align 8
  %131 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %130, i32 0, i32 0
  %132 = call i32 @spin_unlock(i32* %131)
  %133 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %133
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @MMU_MAJ_VER(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.sysmmu_fault_info*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @show_fault_information(%struct.sysmmu_drvdata*, %struct.sysmmu_fault_info*, i32) #1

declare dso_local i32 @report_iommu_fault(i32*, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @sysmmu_unblock(%struct.sysmmu_drvdata*) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
