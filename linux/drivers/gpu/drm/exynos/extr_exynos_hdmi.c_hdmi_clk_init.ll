; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_clk_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_clk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_context = type { %struct.clk**, %struct.clk**, %struct.device*, %struct.hdmi_driver_data* }
%struct.clk = type { i32 }
%struct.device = type { i32 }
%struct.hdmi_driver_data = type { %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdmi_context*)* @hdmi_clk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_clk_init(%struct.hdmi_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdmi_context*, align 8
  %4 = alloca %struct.hdmi_driver_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.clk**, align 8
  %8 = alloca i32, align 4
  store %struct.hdmi_context* %0, %struct.hdmi_context** %3, align 8
  %9 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %10 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %9, i32 0, i32 3
  %11 = load %struct.hdmi_driver_data*, %struct.hdmi_driver_data** %10, align 8
  store %struct.hdmi_driver_data* %11, %struct.hdmi_driver_data** %4, align 8
  %12 = load %struct.hdmi_driver_data*, %struct.hdmi_driver_data** %4, align 8
  %13 = getelementptr inbounds %struct.hdmi_driver_data, %struct.hdmi_driver_data* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.hdmi_driver_data*, %struct.hdmi_driver_data** %4, align 8
  %17 = getelementptr inbounds %struct.hdmi_driver_data, %struct.hdmi_driver_data* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %15, %19
  store i32 %20, i32* %5, align 4
  %21 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %22 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %21, i32 0, i32 2
  %23 = load %struct.device*, %struct.device** %22, align 8
  store %struct.device* %23, %struct.device** %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %69

27:                                               ; preds = %1
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.clk** @devm_kcalloc(%struct.device* %28, i32 %29, i32 8, i32 %30)
  store %struct.clk** %31, %struct.clk*** %7, align 8
  %32 = load %struct.clk**, %struct.clk*** %7, align 8
  %33 = icmp ne %struct.clk** %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %69

37:                                               ; preds = %27
  %38 = load %struct.clk**, %struct.clk*** %7, align 8
  %39 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %40 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %39, i32 0, i32 1
  store %struct.clk** %38, %struct.clk*** %40, align 8
  %41 = load %struct.clk**, %struct.clk*** %7, align 8
  %42 = load %struct.hdmi_driver_data*, %struct.hdmi_driver_data** %4, align 8
  %43 = getelementptr inbounds %struct.hdmi_driver_data, %struct.hdmi_driver_data* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.clk*, %struct.clk** %41, i64 %46
  %48 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %49 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %48, i32 0, i32 0
  store %struct.clk** %47, %struct.clk*** %49, align 8
  %50 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %51 = load %struct.hdmi_driver_data*, %struct.hdmi_driver_data** %4, align 8
  %52 = getelementptr inbounds %struct.hdmi_driver_data, %struct.hdmi_driver_data* %51, i32 0, i32 1
  %53 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %54 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %53, i32 0, i32 1
  %55 = load %struct.clk**, %struct.clk*** %54, align 8
  %56 = call i32 @hdmi_clks_get(%struct.hdmi_context* %50, %struct.TYPE_2__* %52, %struct.clk** %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %37
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %2, align 4
  br label %69

61:                                               ; preds = %37
  %62 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %63 = load %struct.hdmi_driver_data*, %struct.hdmi_driver_data** %4, align 8
  %64 = getelementptr inbounds %struct.hdmi_driver_data, %struct.hdmi_driver_data* %63, i32 0, i32 0
  %65 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %66 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %65, i32 0, i32 0
  %67 = load %struct.clk**, %struct.clk*** %66, align 8
  %68 = call i32 @hdmi_clks_get(%struct.hdmi_context* %62, %struct.TYPE_2__* %64, %struct.clk** %67)
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %61, %59, %34, %26
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.clk** @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @hdmi_clks_get(%struct.hdmi_context*, %struct.TYPE_2__*, %struct.clk**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
