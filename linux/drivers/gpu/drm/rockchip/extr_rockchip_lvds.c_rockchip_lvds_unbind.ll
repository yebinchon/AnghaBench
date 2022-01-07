; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_lvds.c_rockchip_lvds_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_lvds.c_rockchip_lvds_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rockchip_lvds = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.device*, i8*)* @rockchip_lvds_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rockchip_lvds_unbind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.rockchip_lvds*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.rockchip_lvds* @dev_get_drvdata(%struct.device* %8)
  store %struct.rockchip_lvds* %9, %struct.rockchip_lvds** %7, align 8
  %10 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %7, align 8
  %11 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %10, i32 0, i32 0
  %12 = call i32 @rockchip_lvds_encoder_disable(i32* %11)
  %13 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %7, align 8
  %14 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %7, align 8
  %19 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @drm_panel_detach(i64 %20)
  br label %22

22:                                               ; preds = %17, %3
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i32 @pm_runtime_disable(%struct.device* %23)
  %25 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %7, align 8
  %26 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %25, i32 0, i32 1
  %27 = call i32 @drm_connector_cleanup(i32* %26)
  %28 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %7, align 8
  %29 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %28, i32 0, i32 0
  %30 = call i32 @drm_encoder_cleanup(i32* %29)
  ret void
}

declare dso_local %struct.rockchip_lvds* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rockchip_lvds_encoder_disable(i32*) #1

declare dso_local i32 @drm_panel_detach(i64) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @drm_connector_cleanup(i32*) #1

declare dso_local i32 @drm_encoder_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
