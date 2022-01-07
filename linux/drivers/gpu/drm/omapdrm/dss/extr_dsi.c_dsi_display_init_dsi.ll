; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_display_init_dsi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_display_init_dsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_data = type { i64, i32, i32, i32, i32 }

@DSS_CLK_SRC_PLL1_2 = common dso_local global i32 0, align 4
@DSS_CLK_SRC_PLL2_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"PLL OK\0A\00", align 1
@DSS_CLK_SRC_FCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsi_data*)* @dsi_display_init_dsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_display_init_dsi(%struct.dsi_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dsi_data*, align 8
  %4 = alloca i32, align 4
  store %struct.dsi_data* %0, %struct.dsi_data** %3, align 8
  %5 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %6 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %5, i32 0, i32 2
  %7 = call i32 @dss_pll_enable(i32* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %109

12:                                               ; preds = %1
  %13 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %14 = call i32 @dsi_configure_dsi_clocks(%struct.dsi_data* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %104

18:                                               ; preds = %12
  %19 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %20 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %23 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %26 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load i32, i32* @DSS_CLK_SRC_PLL1_2, align 4
  br label %33

31:                                               ; preds = %18
  %32 = load i32, i32* @DSS_CLK_SRC_PLL2_2, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = call i32 @dss_select_dsi_clk_source(i32 %21, i64 %24, i32 %34)
  %36 = call i32 @DSSDBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %38 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %33
  %42 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %43 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @regulator_enable(i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %95

49:                                               ; preds = %41
  %50 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %51 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %50, i32 0, i32 1
  store i32 1, i32* %51, align 8
  br label %52

52:                                               ; preds = %49, %33
  %53 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %54 = call i32 @dsi_cio_init(%struct.dsi_data* %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %88

58:                                               ; preds = %52
  %59 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %60 = call i32 @_dsi_print_reset_status(%struct.dsi_data* %59)
  %61 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %62 = call i32 @dsi_proto_timings(%struct.dsi_data* %61)
  %63 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %64 = call i32 @dsi_set_lp_clk_divisor(%struct.dsi_data* %63)
  %65 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %66 = call i32 @_dsi_print_reset_status(%struct.dsi_data* %65)
  %67 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %68 = call i32 @dsi_proto_config(%struct.dsi_data* %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %58
  br label %85

72:                                               ; preds = %58
  %73 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %74 = call i32 @dsi_vc_enable(%struct.dsi_data* %73, i32 0, i32 1)
  %75 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %76 = call i32 @dsi_vc_enable(%struct.dsi_data* %75, i32 1, i32 1)
  %77 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %78 = call i32 @dsi_vc_enable(%struct.dsi_data* %77, i32 2, i32 1)
  %79 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %80 = call i32 @dsi_vc_enable(%struct.dsi_data* %79, i32 3, i32 1)
  %81 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %82 = call i32 @dsi_if_enable(%struct.dsi_data* %81, i32 1)
  %83 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %84 = call i32 @dsi_force_tx_stop_mode_io(%struct.dsi_data* %83)
  store i32 0, i32* %2, align 4
  br label %109

85:                                               ; preds = %71
  %86 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %87 = call i32 @dsi_cio_uninit(%struct.dsi_data* %86)
  br label %88

88:                                               ; preds = %85, %57
  %89 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %90 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @regulator_disable(i32 %91)
  %93 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %94 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %93, i32 0, i32 1
  store i32 0, i32* %94, align 8
  br label %95

95:                                               ; preds = %88, %48
  %96 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %97 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %100 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* @DSS_CLK_SRC_FCK, align 4
  %103 = call i32 @dss_select_dsi_clk_source(i32 %98, i64 %101, i32 %102)
  br label %104

104:                                              ; preds = %95, %17
  %105 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %106 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %105, i32 0, i32 2
  %107 = call i32 @dss_pll_disable(i32* %106)
  %108 = load i32, i32* %4, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %104, %72, %10
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @dss_pll_enable(i32*) #1

declare dso_local i32 @dsi_configure_dsi_clocks(%struct.dsi_data*) #1

declare dso_local i32 @dss_select_dsi_clk_source(i32, i64, i32) #1

declare dso_local i32 @DSSDBG(i8*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @dsi_cio_init(%struct.dsi_data*) #1

declare dso_local i32 @_dsi_print_reset_status(%struct.dsi_data*) #1

declare dso_local i32 @dsi_proto_timings(%struct.dsi_data*) #1

declare dso_local i32 @dsi_set_lp_clk_divisor(%struct.dsi_data*) #1

declare dso_local i32 @dsi_proto_config(%struct.dsi_data*) #1

declare dso_local i32 @dsi_vc_enable(%struct.dsi_data*, i32, i32) #1

declare dso_local i32 @dsi_if_enable(%struct.dsi_data*, i32) #1

declare dso_local i32 @dsi_force_tx_stop_mode_io(%struct.dsi_data*) #1

declare dso_local i32 @dsi_cio_uninit(%struct.dsi_data*) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @dss_pll_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
