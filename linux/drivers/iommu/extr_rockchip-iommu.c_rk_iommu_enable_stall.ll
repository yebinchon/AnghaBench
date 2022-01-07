; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_iommu_enable_stall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_iommu_enable_stall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_iommu = type { i32, i32*, i32 }

@RK_MMU_CMD_ENABLE_STALL = common dso_local global i32 0, align 4
@RK_MMU_POLL_PERIOD_US = common dso_local global i32 0, align 4
@RK_MMU_POLL_TIMEOUT_US = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Enable stall request timed out, status: %#08x\0A\00", align 1
@RK_MMU_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rk_iommu*)* @rk_iommu_enable_stall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_iommu_enable_stall(%struct.rk_iommu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rk_iommu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rk_iommu* %0, %struct.rk_iommu** %3, align 8
  %7 = load %struct.rk_iommu*, %struct.rk_iommu** %3, align 8
  %8 = call i64 @rk_iommu_is_stall_active(%struct.rk_iommu* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %55

11:                                               ; preds = %1
  %12 = load %struct.rk_iommu*, %struct.rk_iommu** %3, align 8
  %13 = call i32 @rk_iommu_is_paging_enabled(%struct.rk_iommu* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %55

16:                                               ; preds = %11
  %17 = load %struct.rk_iommu*, %struct.rk_iommu** %3, align 8
  %18 = load i32, i32* @RK_MMU_CMD_ENABLE_STALL, align 4
  %19 = call i32 @rk_iommu_command(%struct.rk_iommu* %17, i32 %18)
  %20 = load %struct.rk_iommu*, %struct.rk_iommu** %3, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @RK_MMU_POLL_PERIOD_US, align 4
  %24 = load i32, i32* @RK_MMU_POLL_TIMEOUT_US, align 4
  %25 = call i32 @readx_poll_timeout(i64 (%struct.rk_iommu*)* @rk_iommu_is_stall_active, %struct.rk_iommu* %20, i32 %21, i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %49, %28
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.rk_iommu*, %struct.rk_iommu** %3, align 8
  %32 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %29
  %36 = load %struct.rk_iommu*, %struct.rk_iommu** %3, align 8
  %37 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.rk_iommu*, %struct.rk_iommu** %3, align 8
  %40 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @RK_MMU_STATUS, align 4
  %47 = call i32 @rk_iommu_read(i32 %45, i32 %46)
  %48 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %35
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %29

52:                                               ; preds = %29
  br label %53

53:                                               ; preds = %52, %16
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %15, %10
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @rk_iommu_is_stall_active(%struct.rk_iommu*) #1

declare dso_local i32 @rk_iommu_is_paging_enabled(%struct.rk_iommu*) #1

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
