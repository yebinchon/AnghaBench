; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front.c_xen_drm_front_page_flip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front.c_xen_drm_front_page_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_drm_front_info = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.xen_drm_front_evtchnl }
%struct.xen_drm_front_evtchnl = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.xendispl_req = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@XENDISPL_OP_PG_FLIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_drm_front_page_flip(%struct.xen_drm_front_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xen_drm_front_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.xen_drm_front_evtchnl*, align 8
  %9 = alloca %struct.xendispl_req*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.xen_drm_front_info* %0, %struct.xen_drm_front_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %5, align 8
  %14 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sge i32 %12, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %67

23:                                               ; preds = %3
  %24 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %5, align 8
  %25 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %24, i32 0, i32 2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store %struct.xen_drm_front_evtchnl* %30, %struct.xen_drm_front_evtchnl** %8, align 8
  %31 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %8, align 8
  %32 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %5, align 8
  %37 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %36, i32 0, i32 1
  %38 = load i64, i64* %10, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %8, align 8
  %41 = load i32, i32* @XENDISPL_OP_PG_FLIP, align 4
  %42 = call %struct.xendispl_req* @be_prepare_req(%struct.xen_drm_front_evtchnl* %40, i32 %41)
  store %struct.xendispl_req* %42, %struct.xendispl_req** %9, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.xendispl_req*, %struct.xendispl_req** %9, align 8
  %45 = getelementptr inbounds %struct.xendispl_req, %struct.xendispl_req* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  store i32 %43, i32* %47, align 4
  %48 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %8, align 8
  %49 = load %struct.xendispl_req*, %struct.xendispl_req** %9, align 8
  %50 = call i32 @be_stream_do_io(%struct.xen_drm_front_evtchnl* %48, %struct.xendispl_req* %49)
  store i32 %50, i32* %11, align 4
  %51 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %5, align 8
  %52 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %51, i32 0, i32 1
  %53 = load i64, i64* %10, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load i32, i32* %11, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %23
  %58 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %8, align 8
  %59 = call i32 @be_stream_wait_io(%struct.xen_drm_front_evtchnl* %58)
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %57, %23
  %61 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %8, align 8
  %62 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %60, %20
  %68 = load i32, i32* %4, align 4
  ret i32 %68
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
