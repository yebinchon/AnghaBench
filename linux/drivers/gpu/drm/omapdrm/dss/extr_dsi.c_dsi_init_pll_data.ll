; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_init_pll_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_init_pll_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dss_device = type { i32 }
%struct.dsi_data = type { i64, %struct.TYPE_2__*, i32, i32, %struct.dss_pll }
%struct.TYPE_2__ = type { i32 }
%struct.dss_pll = type { i8*, i32*, i32, i32, %struct.clk*, i32 }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"sys_clk\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"can't get sys_clk\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"dsi0\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"dsi1\00", align 1
@DSS_PLL_DSI1 = common dso_local global i32 0, align 4
@DSS_PLL_DSI2 = common dso_local global i32 0, align 4
@dsi_pll_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dss_device*, %struct.dsi_data*)* @dsi_init_pll_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_init_pll_data(%struct.dss_device* %0, %struct.dsi_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dss_device*, align 8
  %5 = alloca %struct.dsi_data*, align 8
  %6 = alloca %struct.dss_pll*, align 8
  %7 = alloca %struct.clk*, align 8
  %8 = alloca i32, align 4
  store %struct.dss_device* %0, %struct.dss_device** %4, align 8
  store %struct.dsi_data* %1, %struct.dsi_data** %5, align 8
  %9 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %10 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %9, i32 0, i32 4
  store %struct.dss_pll* %10, %struct.dss_pll** %6, align 8
  %11 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %12 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.clk* @devm_clk_get(i32 %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.clk* %14, %struct.clk** %7, align 8
  %15 = load %struct.clk*, %struct.clk** %7, align 8
  %16 = call i64 @IS_ERR(%struct.clk* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = call i32 @DSSERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.clk*, %struct.clk** %7, align 8
  %21 = call i32 @PTR_ERR(%struct.clk* %20)
  store i32 %21, i32* %3, align 4
  br label %68

22:                                               ; preds = %2
  %23 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %24 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %29 = load %struct.dss_pll*, %struct.dss_pll** %6, align 8
  %30 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %32 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %22
  %36 = load i32, i32* @DSS_PLL_DSI1, align 4
  br label %39

37:                                               ; preds = %22
  %38 = load i32, i32* @DSS_PLL_DSI2, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = load %struct.dss_pll*, %struct.dss_pll** %6, align 8
  %42 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 8
  %43 = load %struct.clk*, %struct.clk** %7, align 8
  %44 = load %struct.dss_pll*, %struct.dss_pll** %6, align 8
  %45 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %44, i32 0, i32 4
  store %struct.clk* %43, %struct.clk** %45, align 8
  %46 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %47 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.dss_pll*, %struct.dss_pll** %6, align 8
  %50 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %52 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.dss_pll*, %struct.dss_pll** %6, align 8
  %57 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.dss_pll*, %struct.dss_pll** %6, align 8
  %59 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %58, i32 0, i32 1
  store i32* @dsi_pll_ops, i32** %59, align 8
  %60 = load %struct.dss_device*, %struct.dss_device** %4, align 8
  %61 = load %struct.dss_pll*, %struct.dss_pll** %6, align 8
  %62 = call i32 @dss_pll_register(%struct.dss_device* %60, %struct.dss_pll* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %39
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %68

67:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %65, %18
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.clk* @devm_clk_get(i32, i8*) #1

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
