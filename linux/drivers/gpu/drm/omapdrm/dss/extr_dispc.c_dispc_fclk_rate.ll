; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_fclk_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_fclk_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_device = type { i32 }
%struct.dss_pll = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@DSS_CLK_SRC_FCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dispc_device*)* @dispc_fclk_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dispc_fclk_rate(%struct.dispc_device* %0) #0 {
  %2 = alloca %struct.dispc_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dss_pll*, align 8
  %6 = alloca i32, align 4
  store %struct.dispc_device* %0, %struct.dispc_device** %2, align 8
  %7 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %8 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @dss_get_dispc_clk_source(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @DSS_CLK_SRC_FCK, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %16 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @dss_get_dispc_clk_rate(i32 %17)
  store i64 %18, i64* %3, align 8
  br label %35

19:                                               ; preds = %1
  %20 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %21 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call %struct.dss_pll* @dss_pll_find_by_src(i32 %22, i32 %23)
  store %struct.dss_pll* %24, %struct.dss_pll** %5, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @dss_pll_get_clkout_idx_for_src(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.dss_pll*, %struct.dss_pll** %5, align 8
  %28 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %3, align 8
  br label %35

35:                                               ; preds = %19, %14
  %36 = load i64, i64* %3, align 8
  ret i64 %36
}

declare dso_local i32 @dss_get_dispc_clk_source(i32) #1

declare dso_local i64 @dss_get_dispc_clk_rate(i32) #1

declare dso_local %struct.dss_pll* @dss_pll_find_by_src(i32, i32) #1

declare dso_local i32 @dss_pll_get_clkout_idx_for_src(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
