; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front.c_xen_drm_drv_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front.c_xen_drm_drv_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.xen_drm_front_info*, %struct.drm_device* }
%struct.xen_drm_front_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.xen_drm_front_drm_info = type { %struct.xen_drm_front_info*, %struct.xen_drm_front_drm_info* }

@XenbusStateInitialising = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @xen_drm_drv_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_drm_drv_release(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.xen_drm_front_drm_info*, align 8
  %4 = alloca %struct.xen_drm_front_info*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 1
  %7 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %8 = bitcast %struct.drm_device* %7 to %struct.xen_drm_front_drm_info*
  store %struct.xen_drm_front_drm_info* %8, %struct.xen_drm_front_drm_info** %3, align 8
  %9 = load %struct.xen_drm_front_drm_info*, %struct.xen_drm_front_drm_info** %3, align 8
  %10 = getelementptr inbounds %struct.xen_drm_front_drm_info, %struct.xen_drm_front_drm_info* %9, i32 0, i32 0
  %11 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %10, align 8
  store %struct.xen_drm_front_info* %11, %struct.xen_drm_front_info** %4, align 8
  %12 = load %struct.xen_drm_front_drm_info*, %struct.xen_drm_front_drm_info** %3, align 8
  %13 = call i32 @xen_drm_front_kms_fini(%struct.xen_drm_front_drm_info* %12)
  %14 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %15 = bitcast %struct.drm_device* %14 to %struct.xen_drm_front_drm_info*
  %16 = call i32 @drm_atomic_helper_shutdown(%struct.xen_drm_front_drm_info* %15)
  %17 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %18 = bitcast %struct.drm_device* %17 to %struct.xen_drm_front_drm_info*
  %19 = call i32 @drm_mode_config_cleanup(%struct.xen_drm_front_drm_info* %18)
  %20 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %21 = bitcast %struct.drm_device* %20 to %struct.xen_drm_front_drm_info*
  %22 = call i32 @drm_dev_fini(%struct.xen_drm_front_drm_info* %21)
  %23 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %24 = bitcast %struct.drm_device* %23 to %struct.xen_drm_front_drm_info*
  %25 = call i32 @kfree(%struct.xen_drm_front_drm_info* %24)
  %26 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %4, align 8
  %27 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %1
  %32 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %4, align 8
  %33 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @XenbusStateInitialising, align 4
  %36 = call i32 @xenbus_switch_state(i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %31, %1
  %38 = load %struct.xen_drm_front_drm_info*, %struct.xen_drm_front_drm_info** %3, align 8
  %39 = call i32 @kfree(%struct.xen_drm_front_drm_info* %38)
  ret void
}

declare dso_local i32 @xen_drm_front_kms_fini(%struct.xen_drm_front_drm_info*) #1

declare dso_local i32 @drm_atomic_helper_shutdown(%struct.xen_drm_front_drm_info*) #1

declare dso_local i32 @drm_mode_config_cleanup(%struct.xen_drm_front_drm_info*) #1

declare dso_local i32 @drm_dev_fini(%struct.xen_drm_front_drm_info*) #1

declare dso_local i32 @kfree(%struct.xen_drm_front_drm_info*) #1

declare dso_local i32 @xenbus_switch_state(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
