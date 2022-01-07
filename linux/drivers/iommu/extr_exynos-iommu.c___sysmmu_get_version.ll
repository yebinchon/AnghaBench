; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_exynos-iommu.c___sysmmu_get_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_exynos-iommu.c___sysmmu_get_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysmmu_drvdata = type { i32, i32, i64 }

@REG_MMU_VERSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"hardware version: %d.%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sysmmu_drvdata*)* @__sysmmu_get_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__sysmmu_get_version(%struct.sysmmu_drvdata* %0) #0 {
  %2 = alloca %struct.sysmmu_drvdata*, align 8
  %3 = alloca i32, align 4
  store %struct.sysmmu_drvdata* %0, %struct.sysmmu_drvdata** %2, align 8
  %4 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %2, align 8
  %5 = call i32 @__sysmmu_enable_clocks(%struct.sysmmu_drvdata* %4)
  %6 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %2, align 8
  %7 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @REG_MMU_VERSION, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, -2147483647
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = call i32 @MAKE_MMU_VER(i32 1, i32 0)
  %16 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %2, align 8
  %17 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  br label %23

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @MMU_RAW_VER(i32 %19)
  %21 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %2, align 8
  %22 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  br label %23

23:                                               ; preds = %18, %14
  %24 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %2, align 8
  %25 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %2, align 8
  %28 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @MMU_MAJ_VER(i32 %29)
  %31 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %2, align 8
  %32 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @MMU_MIN_VER(i32 %33)
  %35 = call i32 @dev_dbg(i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %34)
  %36 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %2, align 8
  %37 = call i32 @__sysmmu_disable_clocks(%struct.sysmmu_drvdata* %36)
  ret void
}

declare dso_local i32 @__sysmmu_enable_clocks(%struct.sysmmu_drvdata*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @MAKE_MMU_VER(i32, i32) #1

declare dso_local i32 @MMU_RAW_VER(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @MMU_MAJ_VER(i32) #1

declare dso_local i32 @MMU_MIN_VER(i32) #1

declare dso_local i32 @__sysmmu_disable_clocks(%struct.sysmmu_drvdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
