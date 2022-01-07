; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/pl111/extr_pl111_drv.c_pl111_amba_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/pl111/extr_pl111_drv.c_pl111_amba_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amba_device = type { %struct.device }
%struct.device = type { i32 }
%struct.drm_device = type { %struct.pl111_drm_dev_private* }
%struct.pl111_drm_dev_private = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amba_device*)* @pl111_amba_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl111_amba_remove(%struct.amba_device* %0) #0 {
  %2 = alloca %struct.amba_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.pl111_drm_dev_private*, align 8
  store %struct.amba_device* %0, %struct.amba_device** %2, align 8
  %6 = load %struct.amba_device*, %struct.amba_device** %2, align 8
  %7 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %6, i32 0, i32 0
  store %struct.device* %7, %struct.device** %3, align 8
  %8 = load %struct.amba_device*, %struct.amba_device** %2, align 8
  %9 = call %struct.drm_device* @amba_get_drvdata(%struct.amba_device* %8)
  store %struct.drm_device* %9, %struct.drm_device** %4, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %11, align 8
  store %struct.pl111_drm_dev_private* %12, %struct.pl111_drm_dev_private** %5, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %14 = call i32 @drm_dev_unregister(%struct.drm_device* %13)
  %15 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %5, align 8
  %16 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %5, align 8
  %21 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @drm_panel_bridge_remove(i32 %22)
  br label %24

24:                                               ; preds = %19, %1
  %25 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %26 = call i32 @drm_mode_config_cleanup(%struct.drm_device* %25)
  %27 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %28 = call i32 @drm_dev_put(%struct.drm_device* %27)
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = call i32 @of_reserved_mem_device_release(%struct.device* %29)
  ret i32 0
}

declare dso_local %struct.drm_device* @amba_get_drvdata(%struct.amba_device*) #1

declare dso_local i32 @drm_dev_unregister(%struct.drm_device*) #1

declare dso_local i32 @drm_panel_bridge_remove(i32) #1

declare dso_local i32 @drm_mode_config_cleanup(%struct.drm_device*) #1

declare dso_local i32 @drm_dev_put(%struct.drm_device*) #1

declare dso_local i32 @of_reserved_mem_device_release(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
