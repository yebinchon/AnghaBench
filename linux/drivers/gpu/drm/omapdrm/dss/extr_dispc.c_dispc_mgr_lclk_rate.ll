; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_mgr_lclk_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_mgr_lclk_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_device = type { i32 }
%struct.dss_pll = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@DSS_CLK_SRC_FCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dispc_device*, i32)* @dispc_mgr_lclk_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dispc_mgr_lclk_rate(%struct.dispc_device* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.dispc_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dss_pll*, align 8
  %10 = alloca i32, align 4
  store %struct.dispc_device* %0, %struct.dispc_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @dss_mgr_is_lcd(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load %struct.dispc_device*, %struct.dispc_device** %4, align 8
  %16 = call i64 @dispc_fclk_rate(%struct.dispc_device* %15)
  store i64 %16, i64* %3, align 8
  br label %56

17:                                               ; preds = %2
  %18 = load %struct.dispc_device*, %struct.dispc_device** %4, align 8
  %19 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @dss_get_lcd_clk_source(i32 %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @DSS_CLK_SRC_FCK, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %17
  %27 = load %struct.dispc_device*, %struct.dispc_device** %4, align 8
  %28 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @dss_get_dispc_clk_rate(i32 %29)
  store i64 %30, i64* %7, align 8
  br label %47

31:                                               ; preds = %17
  %32 = load %struct.dispc_device*, %struct.dispc_device** %4, align 8
  %33 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call %struct.dss_pll* @dss_pll_find_by_src(i32 %34, i32 %35)
  store %struct.dss_pll* %36, %struct.dss_pll** %9, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @dss_pll_get_clkout_idx_for_src(i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load %struct.dss_pll*, %struct.dss_pll** %9, align 8
  %40 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %7, align 8
  br label %47

47:                                               ; preds = %31, %26
  %48 = load %struct.dispc_device*, %struct.dispc_device** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @DISPC_DIVISORo(i32 %49)
  %51 = call i32 @REG_GET(%struct.dispc_device* %48, i32 %50, i32 23, i32 16)
  store i32 %51, i32* %6, align 4
  %52 = load i64, i64* %7, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = udiv i64 %52, %54
  store i64 %55, i64* %3, align 8
  br label %56

56:                                               ; preds = %47, %14
  %57 = load i64, i64* %3, align 8
  ret i64 %57
}

declare dso_local i32 @dss_mgr_is_lcd(i32) #1

declare dso_local i64 @dispc_fclk_rate(%struct.dispc_device*) #1

declare dso_local i32 @dss_get_lcd_clk_source(i32, i32) #1

declare dso_local i64 @dss_get_dispc_clk_rate(i32) #1

declare dso_local %struct.dss_pll* @dss_pll_find_by_src(i32, i32) #1

declare dso_local i32 @dss_pll_get_clkout_idx_for_src(i32) #1

declare dso_local i32 @REG_GET(%struct.dispc_device*, i32, i32, i32) #1

declare dso_local i32 @DISPC_DIVISORo(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
