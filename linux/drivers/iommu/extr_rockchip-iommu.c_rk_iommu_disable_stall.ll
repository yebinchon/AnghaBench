; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_iommu_disable_stall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_iommu_disable_stall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_iommu = type { i32, i32*, i32 }

@RK_MMU_CMD_DISABLE_STALL = common dso_local global i32 0, align 4
@RK_MMU_POLL_PERIOD_US = common dso_local global i32 0, align 4
@RK_MMU_POLL_TIMEOUT_US = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Disable stall request timed out, status: %#08x\0A\00", align 1
@RK_MMU_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rk_iommu*)* @rk_iommu_disable_stall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_iommu_disable_stall(%struct.rk_iommu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rk_iommu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rk_iommu* %0, %struct.rk_iommu** %3, align 8
  %7 = load %struct.rk_iommu*, %struct.rk_iommu** %3, align 8
  %8 = call i32 @rk_iommu_is_stall_active(%struct.rk_iommu* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %53

11:                                               ; preds = %1
  %12 = load %struct.rk_iommu*, %struct.rk_iommu** %3, align 8
  %13 = load i32, i32* @RK_MMU_CMD_DISABLE_STALL, align 4
  %14 = call i32 @rk_iommu_command(%struct.rk_iommu* %12, i32 %13)
  %15 = load %struct.rk_iommu*, %struct.rk_iommu** %3, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* @RK_MMU_POLL_PERIOD_US, align 4
  %22 = load i32, i32* @RK_MMU_POLL_TIMEOUT_US, align 4
  %23 = call i32 @readx_poll_timeout(i32 (%struct.rk_iommu*)* @rk_iommu_is_stall_active, %struct.rk_iommu* %15, i32 %16, i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %47, %26
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.rk_iommu*, %struct.rk_iommu** %3, align 8
  %30 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %27
  %34 = load %struct.rk_iommu*, %struct.rk_iommu** %3, align 8
  %35 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.rk_iommu*, %struct.rk_iommu** %3, align 8
  %38 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @RK_MMU_STATUS, align 4
  %45 = call i32 @rk_iommu_read(i32 %43, i32 %44)
  %46 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %33
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %27

50:                                               ; preds = %27
  br label %51

51:                                               ; preds = %50, %11
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %10
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @rk_iommu_is_stall_active(%struct.rk_iommu*) #1

declare dso_local i32 @rk_iommu_command(%struct.rk_iommu*, i32) #1

declare dso_local i32 @readx_poll_timeout(i32 (%struct.rk_iommu*)*, %struct.rk_iommu*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @rk_iommu_read(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
