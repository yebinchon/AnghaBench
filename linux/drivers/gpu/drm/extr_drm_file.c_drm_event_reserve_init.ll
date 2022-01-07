; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_file.c_drm_event_reserve_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_file.c_drm_event_reserve_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_pending_event = type { i32 }
%struct.drm_event = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_event_reserve_init(%struct.drm_device* %0, %struct.drm_file* %1, %struct.drm_pending_event* %2, %struct.drm_event* %3) #0 {
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_pending_event*, align 8
  %8 = alloca %struct.drm_event*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_file* %1, %struct.drm_file** %6, align 8
  store %struct.drm_pending_event* %2, %struct.drm_pending_event** %7, align 8
  store %struct.drm_event* %3, %struct.drm_event** %8, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load i64, i64* %9, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %17 = load %struct.drm_pending_event*, %struct.drm_pending_event** %7, align 8
  %18 = load %struct.drm_event*, %struct.drm_event** %8, align 8
  %19 = call i32 @drm_event_reserve_init_locked(%struct.drm_device* %15, %struct.drm_file* %16, %struct.drm_pending_event* %17, %struct.drm_event* %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 0
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load i32, i32* %10, align 4
  ret i32 %24
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @drm_event_reserve_init_locked(%struct.drm_device*, %struct.drm_file*, %struct.drm_pending_event*, %struct.drm_event*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
