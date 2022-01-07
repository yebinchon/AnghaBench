; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-ilitek-ili9881c.c_ili9881c_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-ilitek-ili9881c.c_ili9881c_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ili9881c_instr = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.drm_panel = type { i32 }
%struct.ili9881c = type { i32, i32, i32 }

@ili9881c_init = common dso_local global %struct.ili9881c_instr* null, align 8
@ILI9881C_SWITCH_PAGE = common dso_local global i64 0, align 8
@ILI9881C_COMMAND = common dso_local global i64 0, align 8
@MIPI_DSI_DCS_TEAR_MODE_VBLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @ili9881c_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ili9881c_prepare(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.ili9881c*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ili9881c_instr*, align 8
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %8 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %9 = call %struct.ili9881c* @panel_to_ili9881c(%struct.drm_panel* %8)
  store %struct.ili9881c* %9, %struct.ili9881c** %4, align 8
  %10 = load %struct.ili9881c*, %struct.ili9881c** %4, align 8
  %11 = getelementptr inbounds %struct.ili9881c, %struct.ili9881c* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @regulator_enable(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %108

18:                                               ; preds = %1
  %19 = call i32 @msleep(i32 5)
  %20 = load %struct.ili9881c*, %struct.ili9881c** %4, align 8
  %21 = getelementptr inbounds %struct.ili9881c, %struct.ili9881c* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @gpiod_set_value(i32 %22, i32 1)
  %24 = call i32 @msleep(i32 20)
  %25 = load %struct.ili9881c*, %struct.ili9881c** %4, align 8
  %26 = getelementptr inbounds %struct.ili9881c, %struct.ili9881c* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @gpiod_set_value(i32 %27, i32 0)
  %29 = call i32 @msleep(i32 20)
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %78, %18
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.ili9881c_instr*, %struct.ili9881c_instr** @ili9881c_init, align 8
  %33 = call i32 @ARRAY_SIZE(%struct.ili9881c_instr* %32)
  %34 = icmp ult i32 %31, %33
  br i1 %34, label %35, label %81

35:                                               ; preds = %30
  %36 = load %struct.ili9881c_instr*, %struct.ili9881c_instr** @ili9881c_init, align 8
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.ili9881c_instr, %struct.ili9881c_instr* %36, i64 %38
  store %struct.ili9881c_instr* %39, %struct.ili9881c_instr** %7, align 8
  %40 = load %struct.ili9881c_instr*, %struct.ili9881c_instr** %7, align 8
  %41 = getelementptr inbounds %struct.ili9881c_instr, %struct.ili9881c_instr* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ILI9881C_SWITCH_PAGE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %35
  %46 = load %struct.ili9881c*, %struct.ili9881c** %4, align 8
  %47 = load %struct.ili9881c_instr*, %struct.ili9881c_instr** %7, align 8
  %48 = getelementptr inbounds %struct.ili9881c_instr, %struct.ili9881c_instr* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ili9881c_switch_page(%struct.ili9881c* %46, i32 %50)
  store i32 %51, i32* %6, align 4
  br label %72

52:                                               ; preds = %35
  %53 = load %struct.ili9881c_instr*, %struct.ili9881c_instr** %7, align 8
  %54 = getelementptr inbounds %struct.ili9881c_instr, %struct.ili9881c_instr* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @ILI9881C_COMMAND, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %52
  %59 = load %struct.ili9881c*, %struct.ili9881c** %4, align 8
  %60 = load %struct.ili9881c_instr*, %struct.ili9881c_instr** %7, align 8
  %61 = getelementptr inbounds %struct.ili9881c_instr, %struct.ili9881c_instr* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ili9881c_instr*, %struct.ili9881c_instr** %7, align 8
  %66 = getelementptr inbounds %struct.ili9881c_instr, %struct.ili9881c_instr* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @ili9881c_send_cmd_data(%struct.ili9881c* %59, i32 %64, i32 %69)
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %58, %52
  br label %72

72:                                               ; preds = %71, %45
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %2, align 4
  br label %108

77:                                               ; preds = %72
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %5, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %30

81:                                               ; preds = %30
  %82 = load %struct.ili9881c*, %struct.ili9881c** %4, align 8
  %83 = call i32 @ili9881c_switch_page(%struct.ili9881c* %82, i32 0)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %2, align 4
  br label %108

88:                                               ; preds = %81
  %89 = load %struct.ili9881c*, %struct.ili9881c** %4, align 8
  %90 = getelementptr inbounds %struct.ili9881c, %struct.ili9881c* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @MIPI_DSI_DCS_TEAR_MODE_VBLANK, align 4
  %93 = call i32 @mipi_dsi_dcs_set_tear_on(i32 %91, i32 %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %2, align 4
  br label %108

98:                                               ; preds = %88
  %99 = load %struct.ili9881c*, %struct.ili9881c** %4, align 8
  %100 = getelementptr inbounds %struct.ili9881c, %struct.ili9881c* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @mipi_dsi_dcs_exit_sleep_mode(i32 %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %2, align 4
  br label %108

107:                                              ; preds = %98
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %107, %105, %96, %86, %75, %16
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local %struct.ili9881c* @panel_to_ili9881c(%struct.drm_panel*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ili9881c_instr*) #1

declare dso_local i32 @ili9881c_switch_page(%struct.ili9881c*, i32) #1

declare dso_local i32 @ili9881c_send_cmd_data(%struct.ili9881c*, i32, i32) #1

declare dso_local i32 @mipi_dsi_dcs_set_tear_on(i32, i32) #1

declare dso_local i32 @mipi_dsi_dcs_exit_sleep_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
