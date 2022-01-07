; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_exynos-iommu.c___sysmmu_init_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_exynos-iommu.c___sysmmu_init_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysmmu_drvdata = type { i64, i64 }

@CFG_LRU = common dso_local global i32 0, align 4
@CFG_FLPDCACHE = common dso_local global i32 0, align 4
@CFG_SYSSEL = common dso_local global i32 0, align 4
@CFG_ACGEN = common dso_local global i32 0, align 4
@CFG_EAP = common dso_local global i32 0, align 4
@REG_MMU_CFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sysmmu_drvdata*)* @__sysmmu_init_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__sysmmu_init_config(%struct.sysmmu_drvdata* %0) #0 {
  %2 = alloca %struct.sysmmu_drvdata*, align 8
  %3 = alloca i32, align 4
  store %struct.sysmmu_drvdata* %0, %struct.sysmmu_drvdata** %2, align 8
  %4 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %2, align 8
  %5 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = call i64 @MAKE_MMU_VER(i32 3, i32 1)
  %8 = icmp sle i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @CFG_LRU, align 4
  %11 = call i32 @CFG_QOS(i32 15)
  %12 = or i32 %10, %11
  store i32 %12, i32* %3, align 4
  br label %34

13:                                               ; preds = %1
  %14 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %2, align 8
  %15 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @MAKE_MMU_VER(i32 3, i32 2)
  %18 = icmp sle i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load i32, i32* @CFG_LRU, align 4
  %21 = call i32 @CFG_QOS(i32 15)
  %22 = or i32 %20, %21
  %23 = load i32, i32* @CFG_FLPDCACHE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @CFG_SYSSEL, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %3, align 4
  br label %33

27:                                               ; preds = %13
  %28 = call i32 @CFG_QOS(i32 15)
  %29 = load i32, i32* @CFG_FLPDCACHE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @CFG_ACGEN, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %27, %19
  br label %34

34:                                               ; preds = %33, %9
  %35 = load i32, i32* @CFG_EAP, align 4
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %2, align 8
  %40 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @REG_MMU_CFG, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 %38, i64 %43)
  ret void
}

declare dso_local i64 @MAKE_MMU_VER(i32, i32) #1

declare dso_local i32 @CFG_QOS(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
