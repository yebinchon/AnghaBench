; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-innolux-p079zca.c_innolux_panel_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-innolux-p079zca.c_innolux_panel_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_device = type { %struct.device }
%struct.device = type { i32 }
%struct.panel_desc = type { i32, i32* }
%struct.innolux_panel = type { %struct.mipi_dsi_device*, %struct.TYPE_5__, i32*, i32*, %struct.TYPE_6__*, %struct.panel_desc* }
%struct.TYPE_5__ = type { %struct.device*, i32* }
%struct.TYPE_6__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to get enable gpio: %d\0A\00", align 1
@innolux_panel_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_device*, %struct.panel_desc*)* @innolux_panel_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @innolux_panel_add(%struct.mipi_dsi_device* %0, %struct.panel_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mipi_dsi_device*, align 8
  %5 = alloca %struct.panel_desc*, align 8
  %6 = alloca %struct.innolux_panel*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mipi_dsi_device* %0, %struct.mipi_dsi_device** %4, align 8
  store %struct.panel_desc* %1, %struct.panel_desc** %5, align 8
  %10 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %11 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %7, align 8
  %12 = load %struct.device*, %struct.device** %7, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.innolux_panel* @devm_kzalloc(%struct.device* %12, i32 56, i32 %13)
  store %struct.innolux_panel* %14, %struct.innolux_panel** %6, align 8
  %15 = load %struct.innolux_panel*, %struct.innolux_panel** %6, align 8
  %16 = icmp ne %struct.innolux_panel* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %138

20:                                               ; preds = %2
  %21 = load %struct.panel_desc*, %struct.panel_desc** %5, align 8
  %22 = load %struct.innolux_panel*, %struct.innolux_panel** %6, align 8
  %23 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %22, i32 0, i32 5
  store %struct.panel_desc* %21, %struct.panel_desc** %23, align 8
  %24 = load %struct.device*, %struct.device** %7, align 8
  %25 = load %struct.panel_desc*, %struct.panel_desc** %5, align 8
  %26 = getelementptr inbounds %struct.panel_desc, %struct.panel_desc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.TYPE_6__* @devm_kcalloc(%struct.device* %24, i32 %27, i32 4, i32 %28)
  %30 = load %struct.innolux_panel*, %struct.innolux_panel** %6, align 8
  %31 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %30, i32 0, i32 4
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %31, align 8
  %32 = load %struct.innolux_panel*, %struct.innolux_panel** %6, align 8
  %33 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %32, i32 0, i32 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = icmp ne %struct.TYPE_6__* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %20
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %138

39:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %61, %39
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.panel_desc*, %struct.panel_desc** %5, align 8
  %43 = getelementptr inbounds %struct.panel_desc, %struct.panel_desc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %40
  %47 = load %struct.panel_desc*, %struct.panel_desc** %5, align 8
  %48 = getelementptr inbounds %struct.panel_desc, %struct.panel_desc* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.innolux_panel*, %struct.innolux_panel** %6, align 8
  %55 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %54, i32 0, i32 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i32 %53, i32* %60, align 4
  br label %61

61:                                               ; preds = %46
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %40

64:                                               ; preds = %40
  %65 = load %struct.device*, %struct.device** %7, align 8
  %66 = load %struct.panel_desc*, %struct.panel_desc** %5, align 8
  %67 = getelementptr inbounds %struct.panel_desc, %struct.panel_desc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.innolux_panel*, %struct.innolux_panel** %6, align 8
  %70 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %69, i32 0, i32 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = call i32 @devm_regulator_bulk_get(%struct.device* %65, i32 %68, %struct.TYPE_6__* %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %64
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %138

77:                                               ; preds = %64
  %78 = load %struct.device*, %struct.device** %7, align 8
  %79 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %80 = call i32* @devm_gpiod_get_optional(%struct.device* %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load %struct.innolux_panel*, %struct.innolux_panel** %6, align 8
  %82 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %81, i32 0, i32 3
  store i32* %80, i32** %82, align 8
  %83 = load %struct.innolux_panel*, %struct.innolux_panel** %6, align 8
  %84 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = call i64 @IS_ERR(i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %77
  %89 = load %struct.innolux_panel*, %struct.innolux_panel** %6, align 8
  %90 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %89, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @PTR_ERR(i32* %91)
  store i32 %92, i32* %8, align 4
  %93 = load %struct.device*, %struct.device** %7, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @dev_dbg(%struct.device* %93, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  %96 = load %struct.innolux_panel*, %struct.innolux_panel** %6, align 8
  %97 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %96, i32 0, i32 3
  store i32* null, i32** %97, align 8
  br label %98

98:                                               ; preds = %88, %77
  %99 = load %struct.device*, %struct.device** %7, align 8
  %100 = call i32* @devm_of_find_backlight(%struct.device* %99)
  %101 = load %struct.innolux_panel*, %struct.innolux_panel** %6, align 8
  %102 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %101, i32 0, i32 2
  store i32* %100, i32** %102, align 8
  %103 = load %struct.innolux_panel*, %struct.innolux_panel** %6, align 8
  %104 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = call i64 @IS_ERR(i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %98
  %109 = load %struct.innolux_panel*, %struct.innolux_panel** %6, align 8
  %110 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @PTR_ERR(i32* %111)
  store i32 %112, i32* %3, align 4
  br label %138

113:                                              ; preds = %98
  %114 = load %struct.innolux_panel*, %struct.innolux_panel** %6, align 8
  %115 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %114, i32 0, i32 1
  %116 = call i32 @drm_panel_init(%struct.TYPE_5__* %115)
  %117 = load %struct.innolux_panel*, %struct.innolux_panel** %6, align 8
  %118 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  store i32* @innolux_panel_funcs, i32** %119, align 8
  %120 = load %struct.device*, %struct.device** %7, align 8
  %121 = load %struct.innolux_panel*, %struct.innolux_panel** %6, align 8
  %122 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  store %struct.device* %120, %struct.device** %123, align 8
  %124 = load %struct.innolux_panel*, %struct.innolux_panel** %6, align 8
  %125 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %124, i32 0, i32 1
  %126 = call i32 @drm_panel_add(%struct.TYPE_5__* %125)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %113
  %130 = load i32, i32* %8, align 4
  store i32 %130, i32* %3, align 4
  br label %138

131:                                              ; preds = %113
  %132 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %133 = load %struct.innolux_panel*, %struct.innolux_panel** %6, align 8
  %134 = call i32 @mipi_dsi_set_drvdata(%struct.mipi_dsi_device* %132, %struct.innolux_panel* %133)
  %135 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %136 = load %struct.innolux_panel*, %struct.innolux_panel** %6, align 8
  %137 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %136, i32 0, i32 0
  store %struct.mipi_dsi_device* %135, %struct.mipi_dsi_device** %137, align 8
  store i32 0, i32* %3, align 4
  br label %138

138:                                              ; preds = %131, %129, %108, %75, %36, %17
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local %struct.innolux_panel* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_6__*) #1

declare dso_local i32* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32* @devm_of_find_backlight(%struct.device*) #1

declare dso_local i32 @drm_panel_init(%struct.TYPE_5__*) #1

declare dso_local i32 @drm_panel_add(%struct.TYPE_5__*) #1

declare dso_local i32 @mipi_dsi_set_drvdata(%struct.mipi_dsi_device*, %struct.innolux_panel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
