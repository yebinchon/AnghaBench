; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_plane.c_omap_plane_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_plane.c_omap_plane_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.omap_plane = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*)* @omap_plane_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_plane_destroy(%struct.drm_plane* %0) #0 {
  %2 = alloca %struct.drm_plane*, align 8
  %3 = alloca %struct.omap_plane*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %2, align 8
  %4 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %5 = call %struct.omap_plane* @to_omap_plane(%struct.drm_plane* %4)
  store %struct.omap_plane* %5, %struct.omap_plane** %3, align 8
  %6 = load %struct.omap_plane*, %struct.omap_plane** %3, align 8
  %7 = getelementptr inbounds %struct.omap_plane, %struct.omap_plane* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %11 = call i32 @drm_plane_cleanup(%struct.drm_plane* %10)
  %12 = load %struct.omap_plane*, %struct.omap_plane** %3, align 8
  %13 = call i32 @kfree(%struct.omap_plane* %12)
  ret void
}

declare dso_local %struct.omap_plane* @to_omap_plane(%struct.drm_plane*) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i32 @drm_plane_cleanup(%struct.drm_plane*) #1

declare dso_local i32 @kfree(%struct.omap_plane*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
