; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front.c_xen_drm_front_dbuf_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front.c_xen_drm_front_dbuf_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_drm_front_info = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.xen_drm_front_evtchnl }
%struct.xen_drm_front_evtchnl = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.xendispl_req = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@GENERIC_OP_EVT_CHNL = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@XENDISPL_OP_DBUF_DESTROY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xen_drm_front_info*, i32)* @xen_drm_front_dbuf_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_drm_front_dbuf_destroy(%struct.xen_drm_front_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xen_drm_front_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xen_drm_front_evtchnl*, align 8
  %7 = alloca %struct.xendispl_req*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.xen_drm_front_info* %0, %struct.xen_drm_front_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %4, align 8
  %12 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %11, i32 0, i32 3
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = load i64, i64* @GENERIC_OP_EVT_CHNL, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store %struct.xen_drm_front_evtchnl* %16, %struct.xen_drm_front_evtchnl** %6, align 8
  %17 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %6, align 8
  %18 = icmp ne %struct.xen_drm_front_evtchnl* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %83

26:                                               ; preds = %2
  %27 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %4, align 8
  %28 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %4, align 8
  %35 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %34, i32 0, i32 0
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @dbuf_free(i32* %35, i32 %36)
  br label %38

38:                                               ; preds = %33, %26
  %39 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %6, align 8
  %40 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %4, align 8
  %45 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %44, i32 0, i32 1
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @spin_lock_irqsave(i32* %45, i64 %46)
  %48 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %6, align 8
  %49 = load i32, i32* @XENDISPL_OP_DBUF_DESTROY, align 4
  %50 = call %struct.xendispl_req* @be_prepare_req(%struct.xen_drm_front_evtchnl* %48, i32 %49)
  store %struct.xendispl_req* %50, %struct.xendispl_req** %7, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.xendispl_req*, %struct.xendispl_req** %7, align 8
  %53 = getelementptr inbounds %struct.xendispl_req, %struct.xendispl_req* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  store i32 %51, i32* %55, align 4
  %56 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %6, align 8
  %57 = load %struct.xendispl_req*, %struct.xendispl_req** %7, align 8
  %58 = call i32 @be_stream_do_io(%struct.xen_drm_front_evtchnl* %56, %struct.xendispl_req* %57)
  store i32 %58, i32* %10, align 4
  %59 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %4, align 8
  %60 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %59, i32 0, i32 1
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  %63 = load i32, i32* %10, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %38
  %66 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %6, align 8
  %67 = call i32 @be_stream_wait_io(%struct.xen_drm_front_evtchnl* %66)
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %65, %38
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %68
  %72 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %4, align 8
  %73 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %72, i32 0, i32 0
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @dbuf_free(i32* %73, i32 %74)
  br label %76

76:                                               ; preds = %71, %68
  %77 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %6, align 8
  %78 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %76, %23
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dbuf_free(i32*, i32) #1

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
