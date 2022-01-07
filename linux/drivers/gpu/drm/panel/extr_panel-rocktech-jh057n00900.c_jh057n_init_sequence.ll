; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-rocktech-jh057n00900.c_jh057n_init_sequence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-rocktech-jh057n00900.c_jh057n_init_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jh057n = type { %struct.device* }
%struct.device = type { i32 }
%struct.mipi_dsi_device = type { i32 }

@ST7703_CMD_SETEXTC = common dso_local global i32 0, align 4
@ST7703_CMD_SETRGBIF = common dso_local global i32 0, align 4
@ST7703_CMD_SETSCR = common dso_local global i32 0, align 4
@ST7703_CMD_SETVDC = common dso_local global i32 0, align 4
@ST7703_CMD_SETPANEL = common dso_local global i32 0, align 4
@ST7703_CMD_SETCYC = common dso_local global i32 0, align 4
@ST7703_CMD_SETDISP = common dso_local global i32 0, align 4
@ST7703_CMD_SETEQ = common dso_local global i32 0, align 4
@ST7703_CMD_SETBGP = common dso_local global i32 0, align 4
@ST7703_CMD_SETVCOM = common dso_local global i32 0, align 4
@ST7703_CMD_UNKNOWN0 = common dso_local global i32 0, align 4
@ST7703_CMD_SETGIP1 = common dso_local global i32 0, align 4
@ST7703_CMD_SETGIP2 = common dso_local global i32 0, align 4
@ST7703_CMD_SETGAMMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to exit sleep mode: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Panel init sequence done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jh057n*)* @jh057n_init_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jh057n_init_sequence(%struct.jh057n* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jh057n*, align 8
  %4 = alloca %struct.mipi_dsi_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.jh057n* %0, %struct.jh057n** %3, align 8
  %7 = load %struct.jh057n*, %struct.jh057n** %3, align 8
  %8 = getelementptr inbounds %struct.jh057n, %struct.jh057n* %7, i32 0, i32 0
  %9 = load %struct.device*, %struct.device** %8, align 8
  %10 = call %struct.mipi_dsi_device* @to_mipi_dsi_device(%struct.device* %9)
  store %struct.mipi_dsi_device* %10, %struct.mipi_dsi_device** %4, align 8
  %11 = load %struct.jh057n*, %struct.jh057n** %3, align 8
  %12 = getelementptr inbounds %struct.jh057n, %struct.jh057n* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %5, align 8
  %14 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %15 = load i32, i32* @ST7703_CMD_SETEXTC, align 4
  %16 = call i32 (%struct.mipi_dsi_device*, i32, i32, ...) @dsi_generic_write_seq(%struct.mipi_dsi_device* %14, i32 %15, i32 241, i32 18, i32 131)
  %17 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %18 = load i32, i32* @ST7703_CMD_SETRGBIF, align 4
  %19 = call i32 (%struct.mipi_dsi_device*, i32, i32, ...) @dsi_generic_write_seq(%struct.mipi_dsi_device* %17, i32 %18, i32 16, i32 16, i32 5, i32 5, i32 3, i32 255, i32 0, i32 0, i32 0, i32 0)
  %20 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %21 = load i32, i32* @ST7703_CMD_SETSCR, align 4
  %22 = call i32 (%struct.mipi_dsi_device*, i32, i32, ...) @dsi_generic_write_seq(%struct.mipi_dsi_device* %20, i32 %21, i32 115, i32 115, i32 80, i32 80, i32 0, i32 0, i32 8, i32 112, i32 0)
  %23 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %24 = load i32, i32* @ST7703_CMD_SETVDC, align 4
  %25 = call i32 (%struct.mipi_dsi_device*, i32, i32, ...) @dsi_generic_write_seq(%struct.mipi_dsi_device* %23, i32 %24, i32 78)
  %26 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %27 = load i32, i32* @ST7703_CMD_SETPANEL, align 4
  %28 = call i32 (%struct.mipi_dsi_device*, i32, i32, ...) @dsi_generic_write_seq(%struct.mipi_dsi_device* %26, i32 %27, i32 11)
  %29 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %30 = load i32, i32* @ST7703_CMD_SETCYC, align 4
  %31 = call i32 (%struct.mipi_dsi_device*, i32, i32, ...) @dsi_generic_write_seq(%struct.mipi_dsi_device* %29, i32 %30, i32 128)
  %32 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %33 = load i32, i32* @ST7703_CMD_SETDISP, align 4
  %34 = call i32 (%struct.mipi_dsi_device*, i32, i32, ...) @dsi_generic_write_seq(%struct.mipi_dsi_device* %32, i32 %33, i32 240, i32 18, i32 48)
  %35 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %36 = load i32, i32* @ST7703_CMD_SETEQ, align 4
  %37 = call i32 (%struct.mipi_dsi_device*, i32, i32, ...) @dsi_generic_write_seq(%struct.mipi_dsi_device* %35, i32 %36, i32 7, i32 7, i32 11, i32 11, i32 3, i32 11, i32 0, i32 0, i32 0, i32 0, i32 255, i32 0, i32 192, i32 16)
  %38 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %39 = load i32, i32* @ST7703_CMD_SETBGP, align 4
  %40 = call i32 (%struct.mipi_dsi_device*, i32, i32, ...) @dsi_generic_write_seq(%struct.mipi_dsi_device* %38, i32 %39, i32 8, i32 8)
  %41 = call i32 @msleep(i32 20)
  %42 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %43 = load i32, i32* @ST7703_CMD_SETVCOM, align 4
  %44 = call i32 (%struct.mipi_dsi_device*, i32, i32, ...) @dsi_generic_write_seq(%struct.mipi_dsi_device* %42, i32 %43, i32 63, i32 63)
  %45 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %46 = load i32, i32* @ST7703_CMD_UNKNOWN0, align 4
  %47 = call i32 (%struct.mipi_dsi_device*, i32, i32, ...) @dsi_generic_write_seq(%struct.mipi_dsi_device* %45, i32 %46, i32 2, i32 17, i32 0)
  %48 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %49 = load i32, i32* @ST7703_CMD_SETGIP1, align 4
  %50 = call i32 (%struct.mipi_dsi_device*, i32, i32, ...) @dsi_generic_write_seq(%struct.mipi_dsi_device* %48, i32 %49, i32 130, i32 16, i32 6, i32 5, i32 158, i32 10, i32 165, i32 18, i32 49, i32 35, i32 55, i32 131, i32 4, i32 188, i32 39, i32 56, i32 12, i32 0, i32 3, i32 0, i32 0, i32 0, i32 12, i32 0, i32 3, i32 0, i32 0, i32 0, i32 117, i32 117, i32 49, i32 136, i32 136, i32 136, i32 136, i32 136, i32 136, i32 19, i32 136, i32 100, i32 100, i32 32, i32 136, i32 136, i32 136, i32 136, i32 136, i32 136, i32 2, i32 136, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %51 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %52 = load i32, i32* @ST7703_CMD_SETGIP2, align 4
  %53 = call i32 (%struct.mipi_dsi_device*, i32, i32, ...) @dsi_generic_write_seq(%struct.mipi_dsi_device* %51, i32 %52, i32 2, i32 33, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 70, i32 2, i32 136, i32 136, i32 136, i32 136, i32 136, i32 136, i32 100, i32 136, i32 19, i32 87, i32 19, i32 136, i32 136, i32 136, i32 136, i32 136, i32 136, i32 117, i32 136, i32 35, i32 20, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 48, i32 10, i32 165, i32 0, i32 0, i32 0, i32 0)
  %54 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %55 = load i32, i32* @ST7703_CMD_SETGAMMA, align 4
  %56 = call i32 (%struct.mipi_dsi_device*, i32, i32, ...) @dsi_generic_write_seq(%struct.mipi_dsi_device* %54, i32 %55, i32 0, i32 9, i32 14, i32 41, i32 45, i32 60, i32 65, i32 55, i32 7, i32 11, i32 13, i32 16, i32 17, i32 15, i32 16, i32 17, i32 24, i32 0, i32 9, i32 14, i32 41, i32 45, i32 60, i32 65, i32 55, i32 7, i32 11, i32 13, i32 16, i32 17, i32 15, i32 16, i32 17, i32 24)
  %57 = call i32 @msleep(i32 20)
  %58 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %59 = call i32 @mipi_dsi_dcs_exit_sleep_mode(%struct.mipi_dsi_device* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %1
  %63 = load %struct.device*, %struct.device** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @DRM_DEV_ERROR(%struct.device* %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %2, align 4
  br label %78

67:                                               ; preds = %1
  %68 = call i32 @msleep(i32 60)
  %69 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %70 = call i32 @mipi_dsi_dcs_set_display_on(%struct.mipi_dsi_device* %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %78

75:                                               ; preds = %67
  %76 = load %struct.device*, %struct.device** %5, align 8
  %77 = call i32 @DRM_DEV_DEBUG_DRIVER(%struct.device* %76, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %75, %73, %62
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.mipi_dsi_device* @to_mipi_dsi_device(%struct.device*) #1

declare dso_local i32 @dsi_generic_write_seq(%struct.mipi_dsi_device*, i32, i32, ...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mipi_dsi_dcs_exit_sleep_mode(%struct.mipi_dsi_device*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*, i32) #1

declare dso_local i32 @mipi_dsi_dcs_set_display_on(%struct.mipi_dsi_device*) #1

declare dso_local i32 @DRM_DEV_DEBUG_DRIVER(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
