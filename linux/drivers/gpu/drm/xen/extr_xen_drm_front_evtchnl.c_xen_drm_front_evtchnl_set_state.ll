; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_evtchnl.c_xen_drm_front_evtchnl_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_evtchnl.c_xen_drm_front_evtchnl_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_drm_front_info = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xen_drm_front_evtchnl_set_state(%struct.xen_drm_front_info* %0, i32 %1) #0 {
  %3 = alloca %struct.xen_drm_front_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.xen_drm_front_info* %0, %struct.xen_drm_front_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %3, align 8
  %8 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %7, i32 0, i32 2
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = icmp ne %struct.TYPE_6__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %50

12:                                               ; preds = %2
  %13 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %3, align 8
  %14 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %13, i32 0, i32 1
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %42, %12
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %3, align 8
  %20 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %17
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %3, align 8
  %26 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %25, i32 0, i32 2
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 %24, i32* %32, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %3, align 8
  %35 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %34, i32 0, i32 2
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 %33, i32* %41, align 4
  br label %42

42:                                               ; preds = %23
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %17

45:                                               ; preds = %17
  %46 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %3, align 8
  %47 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %46, i32 0, i32 1
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  br label %50

50:                                               ; preds = %45, %11
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
