; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tcon.c_sun4i_tcon_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tcon.c_sun4i_tcon_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.sun4i_tcon_quirks = type { i64 }
%struct.drm_bridge = type { i32 }
%struct.drm_panel = type { i32 }

@EPROBE_DEFER = common dso_local global i32 0, align 4
@sun4i_tcon_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sun4i_tcon_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_tcon_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.sun4i_tcon_quirks*, align 8
  %6 = alloca %struct.drm_bridge*, align 8
  %7 = alloca %struct.drm_panel*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call %struct.sun4i_tcon_quirks* @of_device_get_match_data(%struct.TYPE_3__* %14)
  store %struct.sun4i_tcon_quirks* %15, %struct.sun4i_tcon_quirks** %5, align 8
  %16 = load %struct.sun4i_tcon_quirks*, %struct.sun4i_tcon_quirks** %5, align 8
  %17 = getelementptr inbounds %struct.sun4i_tcon_quirks, %struct.sun4i_tcon_quirks* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %1
  %21 = load %struct.device_node*, %struct.device_node** %4, align 8
  %22 = call i32 @drm_of_find_panel_or_bridge(%struct.device_node* %21, i32 1, i32 0, %struct.drm_panel** %7, %struct.drm_bridge** %6)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @EPROBE_DEFER, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %2, align 4
  br label %34

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = call i32 @component_add(%struct.TYPE_3__* %32, i32* @sun4i_tcon_ops)
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %27
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.sun4i_tcon_quirks* @of_device_get_match_data(%struct.TYPE_3__*) #1

declare dso_local i32 @drm_of_find_panel_or_bridge(%struct.device_node*, i32, i32, %struct.drm_panel**, %struct.drm_bridge**) #1

declare dso_local i32 @component_add(%struct.TYPE_3__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
