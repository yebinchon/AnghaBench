; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_exynos-iommu.c_sysmmu_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_exynos-iommu.c_sysmmu_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysmmu_drvdata = type { i64 }

@CTRL_BLOCK = common dso_local global i32 0, align 4
@REG_MMU_CTRL = common dso_local global i64 0, align 8
@REG_MMU_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysmmu_drvdata*)* @sysmmu_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysmmu_block(%struct.sysmmu_drvdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sysmmu_drvdata*, align 8
  %4 = alloca i32, align 4
  store %struct.sysmmu_drvdata* %0, %struct.sysmmu_drvdata** %3, align 8
  store i32 120, i32* %4, align 4
  %5 = load i32, i32* @CTRL_BLOCK, align 4
  %6 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %3, align 8
  %7 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @REG_MMU_CTRL, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @writel(i32 %5, i64 %10)
  br label %12

12:                                               ; preds = %27, %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %3, align 8
  %17 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @REG_MMU_STATUS, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl(i64 %20)
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %15, %12
  %26 = phi i1 [ false, %12 ], [ %24, %15 ]
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %4, align 4
  br label %12

30:                                               ; preds = %25
  %31 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %3, align 8
  %32 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @REG_MMU_STATUS, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @readl(i64 %35)
  %37 = and i32 %36, 1
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %30
  %40 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %3, align 8
  %41 = call i32 @sysmmu_unblock(%struct.sysmmu_drvdata* %40)
  store i32 0, i32* %2, align 4
  br label %43

42:                                               ; preds = %30
  store i32 1, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @sysmmu_unblock(%struct.sysmmu_drvdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
