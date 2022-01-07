; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front.c_xen_drm_front_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front.c_xen_drm_front_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_drm_front_drm_pipeline = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.xen_drm_front_info* }
%struct.xen_drm_front_info = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.xen_drm_front_evtchnl }
%struct.xen_drm_front_evtchnl = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.xendispl_req = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i8*, i8*, i8*, i8*, i8* }

@EIO = common dso_local global i32 0, align 4
@XENDISPL_OP_SET_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_drm_front_mode_set(%struct.xen_drm_front_drm_pipeline* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.xen_drm_front_drm_pipeline*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.xen_drm_front_evtchnl*, align 8
  %17 = alloca %struct.xen_drm_front_info*, align 8
  %18 = alloca %struct.xendispl_req*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.xen_drm_front_drm_pipeline* %0, %struct.xen_drm_front_drm_pipeline** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %21 = load %struct.xen_drm_front_drm_pipeline*, %struct.xen_drm_front_drm_pipeline** %9, align 8
  %22 = getelementptr inbounds %struct.xen_drm_front_drm_pipeline, %struct.xen_drm_front_drm_pipeline* %21, i32 0, i32 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %24, align 8
  store %struct.xen_drm_front_info* %25, %struct.xen_drm_front_info** %17, align 8
  %26 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %17, align 8
  %27 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %26, i32 0, i32 1
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = load %struct.xen_drm_front_drm_pipeline*, %struct.xen_drm_front_drm_pipeline** %9, align 8
  %30 = getelementptr inbounds %struct.xen_drm_front_drm_pipeline, %struct.xen_drm_front_drm_pipeline* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store %struct.xen_drm_front_evtchnl* %33, %struct.xen_drm_front_evtchnl** %16, align 8
  %34 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %16, align 8
  %35 = icmp ne %struct.xen_drm_front_evtchnl* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %7
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  br label %105

43:                                               ; preds = %7
  %44 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %16, align 8
  %45 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %17, align 8
  %50 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %49, i32 0, i32 0
  %51 = load i64, i64* %19, align 8
  %52 = call i32 @spin_lock_irqsave(i32* %50, i64 %51)
  %53 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %16, align 8
  %54 = load i32, i32* @XENDISPL_OP_SET_CONFIG, align 4
  %55 = call %struct.xendispl_req* @be_prepare_req(%struct.xen_drm_front_evtchnl* %53, i32 %54)
  store %struct.xendispl_req* %55, %struct.xendispl_req** %18, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = load %struct.xendispl_req*, %struct.xendispl_req** %18, align 8
  %58 = getelementptr inbounds %struct.xendispl_req, %struct.xendispl_req* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 5
  store i8* %56, i8** %60, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = load %struct.xendispl_req*, %struct.xendispl_req** %18, align 8
  %63 = getelementptr inbounds %struct.xendispl_req, %struct.xendispl_req* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 4
  store i8* %61, i8** %65, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = load %struct.xendispl_req*, %struct.xendispl_req** %18, align 8
  %68 = getelementptr inbounds %struct.xendispl_req, %struct.xendispl_req* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 3
  store i8* %66, i8** %70, align 8
  %71 = load i8*, i8** %13, align 8
  %72 = load %struct.xendispl_req*, %struct.xendispl_req** %18, align 8
  %73 = getelementptr inbounds %struct.xendispl_req, %struct.xendispl_req* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  store i8* %71, i8** %75, align 8
  %76 = load i8*, i8** %14, align 8
  %77 = load %struct.xendispl_req*, %struct.xendispl_req** %18, align 8
  %78 = getelementptr inbounds %struct.xendispl_req, %struct.xendispl_req* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  store i8* %76, i8** %80, align 8
  %81 = load i32, i32* %15, align 4
  %82 = load %struct.xendispl_req*, %struct.xendispl_req** %18, align 8
  %83 = getelementptr inbounds %struct.xendispl_req, %struct.xendispl_req* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  store i32 %81, i32* %85, align 8
  %86 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %16, align 8
  %87 = load %struct.xendispl_req*, %struct.xendispl_req** %18, align 8
  %88 = call i32 @be_stream_do_io(%struct.xen_drm_front_evtchnl* %86, %struct.xendispl_req* %87)
  store i32 %88, i32* %20, align 4
  %89 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %17, align 8
  %90 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %89, i32 0, i32 0
  %91 = load i64, i64* %19, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  %93 = load i32, i32* %20, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %43
  %96 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %16, align 8
  %97 = call i32 @be_stream_wait_io(%struct.xen_drm_front_evtchnl* %96)
  store i32 %97, i32* %20, align 4
  br label %98

98:                                               ; preds = %95, %43
  %99 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %16, align 8
  %100 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load i32, i32* %20, align 4
  store i32 %104, i32* %8, align 4
  br label %105

105:                                              ; preds = %98, %40
  %106 = load i32, i32* %8, align 4
  ret i32 %106
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
