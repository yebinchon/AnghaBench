; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi_pll.c_hdmi_init_pll_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi_pll.c_hdmi_init_pll_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dss_device = type { i32 }
%struct.platform_device = type { i32 }
%struct.hdmi_pll_data = type { %struct.TYPE_2__*, i32, %struct.dss_pll }
%struct.TYPE_2__ = type { i32 }
%struct.dss_pll = type { i8*, i32*, i32*, %struct.clk*, i32, i32 }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"sys_clk\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"can't get sys_clk\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"hdmi\00", align 1
@DSS_PLL_HDMI = common dso_local global i32 0, align 4
@dss_omap4_hdmi_pll_hw = common dso_local global i32 0, align 4
@dss_omap5_hdmi_pll_hw = common dso_local global i32 0, align 4
@hdmi_pll_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dss_device*, %struct.platform_device*, %struct.hdmi_pll_data*)* @hdmi_init_pll_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_init_pll_data(%struct.dss_device* %0, %struct.platform_device* %1, %struct.hdmi_pll_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dss_device*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.hdmi_pll_data*, align 8
  %8 = alloca %struct.dss_pll*, align 8
  %9 = alloca %struct.clk*, align 8
  %10 = alloca i32, align 4
  store %struct.dss_device* %0, %struct.dss_device** %5, align 8
  store %struct.platform_device* %1, %struct.platform_device** %6, align 8
  store %struct.hdmi_pll_data* %2, %struct.hdmi_pll_data** %7, align 8
  %11 = load %struct.hdmi_pll_data*, %struct.hdmi_pll_data** %7, align 8
  %12 = getelementptr inbounds %struct.hdmi_pll_data, %struct.hdmi_pll_data* %11, i32 0, i32 2
  store %struct.dss_pll* %12, %struct.dss_pll** %8, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call %struct.clk* @devm_clk_get(i32* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.clk* %15, %struct.clk** %9, align 8
  %16 = load %struct.clk*, %struct.clk** %9, align 8
  %17 = call i64 @IS_ERR(%struct.clk* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = call i32 @DSSERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.clk*, %struct.clk** %9, align 8
  %22 = call i32 @PTR_ERR(%struct.clk* %21)
  store i32 %22, i32* %4, align 4
  br label %60

23:                                               ; preds = %3
  %24 = load %struct.dss_pll*, %struct.dss_pll** %8, align 8
  %25 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %24, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %25, align 8
  %26 = load i32, i32* @DSS_PLL_HDMI, align 4
  %27 = load %struct.dss_pll*, %struct.dss_pll** %8, align 8
  %28 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 4
  %29 = load %struct.hdmi_pll_data*, %struct.hdmi_pll_data** %7, align 8
  %30 = getelementptr inbounds %struct.hdmi_pll_data, %struct.hdmi_pll_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.dss_pll*, %struct.dss_pll** %8, align 8
  %33 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load %struct.clk*, %struct.clk** %9, align 8
  %35 = load %struct.dss_pll*, %struct.dss_pll** %8, align 8
  %36 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %35, i32 0, i32 3
  store %struct.clk* %34, %struct.clk** %36, align 8
  %37 = load %struct.hdmi_pll_data*, %struct.hdmi_pll_data** %7, align 8
  %38 = getelementptr inbounds %struct.hdmi_pll_data, %struct.hdmi_pll_data* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 4
  br i1 %42, label %43, label %46

43:                                               ; preds = %23
  %44 = load %struct.dss_pll*, %struct.dss_pll** %8, align 8
  %45 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %44, i32 0, i32 2
  store i32* @dss_omap4_hdmi_pll_hw, i32** %45, align 8
  br label %49

46:                                               ; preds = %23
  %47 = load %struct.dss_pll*, %struct.dss_pll** %8, align 8
  %48 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %47, i32 0, i32 2
  store i32* @dss_omap5_hdmi_pll_hw, i32** %48, align 8
  br label %49

49:                                               ; preds = %46, %43
  %50 = load %struct.dss_pll*, %struct.dss_pll** %8, align 8
  %51 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %50, i32 0, i32 1
  store i32* @hdmi_pll_ops, i32** %51, align 8
  %52 = load %struct.dss_device*, %struct.dss_device** %5, align 8
  %53 = load %struct.dss_pll*, %struct.dss_pll** %8, align 8
  %54 = call i32 @dss_pll_register(%struct.dss_device* %52, %struct.dss_pll* %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %4, align 4
  br label %60

59:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %57, %19
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.clk* @devm_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @DSSERR(i8*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @dss_pll_register(%struct.dss_device*, %struct.dss_pll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
