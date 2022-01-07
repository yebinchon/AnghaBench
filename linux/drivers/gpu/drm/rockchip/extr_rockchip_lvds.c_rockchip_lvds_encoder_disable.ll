; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_lvds.c_rockchip_lvds_encoder_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_lvds.c_rockchip_lvds_encoder_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.rockchip_lvds = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @rockchip_lvds_encoder_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rockchip_lvds_encoder_disable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.rockchip_lvds*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %4 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %5 = call %struct.rockchip_lvds* @encoder_to_lvds(%struct.drm_encoder* %4)
  store %struct.rockchip_lvds* %5, %struct.rockchip_lvds** %3, align 8
  %6 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %3, align 8
  %7 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @drm_panel_disable(i32 %8)
  %10 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %3, align 8
  %11 = call i32 @rockchip_lvds_poweroff(%struct.rockchip_lvds* %10)
  %12 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %3, align 8
  %13 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @drm_panel_unprepare(i32 %14)
  ret void
}

declare dso_local %struct.rockchip_lvds* @encoder_to_lvds(%struct.drm_encoder*) #1

declare dso_local i32 @drm_panel_disable(i32) #1

declare dso_local i32 @rockchip_lvds_poweroff(%struct.rockchip_lvds*) #1

declare dso_local i32 @drm_panel_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
