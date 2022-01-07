; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_iommu_force_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_iommu_force_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_iommu = type { i32, i32, i32*, i64 }

@RK_MMU_DTE_ADDR = common dso_local global i32 0, align 4
@DTE_ADDR_DUMMY = common dso_local global i32 0, align 4
@RK_DTE_PT_ADDRESS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Error during raw reset. MMU_DTE_ADDR is not functioning\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@RK_MMU_CMD_FORCE_RESET = common dso_local global i32 0, align 4
@rk_iommu_is_reset_done = common dso_local global i32 0, align 4
@RK_MMU_FORCE_RESET_TIMEOUT_US = common dso_local global i32 0, align 4
@RK_MMU_POLL_TIMEOUT_US = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"FORCE_RESET command timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rk_iommu*)* @rk_iommu_force_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_iommu_force_reset(%struct.rk_iommu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rk_iommu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rk_iommu* %0, %struct.rk_iommu** %3, align 8
  %8 = load %struct.rk_iommu*, %struct.rk_iommu** %3, align 8
  %9 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %76

13:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %53, %13
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.rk_iommu*, %struct.rk_iommu** %3, align 8
  %17 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %56

20:                                               ; preds = %14
  %21 = load %struct.rk_iommu*, %struct.rk_iommu** %3, align 8
  %22 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @RK_MMU_DTE_ADDR, align 4
  %29 = load i32, i32* @DTE_ADDR_DUMMY, align 4
  %30 = call i32 @rk_iommu_write(i32 %27, i32 %28, i32 %29)
  %31 = load %struct.rk_iommu*, %struct.rk_iommu** %3, align 8
  %32 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @RK_MMU_DTE_ADDR, align 4
  %39 = call i32 @rk_iommu_read(i32 %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @DTE_ADDR_DUMMY, align 4
  %42 = load i32, i32* @RK_DTE_PT_ADDRESS_MASK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %40, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %20
  %46 = load %struct.rk_iommu*, %struct.rk_iommu** %3, align 8
  %47 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @EFAULT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %76

52:                                               ; preds = %20
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %14

56:                                               ; preds = %14
  %57 = load %struct.rk_iommu*, %struct.rk_iommu** %3, align 8
  %58 = load i32, i32* @RK_MMU_CMD_FORCE_RESET, align 4
  %59 = call i32 @rk_iommu_command(%struct.rk_iommu* %57, i32 %58)
  %60 = load i32, i32* @rk_iommu_is_reset_done, align 4
  %61 = load %struct.rk_iommu*, %struct.rk_iommu** %3, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @RK_MMU_FORCE_RESET_TIMEOUT_US, align 4
  %65 = load i32, i32* @RK_MMU_POLL_TIMEOUT_US, align 4
  %66 = call i32 @readx_poll_timeout(i32 %60, %struct.rk_iommu* %61, i32 %62, i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %56
  %70 = load %struct.rk_iommu*, %struct.rk_iommu** %3, align 8
  %71 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %2, align 4
  br label %76

75:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %69, %45, %12
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @rk_iommu_write(i32, i32, i32) #1

declare dso_local i32 @rk_iommu_read(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @rk_iommu_command(%struct.rk_iommu*, i32) #1

declare dso_local i32 @readx_poll_timeout(i32, %struct.rk_iommu*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
