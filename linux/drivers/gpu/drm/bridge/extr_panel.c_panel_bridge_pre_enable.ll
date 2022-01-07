; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_panel.c_panel_bridge_pre_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_panel.c_panel_bridge_pre_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32 }
%struct.panel_bridge = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*)* @panel_bridge_pre_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @panel_bridge_pre_enable(%struct.drm_bridge* %0) #0 {
  %2 = alloca %struct.drm_bridge*, align 8
  %3 = alloca %struct.panel_bridge*, align 8
  store %struct.drm_bridge* %0, %struct.drm_bridge** %2, align 8
  %4 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %5 = call %struct.panel_bridge* @drm_bridge_to_panel_bridge(%struct.drm_bridge* %4)
  store %struct.panel_bridge* %5, %struct.panel_bridge** %3, align 8
  %6 = load %struct.panel_bridge*, %struct.panel_bridge** %3, align 8
  %7 = getelementptr inbounds %struct.panel_bridge, %struct.panel_bridge* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @drm_panel_prepare(i32 %8)
  ret void
}

declare dso_local %struct.panel_bridge* @drm_bridge_to_panel_bridge(%struct.drm_bridge*) #1

declare dso_local i32 @drm_panel_prepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
