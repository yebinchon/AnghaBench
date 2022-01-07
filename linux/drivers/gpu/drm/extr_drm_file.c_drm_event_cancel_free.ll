; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_file.c_drm_event_cancel_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_file.c_drm_event_cancel_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_pending_event = type { i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_event_cancel_free(%struct.drm_device* %0, %struct.drm_pending_event* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_pending_event*, align 8
  %5 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.drm_pending_event* %1, %struct.drm_pending_event** %4, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.drm_pending_event*, %struct.drm_pending_event** %4, align 8
  %11 = getelementptr inbounds %struct.drm_pending_event, %struct.drm_pending_event* %10, i32 0, i32 3
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  br i1 %13, label %14, label %31

14:                                               ; preds = %2
  %15 = load %struct.drm_pending_event*, %struct.drm_pending_event** %4, align 8
  %16 = getelementptr inbounds %struct.drm_pending_event, %struct.drm_pending_event* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.drm_pending_event*, %struct.drm_pending_event** %4, align 8
  %21 = getelementptr inbounds %struct.drm_pending_event, %struct.drm_pending_event* %20, i32 0, i32 3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %19
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %23, align 4
  %28 = load %struct.drm_pending_event*, %struct.drm_pending_event** %4, align 8
  %29 = getelementptr inbounds %struct.drm_pending_event, %struct.drm_pending_event* %28, i32 0, i32 1
  %30 = call i32 @list_del(i32* %29)
  br label %31

31:                                               ; preds = %14, %2
  %32 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %33 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %32, i32 0, i32 0
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load %struct.drm_pending_event*, %struct.drm_pending_event** %4, align 8
  %37 = getelementptr inbounds %struct.drm_pending_event, %struct.drm_pending_event* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = load %struct.drm_pending_event*, %struct.drm_pending_event** %4, align 8
  %42 = getelementptr inbounds %struct.drm_pending_event, %struct.drm_pending_event* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @dma_fence_put(i64 %43)
  br label %45

45:                                               ; preds = %40, %31
  %46 = load %struct.drm_pending_event*, %struct.drm_pending_event** %4, align 8
  %47 = call i32 @kfree(%struct.drm_pending_event* %46)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dma_fence_put(i64) #1

declare dso_local i32 @kfree(%struct.drm_pending_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
