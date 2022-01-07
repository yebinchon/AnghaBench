; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll.c_msm_dsi_pll_helper_unregister_clks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll.c_msm_dsi_pll_helper_unregister_clks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.clk = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_dsi_pll_helper_unregister_clks(%struct.platform_device* %0, %struct.clk** %1, i32 %2) #0 {
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.clk**, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.clk** %1, %struct.clk*** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @of_clk_del_provider(i32 %10)
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.clk**, %struct.clk*** %5, align 8
  %16 = icmp ne %struct.clk** %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %3
  br label %34

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %31, %18
  %20 = load %struct.clk**, %struct.clk*** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.clk*, %struct.clk** %20, i64 %23
  %25 = load %struct.clk*, %struct.clk** %24, align 8
  %26 = call i32 @clk_unregister(%struct.clk* %25)
  %27 = load %struct.clk**, %struct.clk*** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.clk*, %struct.clk** %27, i64 %29
  store %struct.clk* null, %struct.clk** %30, align 8
  br label %31

31:                                               ; preds = %19
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %19, label %34

34:                                               ; preds = %17, %31
  ret void
}

declare dso_local i32 @of_clk_del_provider(i32) #1

declare dso_local i32 @clk_unregister(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
