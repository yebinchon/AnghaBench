; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e3ha2.c_s6e3ha2_panel_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e3ha2.c_s6e3ha2_panel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s6e3ha2 = type { i32 }
%struct.mipi_dsi_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s6e3ha2*)* @s6e3ha2_panel_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s6e3ha2_panel_init(%struct.s6e3ha2* %0) #0 {
  %2 = alloca %struct.s6e3ha2*, align 8
  %3 = alloca %struct.mipi_dsi_device*, align 8
  %4 = alloca i32, align 4
  store %struct.s6e3ha2* %0, %struct.s6e3ha2** %2, align 8
  %5 = load %struct.s6e3ha2*, %struct.s6e3ha2** %2, align 8
  %6 = getelementptr inbounds %struct.s6e3ha2, %struct.s6e3ha2* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.mipi_dsi_device* @to_mipi_dsi_device(i32 %7)
  store %struct.mipi_dsi_device* %8, %struct.mipi_dsi_device** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %11 = call i32 @mipi_dsi_dcs_exit_sleep_mode(%struct.mipi_dsi_device* %10)
  %12 = call i32 @s6e3ha2_call_write_func(i32 %9, i32 %11)
  %13 = call i32 @usleep_range(i32 5000, i32 6000)
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.s6e3ha2*, %struct.s6e3ha2** %2, align 8
  %16 = call i32 @s6e3ha2_test_key_on_f0(%struct.s6e3ha2* %15)
  %17 = call i32 @s6e3ha2_call_write_func(i32 %14, i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.s6e3ha2*, %struct.s6e3ha2** %2, align 8
  %20 = call i32 @s6e3ha2_single_dsi_set(%struct.s6e3ha2* %19)
  %21 = call i32 @s6e3ha2_call_write_func(i32 %18, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.s6e3ha2*, %struct.s6e3ha2** %2, align 8
  %24 = call i32 @s6e3ha2_test_key_on_fc(%struct.s6e3ha2* %23)
  %25 = call i32 @s6e3ha2_call_write_func(i32 %22, i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.s6e3ha2*, %struct.s6e3ha2** %2, align 8
  %28 = call i32 @s6e3ha2_freq_calibration(%struct.s6e3ha2* %27)
  %29 = call i32 @s6e3ha2_call_write_func(i32 %26, i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.s6e3ha2*, %struct.s6e3ha2** %2, align 8
  %32 = call i32 @s6e3ha2_test_key_off_fc(%struct.s6e3ha2* %31)
  %33 = call i32 @s6e3ha2_call_write_func(i32 %30, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.s6e3ha2*, %struct.s6e3ha2** %2, align 8
  %36 = call i32 @s6e3ha2_test_key_off_f0(%struct.s6e3ha2* %35)
  %37 = call i32 @s6e3ha2_call_write_func(i32 %34, i32 %36)
  ret i32 0
}

declare dso_local %struct.mipi_dsi_device* @to_mipi_dsi_device(i32) #1

declare dso_local i32 @s6e3ha2_call_write_func(i32, i32) #1

declare dso_local i32 @mipi_dsi_dcs_exit_sleep_mode(%struct.mipi_dsi_device*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @s6e3ha2_test_key_on_f0(%struct.s6e3ha2*) #1

declare dso_local i32 @s6e3ha2_single_dsi_set(%struct.s6e3ha2*) #1

declare dso_local i32 @s6e3ha2_test_key_on_fc(%struct.s6e3ha2*) #1

declare dso_local i32 @s6e3ha2_freq_calibration(%struct.s6e3ha2*) #1

declare dso_local i32 @s6e3ha2_test_key_off_fc(%struct.s6e3ha2*) #1

declare dso_local i32 @s6e3ha2_test_key_off_f0(%struct.s6e3ha2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
