; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_manager.c_dsi_mgr_get_other_dsi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_manager.c_dsi_mgr_get_other_dsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.msm_dsi** }
%struct.msm_dsi = type { i32 }

@msm_dsim_glb = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DSI_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.msm_dsi* (i32)* @dsi_mgr_get_other_dsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.msm_dsi* @dsi_mgr_get_other_dsi(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load %struct.msm_dsi**, %struct.msm_dsi*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @msm_dsim_glb, i32 0, i32 0), align 8
  %4 = load i32, i32* %2, align 4
  %5 = add nsw i32 %4, 1
  %6 = load i32, i32* @DSI_MAX, align 4
  %7 = srem i32 %5, %6
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.msm_dsi*, %struct.msm_dsi** %3, i64 %8
  %10 = load %struct.msm_dsi*, %struct.msm_dsi** %9, align 8
  ret %struct.msm_dsi* %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
