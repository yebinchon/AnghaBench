; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_dsi.c_vc4_dsi_dev_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_dsi.c_vc4_dsi_dev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.vc4_dsi = type { %struct.TYPE_3__, %struct.platform_device* }
%struct.TYPE_3__ = type { %struct.device*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vc4_dsi_host_ops = common dso_local global i32 0, align 4
@vc4_dsi_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vc4_dsi_dev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_dsi_dev_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.vc4_dsi*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.vc4_dsi* @devm_kzalloc(%struct.device* %9, i32 24, i32 %10)
  store %struct.vc4_dsi* %11, %struct.vc4_dsi** %5, align 8
  %12 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %13 = icmp ne %struct.vc4_dsi* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %45

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %20 = call i32 @dev_set_drvdata(%struct.device* %18, %struct.vc4_dsi* %19)
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %23 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %22, i32 0, i32 1
  store %struct.platform_device* %21, %struct.platform_device** %23, align 8
  %24 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %25 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store i32* @vc4_dsi_host_ops, i32** %26, align 8
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %29 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store %struct.device* %27, %struct.device** %30, align 8
  %31 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %32 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %31, i32 0, i32 0
  %33 = call i32 @mipi_dsi_host_register(%struct.TYPE_3__* %32)
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = call i32 @component_add(%struct.device* %35, i32* @vc4_dsi_ops)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %17
  %40 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %41 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %40, i32 0, i32 0
  %42 = call i32 @mipi_dsi_host_unregister(%struct.TYPE_3__* %41)
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %45

44:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %39, %14
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.vc4_dsi* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.vc4_dsi*) #1

declare dso_local i32 @mipi_dsi_host_register(%struct.TYPE_3__*) #1

declare dso_local i32 @component_add(%struct.device*, i32*) #1

declare dso_local i32 @mipi_dsi_host_unregister(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
