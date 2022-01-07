; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_display_init_dispc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_display_init_dispc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_data = type { i64, i64, i32, %struct.TYPE_5__, %struct.TYPE_6__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i64, i32, i32 }

@DSS_CLK_SRC_PLL1_1 = common dso_local global i32 0, align 4
@DSS_CLK_SRC_PLL2_1 = common dso_local global i32 0, align 4
@OMAP_DSS_DSI_CMD_MODE = common dso_local global i64 0, align 8
@dsi_framedone_irq_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"can't register FRAMEDONE handler\0A\00", align 1
@DSS_IO_PAD_MODE_BYPASS = common dso_local global i32 0, align 4
@DSS_CLK_SRC_FCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsi_data*)* @dsi_display_init_dispc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_display_init_dispc(%struct.dsi_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dsi_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dsi_data* %0, %struct.dsi_data** %3, align 8
  %6 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %7 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %11 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %15 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @DSS_CLK_SRC_PLL1_1, align 4
  br label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @DSS_CLK_SRC_PLL2_1, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = call i32 @dss_select_lcd_clk_source(i32 %12, i32 %13, i32 %23)
  %25 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %26 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @OMAP_DSS_DSI_CMD_MODE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %22
  %31 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %32 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %31, i32 0, i32 3
  %33 = load i32, i32* @dsi_framedone_irq_callback, align 4
  %34 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %35 = call i32 @dss_mgr_register_framedone_handler(%struct.TYPE_5__* %32, i32 %33, %struct.dsi_data* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = call i32 @DSSERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %93

40:                                               ; preds = %30
  %41 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %42 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %45 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  store i32 1, i32* %46, align 4
  br label %54

47:                                               ; preds = %22
  %48 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %49 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  %51 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %52 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %47, %40
  %55 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %56 = call i32 @dsi_configure_dispc_clocks(%struct.dsi_data* %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %80

60:                                               ; preds = %54
  %61 = load i32, i32* @DSS_IO_PAD_MODE_BYPASS, align 4
  %62 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %63 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 4
  store i32 %61, i32* %64, align 4
  %65 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %66 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dsi_get_pixel_size(i32 %67)
  %69 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %70 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 3
  store i32 %68, i32* %71, align 8
  %72 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %73 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %76 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %75, i32 0, i32 3
  %77 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %78 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %77, i32 0, i32 4
  %79 = call i32 @dss_mgr_set_lcd_config(%struct.TYPE_5__* %76, %struct.TYPE_6__* %78)
  store i32 0, i32* %2, align 4
  br label %101

80:                                               ; preds = %59
  %81 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %82 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @OMAP_DSS_DSI_CMD_MODE, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %88 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %87, i32 0, i32 3
  %89 = load i32, i32* @dsi_framedone_irq_callback, align 4
  %90 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %91 = call i32 @dss_mgr_unregister_framedone_handler(%struct.TYPE_5__* %88, i32 %89, %struct.dsi_data* %90)
  br label %92

92:                                               ; preds = %86, %80
  br label %93

93:                                               ; preds = %92, %38
  %94 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %95 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @DSS_CLK_SRC_FCK, align 4
  %99 = call i32 @dss_select_lcd_clk_source(i32 %96, i32 %97, i32 %98)
  %100 = load i32, i32* %5, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %93, %60
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @dss_select_lcd_clk_source(i32, i32, i32) #1

declare dso_local i32 @dss_mgr_register_framedone_handler(%struct.TYPE_5__*, i32, %struct.dsi_data*) #1

declare dso_local i32 @DSSERR(i8*) #1

declare dso_local i32 @dsi_configure_dispc_clocks(%struct.dsi_data*) #1

declare dso_local i32 @dsi_get_pixel_size(i32) #1

declare dso_local i32 @dss_mgr_set_lcd_config(%struct.TYPE_5__*, %struct.TYPE_6__*) #1

declare dso_local i32 @dss_mgr_unregister_framedone_handler(%struct.TYPE_5__*, i32, %struct.dsi_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
