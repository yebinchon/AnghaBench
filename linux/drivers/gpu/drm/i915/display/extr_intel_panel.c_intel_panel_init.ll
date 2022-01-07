; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_intel_panel_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_intel_panel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_panel = type { %struct.drm_display_mode*, %struct.drm_display_mode* }
%struct.drm_display_mode = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_panel_init(%struct.intel_panel* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.intel_panel*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  store %struct.intel_panel* %0, %struct.intel_panel** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %7 = load %struct.intel_panel*, %struct.intel_panel** %4, align 8
  %8 = call i32 @intel_panel_init_backlight_funcs(%struct.intel_panel* %7)
  %9 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %10 = load %struct.intel_panel*, %struct.intel_panel** %4, align 8
  %11 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %10, i32 0, i32 1
  store %struct.drm_display_mode* %9, %struct.drm_display_mode** %11, align 8
  %12 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %13 = load %struct.intel_panel*, %struct.intel_panel** %4, align 8
  %14 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %13, i32 0, i32 0
  store %struct.drm_display_mode* %12, %struct.drm_display_mode** %14, align 8
  ret i32 0
}

declare dso_local i32 @intel_panel_init_backlight_funcs(%struct.intel_panel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
