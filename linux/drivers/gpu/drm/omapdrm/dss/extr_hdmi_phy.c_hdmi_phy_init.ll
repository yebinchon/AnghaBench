; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi_phy.c_hdmi_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi_phy.c_hdmi_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.hdmi_phy_data = type { i32, i32* }
%struct.resource = type { i32 }

@omap44xx_phy_feats = common dso_local global i32 0, align 4
@omap54xx_phy_feats = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"phy\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdmi_phy_init(%struct.platform_device* %0, %struct.hdmi_phy_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.hdmi_phy_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.hdmi_phy_data* %1, %struct.hdmi_phy_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp eq i32 %9, 4
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load %struct.hdmi_phy_data*, %struct.hdmi_phy_data** %6, align 8
  %13 = getelementptr inbounds %struct.hdmi_phy_data, %struct.hdmi_phy_data* %12, i32 0, i32 1
  store i32* @omap44xx_phy_feats, i32** %13, align 8
  br label %17

14:                                               ; preds = %3
  %15 = load %struct.hdmi_phy_data*, %struct.hdmi_phy_data** %6, align 8
  %16 = getelementptr inbounds %struct.hdmi_phy_data, %struct.hdmi_phy_data* %15, i32 0, i32 1
  store i32* @omap54xx_phy_feats, i32** %16, align 8
  br label %17

17:                                               ; preds = %14, %11
  %18 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %19 = load i32, i32* @IORESOURCE_MEM, align 4
  %20 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %18, i32 %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %20, %struct.resource** %8, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.resource*, %struct.resource** %8, align 8
  %24 = call i32 @devm_ioremap_resource(i32* %22, %struct.resource* %23)
  %25 = load %struct.hdmi_phy_data*, %struct.hdmi_phy_data** %6, align 8
  %26 = getelementptr inbounds %struct.hdmi_phy_data, %struct.hdmi_phy_data* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.hdmi_phy_data*, %struct.hdmi_phy_data** %6, align 8
  %28 = getelementptr inbounds %struct.hdmi_phy_data, %struct.hdmi_phy_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %17
  %33 = load %struct.hdmi_phy_data*, %struct.hdmi_phy_data** %6, align 8
  %34 = getelementptr inbounds %struct.hdmi_phy_data, %struct.hdmi_phy_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @PTR_ERR(i32 %35)
  store i32 %36, i32* %4, align 4
  br label %38

37:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %32
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
