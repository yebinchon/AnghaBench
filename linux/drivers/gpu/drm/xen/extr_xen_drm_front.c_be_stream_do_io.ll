; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front.c_be_stream_do_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front.c_be_stream_do_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_drm_front_evtchnl = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.xendispl_req = type { i32 }

@EVTCHNL_STATE_CONNECTED = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xen_drm_front_evtchnl*, %struct.xendispl_req*)* @be_stream_do_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_stream_do_io(%struct.xen_drm_front_evtchnl* %0, %struct.xendispl_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xen_drm_front_evtchnl*, align 8
  %5 = alloca %struct.xendispl_req*, align 8
  store %struct.xen_drm_front_evtchnl* %0, %struct.xen_drm_front_evtchnl** %4, align 8
  store %struct.xendispl_req* %1, %struct.xendispl_req** %5, align 8
  %6 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %4, align 8
  %7 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = call i32 @reinit_completion(i32* %9)
  %11 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %4, align 8
  %12 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @EVTCHNL_STATE_CONNECTED, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %25

22:                                               ; preds = %2
  %23 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %4, align 8
  %24 = call i32 @xen_drm_front_evtchnl_flush(%struct.xen_drm_front_evtchnl* %23)
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @xen_drm_front_evtchnl_flush(%struct.xen_drm_front_evtchnl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
