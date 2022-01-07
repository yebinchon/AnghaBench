; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front.c_xen_drm_front_fb_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front.c_xen_drm_front_fb_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_drm_front_info = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.xen_drm_front_evtchnl }
%struct.xen_drm_front_evtchnl = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.xendispl_req = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@GENERIC_OP_EVT_CHNL = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@XENDISPL_OP_FB_DETACH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_drm_front_fb_detach(%struct.xen_drm_front_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xen_drm_front_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xen_drm_front_evtchnl*, align 8
  %7 = alloca %struct.xendispl_req*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.xen_drm_front_info* %0, %struct.xen_drm_front_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %4, align 8
  %11 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = load i64, i64* @GENERIC_OP_EVT_CHNL, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store %struct.xen_drm_front_evtchnl* %15, %struct.xen_drm_front_evtchnl** %6, align 8
  %16 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %6, align 8
  %17 = icmp ne %struct.xen_drm_front_evtchnl* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %62

25:                                               ; preds = %2
  %26 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %6, align 8
  %27 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %4, align 8
  %32 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %31, i32 0, i32 0
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %6, align 8
  %36 = load i32, i32* @XENDISPL_OP_FB_DETACH, align 4
  %37 = call %struct.xendispl_req* @be_prepare_req(%struct.xen_drm_front_evtchnl* %35, i32 %36)
  store %struct.xendispl_req* %37, %struct.xendispl_req** %7, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.xendispl_req*, %struct.xendispl_req** %7, align 8
  %40 = getelementptr inbounds %struct.xendispl_req, %struct.xendispl_req* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 4
  %43 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %6, align 8
  %44 = load %struct.xendispl_req*, %struct.xendispl_req** %7, align 8
  %45 = call i32 @be_stream_do_io(%struct.xen_drm_front_evtchnl* %43, %struct.xendispl_req* %44)
  store i32 %45, i32* %9, align 4
  %46 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %4, align 8
  %47 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %46, i32 0, i32 0
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %25
  %53 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %6, align 8
  %54 = call i32 @be_stream_wait_io(%struct.xen_drm_front_evtchnl* %53)
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %52, %25
  %56 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %6, align 8
  %57 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %55, %22
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.xendispl_req* @be_prepare_req(%struct.xen_drm_front_evtchnl*, i32) #1

declare dso_local i32 @be_stream_do_io(%struct.xen_drm_front_evtchnl*, %struct.xendispl_req*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @be_stream_wait_io(%struct.xen_drm_front_evtchnl*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
