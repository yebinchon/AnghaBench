; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_vtg.c_sti_vtg_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_vtg.c_sti_vtg_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_vtg = type { i32 }
%struct.drm_display_mode = type { i32 }

@VTG_MODE_MASTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sti_vtg_set_config(%struct.sti_vtg* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.sti_vtg*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  store %struct.sti_vtg* %0, %struct.sti_vtg** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %5 = load %struct.sti_vtg*, %struct.sti_vtg** %3, align 8
  %6 = load i32, i32* @VTG_MODE_MASTER, align 4
  %7 = load %struct.sti_vtg*, %struct.sti_vtg** %3, align 8
  %8 = getelementptr inbounds %struct.sti_vtg, %struct.sti_vtg* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %11 = call i32 @vtg_set_mode(%struct.sti_vtg* %5, i32 %6, i32 %9, %struct.drm_display_mode* %10)
  %12 = load %struct.sti_vtg*, %struct.sti_vtg** %3, align 8
  %13 = call i32 @vtg_reset(%struct.sti_vtg* %12)
  %14 = load %struct.sti_vtg*, %struct.sti_vtg** %3, align 8
  %15 = call i32 @vtg_enable_irq(%struct.sti_vtg* %14)
  ret void
}

declare dso_local i32 @vtg_set_mode(%struct.sti_vtg*, i32, i32, %struct.drm_display_mode*) #1

declare dso_local i32 @vtg_reset(%struct.sti_vtg*) #1

declare dso_local i32 @vtg_enable_irq(%struct.sti_vtg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
