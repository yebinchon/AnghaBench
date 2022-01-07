; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_iommu_enable_paging.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_iommu_enable_paging.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_iommu = type { i32, i32*, i32 }

@RK_MMU_CMD_ENABLE_PAGING = common dso_local global i32 0, align 4
@RK_MMU_POLL_PERIOD_US = common dso_local global i32 0, align 4
@RK_MMU_POLL_TIMEOUT_US = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Enable paging request timed out, status: %#08x\0A\00", align 1
@RK_MMU_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rk_iommu*)* @rk_iommu_enable_paging to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_iommu_enable_paging(%struct.rk_iommu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rk_iommu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rk_iommu* %0, %struct.rk_iommu** %3, align 8
  %7 = load %struct.rk_iommu*, %struct.rk_iommu** %3, align 8
  %8 = call i64 @rk_iommu_is_paging_enabled(%struct.rk_iommu* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %50

11:                                               ; preds = %1
  %12 = load %struct.rk_iommu*, %struct.rk_iommu** %3, align 8
  %13 = load i32, i32* @RK_MMU_CMD_ENABLE_PAGING, align 4
  %14 = call i32 @rk_iommu_command(%struct.rk_iommu* %12, i32 %13)
  %15 = load %struct.rk_iommu*, %struct.rk_iommu** %3, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @RK_MMU_POLL_PERIOD_US, align 4
  %19 = load i32, i32* @RK_MMU_POLL_TIMEOUT_US, align 4
  %20 = call i32 @readx_poll_timeout(i64 (%struct.rk_iommu*)* @rk_iommu_is_paging_enabled, %struct.rk_iommu* %15, i32 %16, i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %48

23:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %44, %23
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.rk_iommu*, %struct.rk_iommu** %3, align 8
  %27 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %24
  %31 = load %struct.rk_iommu*, %struct.rk_iommu** %3, align 8
  %32 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.rk_iommu*, %struct.rk_iommu** %3, align 8
  %35 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @RK_MMU_STATUS, align 4
  %42 = call i32 @rk_iommu_read(i32 %40, i32 %41)
  %43 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %30
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %24

47:                                               ; preds = %24
  br label %48

48:                                               ; preds = %47, %11
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %10
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @rk_iommu_is_paging_enabled(%struct.rk_iommu*) #1

declare dso_local i32 @rk_iommu_command(%struct.rk_iommu*, i32) #1

declare dso_local i32 @readx_poll_timeout(i64 (%struct.rk_iommu*)*, %struct.rk_iommu*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @rk_iommu_read(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
