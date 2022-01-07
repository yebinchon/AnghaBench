; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e8aa0.c_s6e8aa0_panel_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e8aa0.c_s6e8aa0_panel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s6e8aa0 = type { i32 }

@MIPI_DCS_EXIT_SLEEP_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s6e8aa0*)* @s6e8aa0_panel_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s6e8aa0_panel_init(%struct.s6e8aa0* %0) #0 {
  %2 = alloca %struct.s6e8aa0*, align 8
  store %struct.s6e8aa0* %0, %struct.s6e8aa0** %2, align 8
  %3 = load %struct.s6e8aa0*, %struct.s6e8aa0** %2, align 8
  %4 = call i32 @s6e8aa0_apply_level_1_key(%struct.s6e8aa0* %3)
  %5 = load %struct.s6e8aa0*, %struct.s6e8aa0** %2, align 8
  %6 = call i32 @s6e8aa0_apply_level_2_key(%struct.s6e8aa0* %5)
  %7 = call i32 @msleep(i32 20)
  %8 = load %struct.s6e8aa0*, %struct.s6e8aa0** %2, align 8
  %9 = load i32, i32* @MIPI_DCS_EXIT_SLEEP_MODE, align 4
  %10 = call i32 @s6e8aa0_dcs_write_seq_static(%struct.s6e8aa0* %8, i32 %9)
  %11 = call i32 @msleep(i32 40)
  %12 = load %struct.s6e8aa0*, %struct.s6e8aa0** %2, align 8
  %13 = call i32 @s6e8aa0_panel_cond_set(%struct.s6e8aa0* %12)
  %14 = load %struct.s6e8aa0*, %struct.s6e8aa0** %2, align 8
  %15 = call i32 @s6e8aa0_display_condition_set(%struct.s6e8aa0* %14)
  %16 = load %struct.s6e8aa0*, %struct.s6e8aa0** %2, align 8
  %17 = call i32 @s6e8aa0_brightness_set(%struct.s6e8aa0* %16)
  %18 = load %struct.s6e8aa0*, %struct.s6e8aa0** %2, align 8
  %19 = call i32 @s6e8aa0_etc_source_control(%struct.s6e8aa0* %18)
  %20 = load %struct.s6e8aa0*, %struct.s6e8aa0** %2, align 8
  %21 = call i32 @s6e8aa0_etc_pentile_control(%struct.s6e8aa0* %20)
  %22 = load %struct.s6e8aa0*, %struct.s6e8aa0** %2, align 8
  %23 = call i32 @s6e8aa0_elvss_nvm_set(%struct.s6e8aa0* %22)
  %24 = load %struct.s6e8aa0*, %struct.s6e8aa0** %2, align 8
  %25 = call i32 @s6e8aa0_etc_power_control(%struct.s6e8aa0* %24)
  %26 = load %struct.s6e8aa0*, %struct.s6e8aa0** %2, align 8
  %27 = call i32 @s6e8aa0_etc_elvss_control(%struct.s6e8aa0* %26)
  %28 = load %struct.s6e8aa0*, %struct.s6e8aa0** %2, align 8
  %29 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @msleep(i32 %30)
  ret void
}

declare dso_local i32 @s6e8aa0_apply_level_1_key(%struct.s6e8aa0*) #1

declare dso_local i32 @s6e8aa0_apply_level_2_key(%struct.s6e8aa0*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @s6e8aa0_dcs_write_seq_static(%struct.s6e8aa0*, i32) #1

declare dso_local i32 @s6e8aa0_panel_cond_set(%struct.s6e8aa0*) #1

declare dso_local i32 @s6e8aa0_display_condition_set(%struct.s6e8aa0*) #1

declare dso_local i32 @s6e8aa0_brightness_set(%struct.s6e8aa0*) #1

declare dso_local i32 @s6e8aa0_etc_source_control(%struct.s6e8aa0*) #1

declare dso_local i32 @s6e8aa0_etc_pentile_control(%struct.s6e8aa0*) #1

declare dso_local i32 @s6e8aa0_elvss_nvm_set(%struct.s6e8aa0*) #1

declare dso_local i32 @s6e8aa0_etc_power_control(%struct.s6e8aa0*) #1

declare dso_local i32 @s6e8aa0_etc_elvss_control(%struct.s6e8aa0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
