; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358764.c_tc358764_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358764.c_tc358764_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.tc358764 = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*)* @tc358764_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tc358764_detach(%struct.drm_bridge* %0) #0 {
  %2 = alloca %struct.drm_bridge*, align 8
  %3 = alloca %struct.tc358764*, align 8
  %4 = alloca %struct.drm_device*, align 8
  store %struct.drm_bridge* %0, %struct.drm_bridge** %2, align 8
  %5 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %6 = call %struct.tc358764* @bridge_to_tc358764(%struct.drm_bridge* %5)
  store %struct.tc358764* %6, %struct.tc358764** %3, align 8
  %7 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %8 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %7, i32 0, i32 0
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %4, align 8
  %10 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %11 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %10, i32 0, i32 0
  %12 = call i32 @drm_connector_unregister(i32* %11)
  %13 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %17 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %16, i32 0, i32 0
  %18 = call i32 @drm_fb_helper_remove_one_connector(i32 %15, i32* %17)
  %19 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %20 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @drm_panel_detach(i32* %21)
  %23 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %24 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %26 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %25, i32 0, i32 0
  %27 = call i32 @drm_connector_put(i32* %26)
  ret void
}

declare dso_local %struct.tc358764* @bridge_to_tc358764(%struct.drm_bridge*) #1

declare dso_local i32 @drm_connector_unregister(i32*) #1

declare dso_local i32 @drm_fb_helper_remove_one_connector(i32, i32*) #1

declare dso_local i32 @drm_panel_detach(i32*) #1

declare dso_local i32 @drm_connector_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
