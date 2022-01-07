; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_hdmi.c_vc4_hdmi_connector_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_hdmi.c_vc4_hdmi_connector_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.vc4_hdmi_connector = type { %struct.drm_encoder* }
%struct.drm_encoder = type { i32 }
%struct.vc4_hdmi_encoder = type { i32 }
%struct.vc4_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.edid = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @vc4_hdmi_connector_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_hdmi_connector_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.vc4_hdmi_connector*, align 8
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca %struct.vc4_hdmi_encoder*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.vc4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.edid*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %11 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %12 = call %struct.vc4_hdmi_connector* @to_vc4_hdmi_connector(%struct.drm_connector* %11)
  store %struct.vc4_hdmi_connector* %12, %struct.vc4_hdmi_connector** %4, align 8
  %13 = load %struct.vc4_hdmi_connector*, %struct.vc4_hdmi_connector** %4, align 8
  %14 = getelementptr inbounds %struct.vc4_hdmi_connector, %struct.vc4_hdmi_connector* %13, i32 0, i32 0
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %14, align 8
  store %struct.drm_encoder* %15, %struct.drm_encoder** %5, align 8
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %17 = call %struct.vc4_hdmi_encoder* @to_vc4_hdmi_encoder(%struct.drm_encoder* %16)
  store %struct.vc4_hdmi_encoder* %17, %struct.vc4_hdmi_encoder** %6, align 8
  %18 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %19 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %18, i32 0, i32 0
  %20 = load %struct.drm_device*, %struct.drm_device** %19, align 8
  store %struct.drm_device* %20, %struct.drm_device** %7, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %22 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %21)
  store %struct.vc4_dev* %22, %struct.vc4_dev** %8, align 8
  store i32 0, i32* %9, align 4
  %23 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %24 = load %struct.vc4_dev*, %struct.vc4_dev** %8, align 8
  %25 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.edid* @drm_get_edid(%struct.drm_connector* %23, i32 %28)
  store %struct.edid* %29, %struct.edid** %10, align 8
  %30 = load %struct.vc4_dev*, %struct.vc4_dev** %8, align 8
  %31 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.edid*, %struct.edid** %10, align 8
  %36 = call i32 @cec_s_phys_addr_from_edid(i32 %34, %struct.edid* %35)
  %37 = load %struct.edid*, %struct.edid** %10, align 8
  %38 = icmp ne %struct.edid* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %1
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %56

42:                                               ; preds = %1
  %43 = load %struct.edid*, %struct.edid** %10, align 8
  %44 = call i32 @drm_detect_hdmi_monitor(%struct.edid* %43)
  %45 = load %struct.vc4_hdmi_encoder*, %struct.vc4_hdmi_encoder** %6, align 8
  %46 = getelementptr inbounds %struct.vc4_hdmi_encoder, %struct.vc4_hdmi_encoder* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %48 = load %struct.edid*, %struct.edid** %10, align 8
  %49 = call i32 @drm_connector_update_edid_property(%struct.drm_connector* %47, %struct.edid* %48)
  %50 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %51 = load %struct.edid*, %struct.edid** %10, align 8
  %52 = call i32 @drm_add_edid_modes(%struct.drm_connector* %50, %struct.edid* %51)
  store i32 %52, i32* %9, align 4
  %53 = load %struct.edid*, %struct.edid** %10, align 8
  %54 = call i32 @kfree(%struct.edid* %53)
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %42, %39
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.vc4_hdmi_connector* @to_vc4_hdmi_connector(%struct.drm_connector*) #1

declare dso_local %struct.vc4_hdmi_encoder* @to_vc4_hdmi_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local %struct.edid* @drm_get_edid(%struct.drm_connector*, i32) #1

declare dso_local i32 @cec_s_phys_addr_from_edid(i32, %struct.edid*) #1

declare dso_local i32 @drm_detect_hdmi_monitor(%struct.edid*) #1

declare dso_local i32 @drm_connector_update_edid_property(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @drm_add_edid_modes(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @kfree(%struct.edid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
