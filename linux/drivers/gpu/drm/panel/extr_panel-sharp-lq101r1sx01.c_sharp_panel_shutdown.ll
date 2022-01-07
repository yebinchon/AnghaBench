; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sharp-lq101r1sx01.c_sharp_panel_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sharp-lq101r1sx01.c_sharp_panel_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_device = type { i32 }
%struct.sharp_panel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mipi_dsi_device*)* @sharp_panel_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sharp_panel_shutdown(%struct.mipi_dsi_device* %0) #0 {
  %2 = alloca %struct.mipi_dsi_device*, align 8
  %3 = alloca %struct.sharp_panel*, align 8
  store %struct.mipi_dsi_device* %0, %struct.mipi_dsi_device** %2, align 8
  %4 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %2, align 8
  %5 = call %struct.sharp_panel* @mipi_dsi_get_drvdata(%struct.mipi_dsi_device* %4)
  store %struct.sharp_panel* %5, %struct.sharp_panel** %3, align 8
  %6 = load %struct.sharp_panel*, %struct.sharp_panel** %3, align 8
  %7 = icmp ne %struct.sharp_panel* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %13

9:                                                ; preds = %1
  %10 = load %struct.sharp_panel*, %struct.sharp_panel** %3, align 8
  %11 = getelementptr inbounds %struct.sharp_panel, %struct.sharp_panel* %10, i32 0, i32 0
  %12 = call i32 @sharp_panel_disable(i32* %11)
  br label %13

13:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.sharp_panel* @mipi_dsi_get_drvdata(%struct.mipi_dsi_device*) #1

declare dso_local i32 @sharp_panel_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
