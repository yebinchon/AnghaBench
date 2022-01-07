; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-orisetech-otm8009a.c_otm8009a_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-orisetech-otm8009a.c_otm8009a_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.otm8009a = type { i32, i32, i32 }
%struct.mipi_dsi_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @otm8009a_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @otm8009a_disable(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.otm8009a*, align 8
  %5 = alloca %struct.mipi_dsi_device*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %7 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %8 = call %struct.otm8009a* @panel_to_otm8009a(%struct.drm_panel* %7)
  store %struct.otm8009a* %8, %struct.otm8009a** %4, align 8
  %9 = load %struct.otm8009a*, %struct.otm8009a** %4, align 8
  %10 = getelementptr inbounds %struct.otm8009a, %struct.otm8009a* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.mipi_dsi_device* @to_mipi_dsi_device(i32 %11)
  store %struct.mipi_dsi_device* %12, %struct.mipi_dsi_device** %5, align 8
  %13 = load %struct.otm8009a*, %struct.otm8009a** %4, align 8
  %14 = getelementptr inbounds %struct.otm8009a, %struct.otm8009a* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

18:                                               ; preds = %1
  %19 = load %struct.otm8009a*, %struct.otm8009a** %4, align 8
  %20 = getelementptr inbounds %struct.otm8009a, %struct.otm8009a* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @backlight_disable(i32 %21)
  %23 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %24 = call i32 @mipi_dsi_dcs_set_display_off(%struct.mipi_dsi_device* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %40

29:                                               ; preds = %18
  %30 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %31 = call i32 @mipi_dsi_dcs_enter_sleep_mode(%struct.mipi_dsi_device* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %40

36:                                               ; preds = %29
  %37 = call i32 @msleep(i32 120)
  %38 = load %struct.otm8009a*, %struct.otm8009a** %4, align 8
  %39 = getelementptr inbounds %struct.otm8009a, %struct.otm8009a* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %36, %34, %27, %17
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.otm8009a* @panel_to_otm8009a(%struct.drm_panel*) #1

declare dso_local %struct.mipi_dsi_device* @to_mipi_dsi_device(i32) #1

declare dso_local i32 @backlight_disable(i32) #1

declare dso_local i32 @mipi_dsi_dcs_set_display_off(%struct.mipi_dsi_device*) #1

declare dso_local i32 @mipi_dsi_dcs_enter_sleep_mode(%struct.mipi_dsi_device*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
