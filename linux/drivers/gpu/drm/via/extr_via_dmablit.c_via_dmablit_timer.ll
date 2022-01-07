; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/via/extr_via_dmablit.c_via_dmablit_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/via/extr_via_dmablit.c_via_dmablit_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.drm_device* }
%struct.drm_device = type { i64 }
%struct.timer_list = type { i32 }
%struct.TYPE_5__ = type { i32 }

@poll_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Polling timer called for engine %d, jiffies %lu\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@blitq = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @via_dmablit_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @via_dmablit_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = ptrtoint %struct.TYPE_6__* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @poll_timer, align 4
  %10 = call %struct.TYPE_6__* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %3, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %4, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_5__*
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = sub i64 0, %21
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i64 %22
  %24 = ptrtoint %struct.TYPE_6__* %23 to i32
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i64, i64* @jiffies, align 8
  %27 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %25, i64 %26)
  %28 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @via_dmablit_handler(%struct.drm_device* %28, i32 %29, i32 0)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = call i32 @timer_pending(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* @jiffies, align 8
  %39 = add nsw i64 %38, 1
  %40 = call i32 @mod_timer(i32* %37, i64 %39)
  %41 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @via_dmablit_handler(%struct.drm_device* %41, i32 %42, i32 0)
  br label %44

44:                                               ; preds = %35, %1
  ret void
}

declare dso_local %struct.TYPE_6__* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, i64) #1

declare dso_local i32 @via_dmablit_handler(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
