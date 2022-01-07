; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e63j0x03.c_s6e63j0x03_panel_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e63j0x03.c_s6e63j0x03_panel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.s6e63j0x03 = type { i32 }
%struct.mipi_dsi_device = type { i32 }

@FIRST_COLUMN = common dso_local global i32 0, align 4
@default_mode = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s6e63j0x03*)* @s6e63j0x03_panel_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s6e63j0x03_panel_init(%struct.s6e63j0x03* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s6e63j0x03*, align 8
  %4 = alloca %struct.mipi_dsi_device*, align 8
  %5 = alloca i32, align 4
  store %struct.s6e63j0x03* %0, %struct.s6e63j0x03** %3, align 8
  %6 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %3, align 8
  %7 = getelementptr inbounds %struct.s6e63j0x03, %struct.s6e63j0x03* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.mipi_dsi_device* @to_mipi_dsi_device(i32 %8)
  store %struct.mipi_dsi_device* %9, %struct.mipi_dsi_device** %4, align 8
  %10 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %3, align 8
  %11 = call i32 @s6e63j0x03_enable_lv2_command(%struct.s6e63j0x03* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %108

16:                                               ; preds = %1
  %17 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %3, align 8
  %18 = call i32 @s6e63j0x03_apply_mtp_key(%struct.s6e63j0x03* %17, i32 1)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %108

23:                                               ; preds = %16
  %24 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %3, align 8
  %25 = call i32 (%struct.s6e63j0x03*, i32, i32, ...) @s6e63j0x03_dcs_write_seq_static(%struct.s6e63j0x03* %24, i32 242, i32 28, i32 40)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %108

30:                                               ; preds = %23
  %31 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %3, align 8
  %32 = call i32 (%struct.s6e63j0x03*, i32, i32, ...) @s6e63j0x03_dcs_write_seq_static(%struct.s6e63j0x03* %31, i32 181, i32 0, i32 2, i32 0)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %108

37:                                               ; preds = %30
  %38 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %39 = load i32, i32* @FIRST_COLUMN, align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_mode, i32 0, i32 0), align 8
  %41 = sub nsw i32 %40, 1
  %42 = load i32, i32* @FIRST_COLUMN, align 4
  %43 = add nsw i32 %41, %42
  %44 = call i32 @mipi_dsi_dcs_set_column_address(%struct.mipi_dsi_device* %38, i32 %39, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %108

49:                                               ; preds = %37
  %50 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_mode, i32 0, i32 1), align 8
  %52 = sub nsw i64 %51, 1
  %53 = call i32 @mipi_dsi_dcs_set_page_address(%struct.mipi_dsi_device* %50, i32 0, i64 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %108

58:                                               ; preds = %49
  %59 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %3, align 8
  %60 = call i32 (%struct.s6e63j0x03*, i32, i32, ...) @s6e63j0x03_dcs_write_seq_static(%struct.s6e63j0x03* %59, i32 248, i32 8, i32 8, i32 8, i32 23, i32 0, i32 42, i32 2, i32 38, i32 0, i32 0, i32 2, i32 0, i32 0)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %108

65:                                               ; preds = %58
  %66 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %3, align 8
  %67 = call i32 (%struct.s6e63j0x03*, i32, i32, ...) @s6e63j0x03_dcs_write_seq_static(%struct.s6e63j0x03* %66, i32 247, i32 2)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %2, align 4
  br label %108

72:                                               ; preds = %65
  %73 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %3, align 8
  %74 = call i32 (%struct.s6e63j0x03*, i32, i32, ...) @s6e63j0x03_dcs_write_seq_static(%struct.s6e63j0x03* %73, i32 176, i32 1)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* %5, align 4
  store i32 %78, i32* %2, align 4
  br label %108

79:                                               ; preds = %72
  %80 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %3, align 8
  %81 = call i32 (%struct.s6e63j0x03*, i32, i32, ...) @s6e63j0x03_dcs_write_seq_static(%struct.s6e63j0x03* %80, i32 226, i32 15)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %2, align 4
  br label %108

86:                                               ; preds = %79
  %87 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %3, align 8
  %88 = call i32 (%struct.s6e63j0x03*, i32, i32, ...) @s6e63j0x03_dcs_write_seq_static(%struct.s6e63j0x03* %87, i32 176, i32 0)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32, i32* %5, align 4
  store i32 %92, i32* %2, align 4
  br label %108

93:                                               ; preds = %86
  %94 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %95 = call i32 @mipi_dsi_dcs_exit_sleep_mode(%struct.mipi_dsi_device* %94)
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i32, i32* %5, align 4
  store i32 %99, i32* %2, align 4
  br label %108

100:                                              ; preds = %93
  %101 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %3, align 8
  %102 = call i32 @s6e63j0x03_apply_mtp_key(%struct.s6e63j0x03* %101, i32 0)
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %5, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i32, i32* %5, align 4
  store i32 %106, i32* %2, align 4
  br label %108

107:                                              ; preds = %100
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %107, %105, %98, %91, %84, %77, %70, %63, %56, %47, %35, %28, %21, %14
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local %struct.mipi_dsi_device* @to_mipi_dsi_device(i32) #1

declare dso_local i32 @s6e63j0x03_enable_lv2_command(%struct.s6e63j0x03*) #1

declare dso_local i32 @s6e63j0x03_apply_mtp_key(%struct.s6e63j0x03*, i32) #1

declare dso_local i32 @s6e63j0x03_dcs_write_seq_static(%struct.s6e63j0x03*, i32, i32, ...) #1

declare dso_local i32 @mipi_dsi_dcs_set_column_address(%struct.mipi_dsi_device*, i32, i32) #1

declare dso_local i32 @mipi_dsi_dcs_set_page_address(%struct.mipi_dsi_device*, i32, i64) #1

declare dso_local i32 @mipi_dsi_dcs_exit_sleep_mode(%struct.mipi_dsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
