; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vblank.c_send_vblank_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vblank.c_send_vblank_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_pending_vblank_event = type { %struct.TYPE_10__, i32, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_7__ = type { i32, i32, i8* }
%struct.TYPE_6__ = type { i32 }
%struct.timespec64 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.drm_pending_vblank_event*, i8*, i32)* @send_vblank_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_vblank_event(%struct.drm_device* %0, %struct.drm_pending_vblank_event* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_pending_vblank_event*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.timespec64, align 4
  %10 = alloca %struct.timespec64, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_pending_vblank_event* %1, %struct.drm_pending_vblank_event** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %6, align 8
  %12 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %56 [
    i32 128, label %16
    i32 129, label %16
    i32 130, label %40
  ]

16:                                               ; preds = %4, %4
  %17 = load i32, i32* %8, align 4
  %18 = call i64 @ktime_to_timespec64(i32 %17)
  %19 = bitcast %struct.timespec64* %10 to i64*
  store i64 %18, i64* %19, align 4
  %20 = bitcast %struct.timespec64* %9 to i8*
  %21 = bitcast %struct.timespec64* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 8, i1 false)
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %6, align 8
  %24 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  store i8* %22, i8** %26, align 8
  %27 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %9, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %6, align 8
  %30 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  store i32 %28, i32* %32, align 4
  %33 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %9, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %34, 1000
  %36 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %6, align 8
  %37 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 8
  br label %56

40:                                               ; preds = %4
  %41 = load i8*, i8** %7, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i8*, i8** %7, align 8
  %45 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %6, align 8
  %46 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  store i8* %44, i8** %48, align 8
  br label %49

49:                                               ; preds = %43, %40
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @ktime_to_ns(i32 %50)
  %52 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %6, align 8
  %53 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i32 %51, i32* %55, align 8
  br label %56

56:                                               ; preds = %4, %49, %16
  %57 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %6, align 8
  %58 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %6, align 8
  %62 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @trace_drm_vblank_event_delivered(i32 %60, i32 %63, i8* %64)
  %66 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %67 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %6, align 8
  %68 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %67, i32 0, i32 0
  %69 = call i32 @drm_send_event_locked(%struct.drm_device* %66, %struct.TYPE_10__* %68)
  ret void
}

declare dso_local i64 @ktime_to_timespec64(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ktime_to_ns(i32) #1

declare dso_local i32 @trace_drm_vblank_event_delivered(i32, i32, i8*) #1

declare dso_local i32 @drm_send_event_locked(%struct.drm_device*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
