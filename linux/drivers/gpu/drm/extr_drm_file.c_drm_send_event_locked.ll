; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_file.c_drm_send_event_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_file.c_drm_send_event_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_pending_event = type { %struct.TYPE_2__*, i32, i32, i64, i32*, i32 (i32*)* }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_send_event_locked(%struct.drm_device* %0, %struct.drm_pending_event* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_pending_event*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.drm_pending_event* %1, %struct.drm_pending_event** %4, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 0
  %7 = call i32 @assert_spin_locked(i32* %6)
  %8 = load %struct.drm_pending_event*, %struct.drm_pending_event** %4, align 8
  %9 = getelementptr inbounds %struct.drm_pending_event, %struct.drm_pending_event* %8, i32 0, i32 4
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load %struct.drm_pending_event*, %struct.drm_pending_event** %4, align 8
  %14 = getelementptr inbounds %struct.drm_pending_event, %struct.drm_pending_event* %13, i32 0, i32 4
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @complete_all(i32* %15)
  %17 = load %struct.drm_pending_event*, %struct.drm_pending_event** %4, align 8
  %18 = getelementptr inbounds %struct.drm_pending_event, %struct.drm_pending_event* %17, i32 0, i32 5
  %19 = load i32 (i32*)*, i32 (i32*)** %18, align 8
  %20 = load %struct.drm_pending_event*, %struct.drm_pending_event** %4, align 8
  %21 = getelementptr inbounds %struct.drm_pending_event, %struct.drm_pending_event* %20, i32 0, i32 4
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 %19(i32* %22)
  %24 = load %struct.drm_pending_event*, %struct.drm_pending_event** %4, align 8
  %25 = getelementptr inbounds %struct.drm_pending_event, %struct.drm_pending_event* %24, i32 0, i32 4
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %12, %2
  %27 = load %struct.drm_pending_event*, %struct.drm_pending_event** %4, align 8
  %28 = getelementptr inbounds %struct.drm_pending_event, %struct.drm_pending_event* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.drm_pending_event*, %struct.drm_pending_event** %4, align 8
  %33 = getelementptr inbounds %struct.drm_pending_event, %struct.drm_pending_event* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @dma_fence_signal(i64 %34)
  %36 = load %struct.drm_pending_event*, %struct.drm_pending_event** %4, align 8
  %37 = getelementptr inbounds %struct.drm_pending_event, %struct.drm_pending_event* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @dma_fence_put(i64 %38)
  br label %40

40:                                               ; preds = %31, %26
  %41 = load %struct.drm_pending_event*, %struct.drm_pending_event** %4, align 8
  %42 = getelementptr inbounds %struct.drm_pending_event, %struct.drm_pending_event* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = icmp ne %struct.TYPE_2__* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load %struct.drm_pending_event*, %struct.drm_pending_event** %4, align 8
  %47 = call i32 @kfree(%struct.drm_pending_event* %46)
  br label %64

48:                                               ; preds = %40
  %49 = load %struct.drm_pending_event*, %struct.drm_pending_event** %4, align 8
  %50 = getelementptr inbounds %struct.drm_pending_event, %struct.drm_pending_event* %49, i32 0, i32 2
  %51 = call i32 @list_del(i32* %50)
  %52 = load %struct.drm_pending_event*, %struct.drm_pending_event** %4, align 8
  %53 = getelementptr inbounds %struct.drm_pending_event, %struct.drm_pending_event* %52, i32 0, i32 1
  %54 = load %struct.drm_pending_event*, %struct.drm_pending_event** %4, align 8
  %55 = getelementptr inbounds %struct.drm_pending_event, %struct.drm_pending_event* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = call i32 @list_add_tail(i32* %53, i32* %57)
  %59 = load %struct.drm_pending_event*, %struct.drm_pending_event** %4, align 8
  %60 = getelementptr inbounds %struct.drm_pending_event, %struct.drm_pending_event* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = call i32 @wake_up_interruptible(i32* %62)
  br label %64

64:                                               ; preds = %48, %45
  ret void
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @complete_all(i32*) #1

declare dso_local i32 @dma_fence_signal(i64) #1

declare dso_local i32 @dma_fence_put(i64) #1

declare dso_local i32 @kfree(%struct.drm_pending_event*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
