; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_lvds.c_rcar_lvds_mode_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_lvds.c_rcar_lvds_mode_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.rcar_lvds = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RCAR_LVDS_QUIRK_EXT_PLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_bridge*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @rcar_lvds_mode_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_lvds_mode_fixup(%struct.drm_bridge* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_bridge*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.rcar_lvds*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %9 = load %struct.drm_bridge*, %struct.drm_bridge** %4, align 8
  %10 = call %struct.rcar_lvds* @bridge_to_rcar_lvds(%struct.drm_bridge* %9)
  store %struct.rcar_lvds* %10, %struct.rcar_lvds** %7, align 8
  %11 = load %struct.rcar_lvds*, %struct.rcar_lvds** %7, align 8
  %12 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @RCAR_LVDS_QUIRK_EXT_PLL, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 5000, i32 31000
  store i32 %20, i32* %8, align 4
  %21 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %22 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @clamp(i32 %23, i32 %24, i32 148500)
  %26 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %27 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  ret i32 1
}

declare dso_local %struct.rcar_lvds* @bridge_to_rcar_lvds(%struct.drm_bridge*) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
