; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { i32 }
%struct.platform_device = type { i32 }
%struct.dw_hdmi_plat_data = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dw_hdmi* @dw_hdmi_probe(%struct.platform_device* %0, %struct.dw_hdmi_plat_data* %1) #0 {
  %3 = alloca %struct.dw_hdmi*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.dw_hdmi_plat_data*, align 8
  %6 = alloca %struct.dw_hdmi*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.dw_hdmi_plat_data* %1, %struct.dw_hdmi_plat_data** %5, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %8 = load %struct.dw_hdmi_plat_data*, %struct.dw_hdmi_plat_data** %5, align 8
  %9 = call %struct.dw_hdmi* @__dw_hdmi_probe(%struct.platform_device* %7, %struct.dw_hdmi_plat_data* %8)
  store %struct.dw_hdmi* %9, %struct.dw_hdmi** %6, align 8
  %10 = load %struct.dw_hdmi*, %struct.dw_hdmi** %6, align 8
  %11 = call i64 @IS_ERR(%struct.dw_hdmi* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load %struct.dw_hdmi*, %struct.dw_hdmi** %6, align 8
  store %struct.dw_hdmi* %14, %struct.dw_hdmi** %3, align 8
  br label %20

15:                                               ; preds = %2
  %16 = load %struct.dw_hdmi*, %struct.dw_hdmi** %6, align 8
  %17 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %16, i32 0, i32 0
  %18 = call i32 @drm_bridge_add(i32* %17)
  %19 = load %struct.dw_hdmi*, %struct.dw_hdmi** %6, align 8
  store %struct.dw_hdmi* %19, %struct.dw_hdmi** %3, align 8
  br label %20

20:                                               ; preds = %15, %13
  %21 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  ret %struct.dw_hdmi* %21
}

declare dso_local %struct.dw_hdmi* @__dw_hdmi_probe(%struct.platform_device*, %struct.dw_hdmi_plat_data*) #1

declare dso_local i64 @IS_ERR(%struct.dw_hdmi*) #1

declare dso_local i32 @drm_bridge_add(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
