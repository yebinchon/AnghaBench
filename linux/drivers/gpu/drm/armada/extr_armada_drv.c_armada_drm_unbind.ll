; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_drv.c_armada_drm_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_drv.c_armada_drm_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.drm_device = type { %struct.armada_private* }
%struct.armada_private = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @armada_drm_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @armada_drm_unbind(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.armada_private*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.drm_device* @dev_get_drvdata(%struct.device* %5)
  store %struct.drm_device* %6, %struct.drm_device** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 0
  %9 = load %struct.armada_private*, %struct.armada_private** %8, align 8
  store %struct.armada_private* %9, %struct.armada_private** %4, align 8
  %10 = load %struct.armada_private*, %struct.armada_private** %4, align 8
  %11 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %10, i32 0, i32 0
  %12 = call i32 @drm_kms_helper_poll_fini(i32* %11)
  %13 = load %struct.armada_private*, %struct.armada_private** %4, align 8
  %14 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %13, i32 0, i32 0
  %15 = call i32 @armada_fbdev_fini(i32* %14)
  %16 = load %struct.armada_private*, %struct.armada_private** %4, align 8
  %17 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %16, i32 0, i32 0
  %18 = call i32 @drm_dev_unregister(i32* %17)
  %19 = load %struct.armada_private*, %struct.armada_private** %4, align 8
  %20 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %19, i32 0, i32 0
  %21 = call i32 @drm_atomic_helper_shutdown(i32* %20)
  %22 = load %struct.device*, %struct.device** %2, align 8
  %23 = load %struct.armada_private*, %struct.armada_private** %4, align 8
  %24 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %23, i32 0, i32 0
  %25 = call i32 @component_unbind_all(%struct.device* %22, i32* %24)
  %26 = load %struct.armada_private*, %struct.armada_private** %4, align 8
  %27 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %26, i32 0, i32 0
  %28 = call i32 @drm_mode_config_cleanup(i32* %27)
  %29 = load %struct.armada_private*, %struct.armada_private** %4, align 8
  %30 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %29, i32 0, i32 1
  %31 = call i32 @drm_mm_takedown(i32* %30)
  %32 = load %struct.armada_private*, %struct.armada_private** %4, align 8
  %33 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %32, i32 0, i32 0
  %34 = call i32 @drm_dev_put(i32* %33)
  ret void
}

declare dso_local %struct.drm_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @drm_kms_helper_poll_fini(i32*) #1

declare dso_local i32 @armada_fbdev_fini(i32*) #1

declare dso_local i32 @drm_dev_unregister(i32*) #1

declare dso_local i32 @drm_atomic_helper_shutdown(i32*) #1

declare dso_local i32 @component_unbind_all(%struct.device*, i32*) #1

declare dso_local i32 @drm_mode_config_cleanup(i32*) #1

declare dso_local i32 @drm_mm_takedown(i32*) #1

declare dso_local i32 @drm_dev_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
