; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_lvds.c_rcar_lvds_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_lvds.c_rcar_lvds_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.rcar_lvds = type { %struct.TYPE_6__, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32*, %struct.rcar_lvds* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rcar_lvds_bridge_ops = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rcar_lvds_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_lvds_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rcar_lvds*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.rcar_lvds* @devm_kzalloc(%struct.TYPE_5__* %8, i32 40, i32 %9)
  store %struct.rcar_lvds* %10, %struct.rcar_lvds** %4, align 8
  %11 = load %struct.rcar_lvds*, %struct.rcar_lvds** %4, align 8
  %12 = icmp eq %struct.rcar_lvds* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %80

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load %struct.rcar_lvds*, %struct.rcar_lvds** %4, align 8
  %19 = call i32 @platform_set_drvdata(%struct.platform_device* %17, %struct.rcar_lvds* %18)
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.rcar_lvds*, %struct.rcar_lvds** %4, align 8
  %23 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %22, i32 0, i32 3
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %23, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call i32 @of_device_get_match_data(%struct.TYPE_5__* %25)
  %27 = load %struct.rcar_lvds*, %struct.rcar_lvds** %4, align 8
  %28 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.rcar_lvds*, %struct.rcar_lvds** %4, align 8
  %30 = call i32 @rcar_lvds_parse_dt(%struct.rcar_lvds* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %16
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %80

35:                                               ; preds = %16
  %36 = load %struct.rcar_lvds*, %struct.rcar_lvds** %4, align 8
  %37 = load %struct.rcar_lvds*, %struct.rcar_lvds** %4, align 8
  %38 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  store %struct.rcar_lvds* %36, %struct.rcar_lvds** %39, align 8
  %40 = load %struct.rcar_lvds*, %struct.rcar_lvds** %4, align 8
  %41 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store i32* @rcar_lvds_bridge_ops, i32** %42, align 8
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.rcar_lvds*, %struct.rcar_lvds** %4, align 8
  %48 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = load i32, i32* @IORESOURCE_MEM, align 4
  %52 = call %struct.resource* @platform_get_resource(%struct.platform_device* %50, i32 %51, i32 0)
  store %struct.resource* %52, %struct.resource** %5, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load %struct.resource*, %struct.resource** %5, align 8
  %56 = call i32 @devm_ioremap_resource(%struct.TYPE_5__* %54, %struct.resource* %55)
  %57 = load %struct.rcar_lvds*, %struct.rcar_lvds** %4, align 8
  %58 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.rcar_lvds*, %struct.rcar_lvds** %4, align 8
  %60 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @IS_ERR(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %35
  %65 = load %struct.rcar_lvds*, %struct.rcar_lvds** %4, align 8
  %66 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @PTR_ERR(i32 %67)
  store i32 %68, i32* %2, align 4
  br label %80

69:                                               ; preds = %35
  %70 = load %struct.rcar_lvds*, %struct.rcar_lvds** %4, align 8
  %71 = call i32 @rcar_lvds_get_clocks(%struct.rcar_lvds* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %2, align 4
  br label %80

76:                                               ; preds = %69
  %77 = load %struct.rcar_lvds*, %struct.rcar_lvds** %4, align 8
  %78 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %77, i32 0, i32 0
  %79 = call i32 @drm_bridge_add(%struct.TYPE_6__* %78)
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %76, %74, %64, %33, %13
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.rcar_lvds* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rcar_lvds*) #1

declare dso_local i32 @of_device_get_match_data(%struct.TYPE_5__*) #1

declare dso_local i32 @rcar_lvds_parse_dt(%struct.rcar_lvds*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_5__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @rcar_lvds_get_clocks(%struct.rcar_lvds*) #1

declare dso_local i32 @drm_bridge_add(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
