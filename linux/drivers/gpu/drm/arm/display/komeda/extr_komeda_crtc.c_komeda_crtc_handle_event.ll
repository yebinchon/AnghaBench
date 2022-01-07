; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_crtc.c_komeda_crtc_handle_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_crtc.c_komeda_crtc_handle_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_crtc = type { %struct.drm_crtc, i32*, %struct.komeda_wb_connector*, %struct.TYPE_4__* }
%struct.drm_crtc = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.drm_pending_vblank_event* }
%struct.drm_pending_vblank_event = type { i32 }
%struct.komeda_wb_connector = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.komeda_events = type { i32* }

@KOMEDA_EVENT_VSYNC = common dso_local global i32 0, align 4
@KOMEDA_EVENT_EOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"CRTC[%d]: EOW happen but no wb_connector.\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"EOW.\0A\00", align 1
@KOMEDA_EVENT_FLIP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"CRTC[%d]: FLIP happen but no pending commit.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @komeda_crtc_handle_event(%struct.komeda_crtc* %0, %struct.komeda_events* %1) #0 {
  %3 = alloca %struct.komeda_crtc*, align 8
  %4 = alloca %struct.komeda_events*, align 8
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.komeda_wb_connector*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.drm_pending_vblank_event*, align 8
  store %struct.komeda_crtc* %0, %struct.komeda_crtc** %3, align 8
  store %struct.komeda_events* %1, %struct.komeda_events** %4, align 8
  %10 = load %struct.komeda_crtc*, %struct.komeda_crtc** %3, align 8
  %11 = getelementptr inbounds %struct.komeda_crtc, %struct.komeda_crtc* %10, i32 0, i32 0
  store %struct.drm_crtc* %11, %struct.drm_crtc** %5, align 8
  %12 = load %struct.komeda_events*, %struct.komeda_events** %4, align 8
  %13 = getelementptr inbounds %struct.komeda_events, %struct.komeda_events* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.komeda_crtc*, %struct.komeda_crtc** %3, align 8
  %16 = getelementptr inbounds %struct.komeda_crtc, %struct.komeda_crtc* %15, i32 0, i32 3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %14, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @KOMEDA_EVENT_VSYNC, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %28 = call i32 @drm_crtc_handle_vblank(%struct.drm_crtc* %27)
  br label %29

29:                                               ; preds = %26, %2
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @KOMEDA_EVENT_EOW, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %29
  %35 = load %struct.komeda_crtc*, %struct.komeda_crtc** %3, align 8
  %36 = getelementptr inbounds %struct.komeda_crtc, %struct.komeda_crtc* %35, i32 0, i32 2
  %37 = load %struct.komeda_wb_connector*, %struct.komeda_wb_connector** %36, align 8
  store %struct.komeda_wb_connector* %37, %struct.komeda_wb_connector** %7, align 8
  %38 = load %struct.komeda_wb_connector*, %struct.komeda_wb_connector** %7, align 8
  %39 = icmp ne %struct.komeda_wb_connector* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.komeda_wb_connector*, %struct.komeda_wb_connector** %7, align 8
  %42 = getelementptr inbounds %struct.komeda_wb_connector, %struct.komeda_wb_connector* %41, i32 0, i32 0
  %43 = call i32 @drm_writeback_signal_completion(i32* %42, i32 0)
  br label %49

44:                                               ; preds = %34
  %45 = load %struct.komeda_crtc*, %struct.komeda_crtc** %3, align 8
  %46 = getelementptr inbounds %struct.komeda_crtc, %struct.komeda_crtc* %45, i32 0, i32 0
  %47 = call i32 @drm_crtc_index(%struct.drm_crtc* %46)
  %48 = call i32 @DRM_WARN(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %44, %40
  br label %50

50:                                               ; preds = %49, %29
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @KOMEDA_EVENT_EOW, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %50
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @KOMEDA_EVENT_FLIP, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %113

62:                                               ; preds = %57
  %63 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %64 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %8, align 8
  %68 = call i32 @spin_lock_irqsave(i32* %66, i64 %67)
  %69 = load %struct.komeda_crtc*, %struct.komeda_crtc** %3, align 8
  %70 = getelementptr inbounds %struct.komeda_crtc, %struct.komeda_crtc* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %62
  %74 = load %struct.komeda_crtc*, %struct.komeda_crtc** %3, align 8
  %75 = getelementptr inbounds %struct.komeda_crtc, %struct.komeda_crtc* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @complete_all(i32* %76)
  %78 = load %struct.komeda_crtc*, %struct.komeda_crtc** %3, align 8
  %79 = getelementptr inbounds %struct.komeda_crtc, %struct.komeda_crtc* %78, i32 0, i32 1
  store i32* null, i32** %79, align 8
  br label %106

80:                                               ; preds = %62
  %81 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %82 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %81, i32 0, i32 1
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %84, align 8
  %86 = icmp ne %struct.drm_pending_vblank_event* %85, null
  br i1 %86, label %87, label %100

87:                                               ; preds = %80
  %88 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %89 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %88, i32 0, i32 1
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %91, align 8
  store %struct.drm_pending_vblank_event* %92, %struct.drm_pending_vblank_event** %9, align 8
  %93 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %94 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %93, i32 0, i32 1
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  store %struct.drm_pending_vblank_event* null, %struct.drm_pending_vblank_event** %96, align 8
  %97 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %98 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %9, align 8
  %99 = call i32 @drm_crtc_send_vblank_event(%struct.drm_crtc* %97, %struct.drm_pending_vblank_event* %98)
  br label %105

100:                                              ; preds = %80
  %101 = load %struct.komeda_crtc*, %struct.komeda_crtc** %3, align 8
  %102 = getelementptr inbounds %struct.komeda_crtc, %struct.komeda_crtc* %101, i32 0, i32 0
  %103 = call i32 @drm_crtc_index(%struct.drm_crtc* %102)
  %104 = call i32 @DRM_WARN(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %100, %87
  br label %106

106:                                              ; preds = %105, %73
  %107 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %108 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i64, i64* %8, align 8
  %112 = call i32 @spin_unlock_irqrestore(i32* %110, i64 %111)
  br label %113

113:                                              ; preds = %106, %57
  ret void
}

declare dso_local i32 @drm_crtc_handle_vblank(%struct.drm_crtc*) #1

declare dso_local i32 @drm_writeback_signal_completion(i32*, i32) #1

declare dso_local i32 @DRM_WARN(i8*, i32) #1

declare dso_local i32 @drm_crtc_index(%struct.drm_crtc*) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @complete_all(i32*) #1

declare dso_local i32 @drm_crtc_send_vblank_event(%struct.drm_crtc*, %struct.drm_pending_vblank_event*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
