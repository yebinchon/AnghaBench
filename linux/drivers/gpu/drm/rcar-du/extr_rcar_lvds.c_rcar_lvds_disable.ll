; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_lvds.c_rcar_lvds_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_lvds.c_rcar_lvds_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32 }
%struct.rcar_lvds = type { %struct.TYPE_5__, %struct.TYPE_6__*, i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_6__*)* }

@LVDCR0 = common dso_local global i32 0, align 4
@LVDCR1 = common dso_local global i32 0, align 4
@LVDPLLCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*)* @rcar_lvds_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_lvds_disable(%struct.drm_bridge* %0) #0 {
  %2 = alloca %struct.drm_bridge*, align 8
  %3 = alloca %struct.rcar_lvds*, align 8
  store %struct.drm_bridge* %0, %struct.drm_bridge** %2, align 8
  %4 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %5 = call %struct.rcar_lvds* @bridge_to_rcar_lvds(%struct.drm_bridge* %4)
  store %struct.rcar_lvds* %5, %struct.rcar_lvds** %3, align 8
  %6 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %7 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %12 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @drm_panel_disable(i64 %13)
  %15 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %16 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @drm_panel_unprepare(i64 %17)
  br label %19

19:                                               ; preds = %10, %1
  %20 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %21 = load i32, i32* @LVDCR0, align 4
  %22 = call i32 @rcar_lvds_write(%struct.rcar_lvds* %20, i32 %21, i32 0)
  %23 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %24 = load i32, i32* @LVDCR1, align 4
  %25 = call i32 @rcar_lvds_write(%struct.rcar_lvds* %23, i32 %24, i32 0)
  %26 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %27 = load i32, i32* @LVDPLLCR, align 4
  %28 = call i32 @rcar_lvds_write(%struct.rcar_lvds* %26, i32 %27, i32 0)
  %29 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %30 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %19
  %34 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %35 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = icmp ne %struct.TYPE_6__* %36, null
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %40 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %44, align 8
  %46 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %47 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = call i32 %45(%struct.TYPE_6__* %48)
  br label %50

50:                                               ; preds = %38, %33, %19
  %51 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %52 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @clk_disable_unprepare(i32 %54)
  ret void
}

declare dso_local %struct.rcar_lvds* @bridge_to_rcar_lvds(%struct.drm_bridge*) #1

declare dso_local i32 @drm_panel_disable(i64) #1

declare dso_local i32 @drm_panel_unprepare(i64) #1

declare dso_local i32 @rcar_lvds_write(%struct.rcar_lvds*, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
