; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front.c_xen_drm_front_fb_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front.c_xen_drm_front_fb_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_drm_front_info = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.xen_drm_front_evtchnl }
%struct.xen_drm_front_evtchnl = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.xen_drm_front_dbuf = type { i8* }
%struct.xendispl_req = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i8*, i8*, i8*, i8* }

@GENERIC_OP_EVT_CHNL = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@XENDISPL_OP_FB_ATTACH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_drm_front_fb_attach(%struct.xen_drm_front_info* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.xen_drm_front_info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.xen_drm_front_evtchnl*, align 8
  %15 = alloca %struct.xen_drm_front_dbuf*, align 8
  %16 = alloca %struct.xendispl_req*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.xen_drm_front_info* %0, %struct.xen_drm_front_info** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %19 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %8, align 8
  %20 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %19, i32 0, i32 2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = load i64, i64* @GENERIC_OP_EVT_CHNL, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store %struct.xen_drm_front_evtchnl* %24, %struct.xen_drm_front_evtchnl** %14, align 8
  %25 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %14, align 8
  %26 = icmp ne %struct.xen_drm_front_evtchnl* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %6
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %104

34:                                               ; preds = %6
  %35 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %8, align 8
  %36 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %35, i32 0, i32 1
  %37 = load i8*, i8** %9, align 8
  %38 = call %struct.xen_drm_front_dbuf* @dbuf_get(i32* %36, i8* %37)
  store %struct.xen_drm_front_dbuf* %38, %struct.xen_drm_front_dbuf** %15, align 8
  %39 = load %struct.xen_drm_front_dbuf*, %struct.xen_drm_front_dbuf** %15, align 8
  %40 = icmp ne %struct.xen_drm_front_dbuf* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %104

44:                                               ; preds = %34
  %45 = load i8*, i8** %10, align 8
  %46 = load %struct.xen_drm_front_dbuf*, %struct.xen_drm_front_dbuf** %15, align 8
  %47 = getelementptr inbounds %struct.xen_drm_front_dbuf, %struct.xen_drm_front_dbuf* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %14, align 8
  %49 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %8, align 8
  %54 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %53, i32 0, i32 0
  %55 = load i64, i64* %17, align 8
  %56 = call i32 @spin_lock_irqsave(i32* %54, i64 %55)
  %57 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %14, align 8
  %58 = load i32, i32* @XENDISPL_OP_FB_ATTACH, align 4
  %59 = call %struct.xendispl_req* @be_prepare_req(%struct.xen_drm_front_evtchnl* %57, i32 %58)
  store %struct.xendispl_req* %59, %struct.xendispl_req** %16, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = load %struct.xendispl_req*, %struct.xendispl_req** %16, align 8
  %62 = getelementptr inbounds %struct.xendispl_req, %struct.xendispl_req* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 4
  store i8* %60, i8** %64, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = load %struct.xendispl_req*, %struct.xendispl_req** %16, align 8
  %67 = getelementptr inbounds %struct.xendispl_req, %struct.xendispl_req* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 3
  store i8* %65, i8** %69, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = load %struct.xendispl_req*, %struct.xendispl_req** %16, align 8
  %72 = getelementptr inbounds %struct.xendispl_req, %struct.xendispl_req* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  store i8* %70, i8** %74, align 8
  %75 = load i8*, i8** %12, align 8
  %76 = load %struct.xendispl_req*, %struct.xendispl_req** %16, align 8
  %77 = getelementptr inbounds %struct.xendispl_req, %struct.xendispl_req* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  store i8* %75, i8** %79, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = load %struct.xendispl_req*, %struct.xendispl_req** %16, align 8
  %82 = getelementptr inbounds %struct.xendispl_req, %struct.xendispl_req* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  store i8* %80, i8** %84, align 8
  %85 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %14, align 8
  %86 = load %struct.xendispl_req*, %struct.xendispl_req** %16, align 8
  %87 = call i32 @be_stream_do_io(%struct.xen_drm_front_evtchnl* %85, %struct.xendispl_req* %86)
  store i32 %87, i32* %18, align 4
  %88 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %8, align 8
  %89 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %88, i32 0, i32 0
  %90 = load i64, i64* %17, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i64 %90)
  %92 = load i32, i32* %18, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %44
  %95 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %14, align 8
  %96 = call i32 @be_stream_wait_io(%struct.xen_drm_front_evtchnl* %95)
  store i32 %96, i32* %18, align 4
  br label %97

97:                                               ; preds = %94, %44
  %98 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %14, align 8
  %99 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = call i32 @mutex_unlock(i32* %101)
  %103 = load i32, i32* %18, align 4
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %97, %41, %31
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.xen_drm_front_dbuf* @dbuf_get(i32*, i8*) #1

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
