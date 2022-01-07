; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tve200/extr_tve200_drv.c_tve200_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tve200/extr_tve200_drv.c_tve200_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.drm_device = type { %struct.tve200_drm_dev_private* }
%struct.tve200_drm_dev_private = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tve200_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tve200_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.tve200_drm_dev_private*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.drm_device* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.drm_device* %6, %struct.drm_device** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 0
  %9 = load %struct.tve200_drm_dev_private*, %struct.tve200_drm_dev_private** %8, align 8
  store %struct.tve200_drm_dev_private* %9, %struct.tve200_drm_dev_private** %4, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = call i32 @drm_dev_unregister(%struct.drm_device* %10)
  %12 = load %struct.tve200_drm_dev_private*, %struct.tve200_drm_dev_private** %4, align 8
  %13 = getelementptr inbounds %struct.tve200_drm_dev_private, %struct.tve200_drm_dev_private* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.tve200_drm_dev_private*, %struct.tve200_drm_dev_private** %4, align 8
  %18 = getelementptr inbounds %struct.tve200_drm_dev_private, %struct.tve200_drm_dev_private* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @drm_panel_bridge_remove(i32 %19)
  br label %21

21:                                               ; preds = %16, %1
  %22 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %23 = call i32 @drm_mode_config_cleanup(%struct.drm_device* %22)
  %24 = load %struct.tve200_drm_dev_private*, %struct.tve200_drm_dev_private** %4, align 8
  %25 = getelementptr inbounds %struct.tve200_drm_dev_private, %struct.tve200_drm_dev_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @clk_disable_unprepare(i32 %26)
  %28 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %29 = call i32 @drm_dev_put(%struct.drm_device* %28)
  ret i32 0
}

declare dso_local %struct.drm_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @drm_dev_unregister(%struct.drm_device*) #1

declare dso_local i32 @drm_panel_bridge_remove(i32) #1

declare dso_local i32 @drm_mode_config_cleanup(%struct.drm_device*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @drm_dev_put(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
