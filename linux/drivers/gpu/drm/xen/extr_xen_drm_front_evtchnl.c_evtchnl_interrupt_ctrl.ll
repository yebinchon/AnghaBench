; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_evtchnl.c_evtchnl_interrupt_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_evtchnl.c_evtchnl_interrupt_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_drm_front_evtchnl = type { i64, i64, %struct.TYPE_8__, %struct.xen_drm_front_info* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.xen_drm_front_info = type { i32 }
%struct.xendispl_resp = type { i64, i32, i32 }

@EVTCHNL_STATE_CONNECTED = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Operation %d is not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @evtchnl_interrupt_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evtchnl_interrupt_ctrl(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.xen_drm_front_evtchnl*, align 8
  %7 = alloca %struct.xen_drm_front_info*, align 8
  %8 = alloca %struct.xendispl_resp*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.xen_drm_front_evtchnl*
  store %struct.xen_drm_front_evtchnl* %14, %struct.xen_drm_front_evtchnl** %6, align 8
  %15 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %6, align 8
  %16 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %15, i32 0, i32 3
  %17 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %16, align 8
  store %struct.xen_drm_front_info* %17, %struct.xen_drm_front_info** %7, align 8
  %18 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %6, align 8
  %19 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @EVTCHNL_STATE_CONNECTED, align 8
  %22 = icmp ne i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %27, i32* %3, align 4
  br label %139

28:                                               ; preds = %2
  %29 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %7, align 8
  %30 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %29, i32 0, i32 0
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  br label %33

33:                                               ; preds = %121, %28
  %34 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %6, align 8
  %35 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %10, align 8
  %42 = call i32 (...) @virt_rmb()
  %43 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %6, align 8
  %44 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %9, align 8
  br label %49

49:                                               ; preds = %94, %33
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %10, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %97

53:                                               ; preds = %49
  %54 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %6, align 8
  %55 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i64, i64* %9, align 8
  %59 = call %struct.xendispl_resp* @RING_GET_RESPONSE(%struct.TYPE_9__* %57, i64 %58)
  store %struct.xendispl_resp* %59, %struct.xendispl_resp** %8, align 8
  %60 = load %struct.xendispl_resp*, %struct.xendispl_resp** %8, align 8
  %61 = getelementptr inbounds %struct.xendispl_resp, %struct.xendispl_resp* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %6, align 8
  %64 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %62, %65
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %53
  br label %94

71:                                               ; preds = %53
  %72 = load %struct.xendispl_resp*, %struct.xendispl_resp** %8, align 8
  %73 = getelementptr inbounds %struct.xendispl_resp, %struct.xendispl_resp* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  switch i32 %74, label %88 [
    i32 129, label %75
    i32 131, label %75
    i32 130, label %75
    i32 133, label %75
    i32 132, label %75
    i32 128, label %75
  ]

75:                                               ; preds = %71, %71, %71, %71, %71, %71
  %76 = load %struct.xendispl_resp*, %struct.xendispl_resp** %8, align 8
  %77 = getelementptr inbounds %struct.xendispl_resp, %struct.xendispl_resp* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %6, align 8
  %80 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  store i32 %78, i32* %82, align 4
  %83 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %6, align 8
  %84 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = call i32 @complete(i32* %86)
  br label %93

88:                                               ; preds = %71
  %89 = load %struct.xendispl_resp*, %struct.xendispl_resp** %8, align 8
  %90 = getelementptr inbounds %struct.xendispl_resp, %struct.xendispl_resp* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %88, %75
  br label %94

94:                                               ; preds = %93, %70
  %95 = load i64, i64* %9, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %9, align 8
  br label %49

97:                                               ; preds = %49
  %98 = load i64, i64* %9, align 8
  %99 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %6, align 8
  %100 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  store i64 %98, i64* %103, align 8
  %104 = load i64, i64* %9, align 8
  %105 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %6, align 8
  %106 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %104, %110
  br i1 %111, label %112, label %123

112:                                              ; preds = %97
  %113 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %6, align 8
  %114 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @RING_FINAL_CHECK_FOR_RESPONSES(%struct.TYPE_9__* %116, i32 %117)
  %119 = load i32, i32* %12, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %112
  br label %33

122:                                              ; preds = %112
  br label %133

123:                                              ; preds = %97
  %124 = load i64, i64* %9, align 8
  %125 = add nsw i64 %124, 1
  %126 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %6, align 8
  %127 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  store i64 %125, i64* %132, align 8
  br label %133

133:                                              ; preds = %123, %122
  %134 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %7, align 8
  %135 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %134, i32 0, i32 0
  %136 = load i64, i64* %11, align 8
  %137 = call i32 @spin_unlock_irqrestore(i32* %135, i64 %136)
  %138 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %133, %26
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @virt_rmb(...) #1

declare dso_local %struct.xendispl_resp* @RING_GET_RESPONSE(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @RING_FINAL_CHECK_FOR_RESPONSES(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
