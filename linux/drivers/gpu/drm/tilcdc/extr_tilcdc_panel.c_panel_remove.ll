; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_panel.c_panel_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_panel.c_panel_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.tilcdc_module = type { i32 }
%struct.panel_module = type { i32, i32, %struct.backlight_device* }
%struct.backlight_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @panel_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panel_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.tilcdc_module*, align 8
  %4 = alloca %struct.panel_module*, align 8
  %5 = alloca %struct.backlight_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call %struct.tilcdc_module* @dev_get_platdata(i32* %7)
  store %struct.tilcdc_module* %8, %struct.tilcdc_module** %3, align 8
  %9 = load %struct.tilcdc_module*, %struct.tilcdc_module** %3, align 8
  %10 = call %struct.panel_module* @to_panel_module(%struct.tilcdc_module* %9)
  store %struct.panel_module* %10, %struct.panel_module** %4, align 8
  %11 = load %struct.panel_module*, %struct.panel_module** %4, align 8
  %12 = getelementptr inbounds %struct.panel_module, %struct.panel_module* %11, i32 0, i32 2
  %13 = load %struct.backlight_device*, %struct.backlight_device** %12, align 8
  store %struct.backlight_device* %13, %struct.backlight_device** %5, align 8
  %14 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %15 = icmp ne %struct.backlight_device* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %18 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %17, i32 0, i32 0
  %19 = call i32 @put_device(i32* %18)
  br label %20

20:                                               ; preds = %16, %1
  %21 = load %struct.panel_module*, %struct.panel_module** %4, align 8
  %22 = getelementptr inbounds %struct.panel_module, %struct.panel_module* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @display_timings_release(i32 %23)
  %25 = load %struct.tilcdc_module*, %struct.tilcdc_module** %3, align 8
  %26 = call i32 @tilcdc_module_cleanup(%struct.tilcdc_module* %25)
  %27 = load %struct.panel_module*, %struct.panel_module** %4, align 8
  %28 = getelementptr inbounds %struct.panel_module, %struct.panel_module* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @kfree(i32 %29)
  ret i32 0
}

declare dso_local %struct.tilcdc_module* @dev_get_platdata(i32*) #1

declare dso_local %struct.panel_module* @to_panel_module(%struct.tilcdc_module*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @display_timings_release(i32) #1

declare dso_local i32 @tilcdc_module_cleanup(%struct.tilcdc_module*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
