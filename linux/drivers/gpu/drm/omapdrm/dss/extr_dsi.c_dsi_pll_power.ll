; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_pll_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_pll_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DSI_QUIRK_PLL_PWR_BUG = common dso_local global i32 0, align 4
@DSI_PLL_POWER_ON_DIV = common dso_local global i32 0, align 4
@DSI_PLL_POWER_ON_ALL = common dso_local global i32 0, align 4
@DSI_CLK_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to set DSI PLL power mode to %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsi_data*, i32)* @dsi_pll_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_pll_power(%struct.dsi_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dsi_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dsi_data* %0, %struct.dsi_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %8 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @DSI_QUIRK_PLL_PWR_BUG, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @DSI_PLL_POWER_ON_DIV, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @DSI_PLL_POWER_ON_ALL, align 4
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %19, %15, %2
  %22 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %23 = load i32, i32* @DSI_CLK_CTRL, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @REG_FLD_MOD(%struct.dsi_data* %22, i32 %23, i32 %24, i32 31, i32 30)
  br label %26

26:                                               ; preds = %42, %21
  %27 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %28 = load i32, i32* @DSI_CLK_CTRL, align 4
  %29 = call i32 @dsi_read_reg(%struct.dsi_data* %27, i32 %28)
  %30 = call i32 @FLD_GET(i32 %29, i32 29, i32 28)
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %26
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  %36 = icmp sgt i32 %35, 1000
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @DSSERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %45

42:                                               ; preds = %33
  %43 = call i32 @udelay(i32 1)
  br label %26

44:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %37
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @REG_FLD_MOD(%struct.dsi_data*, i32, i32, i32, i32) #1

declare dso_local i32 @FLD_GET(i32, i32, i32) #1

declare dso_local i32 @dsi_read_reg(%struct.dsi_data*, i32) #1

declare dso_local i32 @DSSERR(i8*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
