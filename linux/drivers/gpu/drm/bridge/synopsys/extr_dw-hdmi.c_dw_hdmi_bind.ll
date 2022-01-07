; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { i32 }
%struct.platform_device = type { i32 }
%struct.drm_encoder = type { i32 }
%struct.dw_hdmi_plat_data = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Failed to initialize bridge with drm\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dw_hdmi* @dw_hdmi_bind(%struct.platform_device* %0, %struct.drm_encoder* %1, %struct.dw_hdmi_plat_data* %2) #0 {
  %4 = alloca %struct.dw_hdmi*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.drm_encoder*, align 8
  %7 = alloca %struct.dw_hdmi_plat_data*, align 8
  %8 = alloca %struct.dw_hdmi*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.drm_encoder* %1, %struct.drm_encoder** %6, align 8
  store %struct.dw_hdmi_plat_data* %2, %struct.dw_hdmi_plat_data** %7, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %11 = load %struct.dw_hdmi_plat_data*, %struct.dw_hdmi_plat_data** %7, align 8
  %12 = call %struct.dw_hdmi* @__dw_hdmi_probe(%struct.platform_device* %10, %struct.dw_hdmi_plat_data* %11)
  store %struct.dw_hdmi* %12, %struct.dw_hdmi** %8, align 8
  %13 = load %struct.dw_hdmi*, %struct.dw_hdmi** %8, align 8
  %14 = call i64 @IS_ERR(%struct.dw_hdmi* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load %struct.dw_hdmi*, %struct.dw_hdmi** %8, align 8
  store %struct.dw_hdmi* %17, %struct.dw_hdmi** %4, align 8
  br label %33

18:                                               ; preds = %3
  %19 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %20 = load %struct.dw_hdmi*, %struct.dw_hdmi** %8, align 8
  %21 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %20, i32 0, i32 0
  %22 = call i32 @drm_bridge_attach(%struct.drm_encoder* %19, i32* %21, i32* null)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load %struct.dw_hdmi*, %struct.dw_hdmi** %8, align 8
  %27 = call i32 @dw_hdmi_remove(%struct.dw_hdmi* %26)
  %28 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %9, align 4
  %30 = call %struct.dw_hdmi* @ERR_PTR(i32 %29)
  store %struct.dw_hdmi* %30, %struct.dw_hdmi** %4, align 8
  br label %33

31:                                               ; preds = %18
  %32 = load %struct.dw_hdmi*, %struct.dw_hdmi** %8, align 8
  store %struct.dw_hdmi* %32, %struct.dw_hdmi** %4, align 8
  br label %33

33:                                               ; preds = %31, %25, %16
  %34 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  ret %struct.dw_hdmi* %34
}

declare dso_local %struct.dw_hdmi* @__dw_hdmi_probe(%struct.platform_device*, %struct.dw_hdmi_plat_data*) #1

declare dso_local i64 @IS_ERR(%struct.dw_hdmi*) #1

declare dso_local i32 @drm_bridge_attach(%struct.drm_encoder*, i32*, i32*) #1

declare dso_local i32 @dw_hdmi_remove(%struct.dw_hdmi*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local %struct.dw_hdmi* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
