; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_dsi.c_mcde_dsi_bridge_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_dsi.c_mcde_dsi_bridge_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32 }
%struct.mcde_dsi = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"enable DSI master\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*)* @mcde_dsi_bridge_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcde_dsi_bridge_enable(%struct.drm_bridge* %0) #0 {
  %2 = alloca %struct.drm_bridge*, align 8
  %3 = alloca %struct.mcde_dsi*, align 8
  store %struct.drm_bridge* %0, %struct.drm_bridge** %2, align 8
  %4 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %5 = call %struct.mcde_dsi* @bridge_to_mcde_dsi(%struct.drm_bridge* %4)
  store %struct.mcde_dsi* %5, %struct.mcde_dsi** %3, align 8
  %6 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %7 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @dev_info(i32 %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local %struct.mcde_dsi* @bridge_to_mcde_dsi(%struct.drm_bridge*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
