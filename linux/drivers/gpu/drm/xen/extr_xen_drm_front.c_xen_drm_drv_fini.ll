; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front.c_xen_drm_drv_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front.c_xen_drm_drv_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_drm_front_info = type { i32, %struct.TYPE_2__, i32, %struct.xen_drm_front_drm_info* }
%struct.TYPE_2__ = type { i32 }
%struct.xen_drm_front_drm_info = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@XenbusStateInitialising = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xen_drm_front_info*)* @xen_drm_drv_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_drm_drv_fini(%struct.xen_drm_front_info* %0) #0 {
  %2 = alloca %struct.xen_drm_front_info*, align 8
  %3 = alloca %struct.xen_drm_front_drm_info*, align 8
  %4 = alloca %struct.drm_device*, align 8
  store %struct.xen_drm_front_info* %0, %struct.xen_drm_front_info** %2, align 8
  %5 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %2, align 8
  %6 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %5, i32 0, i32 3
  %7 = load %struct.xen_drm_front_drm_info*, %struct.xen_drm_front_drm_info** %6, align 8
  store %struct.xen_drm_front_drm_info* %7, %struct.xen_drm_front_drm_info** %3, align 8
  %8 = load %struct.xen_drm_front_drm_info*, %struct.xen_drm_front_drm_info** %3, align 8
  %9 = icmp ne %struct.xen_drm_front_drm_info* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %48

11:                                               ; preds = %1
  %12 = load %struct.xen_drm_front_drm_info*, %struct.xen_drm_front_drm_info** %3, align 8
  %13 = getelementptr inbounds %struct.xen_drm_front_drm_info, %struct.xen_drm_front_drm_info* %12, i32 0, i32 0
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %4, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = icmp ne %struct.drm_device* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  br label %48

18:                                               ; preds = %11
  %19 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %20 = call i64 @drm_dev_is_unplugged(%struct.drm_device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %48

23:                                               ; preds = %18
  %24 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %25 = call i32 @drm_kms_helper_poll_fini(%struct.drm_device* %24)
  %26 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %27 = call i32 @drm_dev_unplug(%struct.drm_device* %26)
  %28 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %29 = call i32 @drm_dev_put(%struct.drm_device* %28)
  %30 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %2, align 8
  %31 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %30, i32 0, i32 3
  store %struct.xen_drm_front_drm_info* null, %struct.xen_drm_front_drm_info** %31, align 8
  %32 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %2, align 8
  %33 = call i32 @xen_drm_front_evtchnl_free_all(%struct.xen_drm_front_info* %32)
  %34 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %2, align 8
  %35 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %34, i32 0, i32 2
  %36 = call i32 @dbuf_free_all(i32* %35)
  %37 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %2, align 8
  %38 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %23
  %43 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %2, align 8
  %44 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @XenbusStateInitialising, align 4
  %47 = call i32 @xenbus_switch_state(i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %10, %17, %22, %42, %23
  ret void
}

declare dso_local i64 @drm_dev_is_unplugged(%struct.drm_device*) #1

declare dso_local i32 @drm_kms_helper_poll_fini(%struct.drm_device*) #1

declare dso_local i32 @drm_dev_unplug(%struct.drm_device*) #1

declare dso_local i32 @drm_dev_put(%struct.drm_device*) #1

declare dso_local i32 @xen_drm_front_evtchnl_free_all(%struct.xen_drm_front_info*) #1

declare dso_local i32 @dbuf_free_all(i32*) #1

declare dso_local i32 @xenbus_switch_state(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
