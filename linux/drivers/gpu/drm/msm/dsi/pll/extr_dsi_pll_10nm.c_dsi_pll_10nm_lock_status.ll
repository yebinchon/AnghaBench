; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll_10nm.c_dsi_pll_10nm_lock_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll_10nm.c_dsi_pll_10nm_lock_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_pll_10nm = type { i32, i64 }

@REG_DSI_10nm_PHY_PLL_COMMON_STATUS_ONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"DSI PLL(%d) lock failed, status=0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsi_pll_10nm*)* @dsi_pll_10nm_lock_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_pll_10nm_lock_status(%struct.dsi_pll_10nm* %0) #0 {
  %2 = alloca %struct.dsi_pll_10nm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dsi_pll_10nm* %0, %struct.dsi_pll_10nm** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 100, i32* %5, align 4
  store i32 5000, i32* %6, align 4
  %7 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %2, align 8
  %8 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @REG_DSI_10nm_PHY_PLL_COMMON_STATUS_ONE, align 8
  %11 = add nsw i64 %9, %10
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @BIT(i32 0)
  %15 = and i32 %13, %14
  %16 = icmp sgt i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @readl_poll_timeout_atomic(i64 %11, i32 %12, i32 %17, i32 100, i32 5000)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %2, align 8
  %23 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %21, %1
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @readl_poll_timeout_atomic(i64, i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
