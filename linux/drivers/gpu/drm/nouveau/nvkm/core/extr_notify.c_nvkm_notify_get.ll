; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_notify.c_nvkm_notify_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_notify.c_nvkm_notify_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_notify = type { i32, %struct.nvkm_event* }
%struct.nvkm_event = type { i32 }

@NVKM_NOTIFY_USER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_notify_get(%struct.nvkm_notify* %0) #0 {
  %2 = alloca %struct.nvkm_notify*, align 8
  %3 = alloca %struct.nvkm_event*, align 8
  %4 = alloca i64, align 8
  store %struct.nvkm_notify* %0, %struct.nvkm_notify** %2, align 8
  %5 = load %struct.nvkm_notify*, %struct.nvkm_notify** %2, align 8
  %6 = getelementptr inbounds %struct.nvkm_notify, %struct.nvkm_notify* %5, i32 0, i32 1
  %7 = load %struct.nvkm_event*, %struct.nvkm_event** %6, align 8
  store %struct.nvkm_event* %7, %struct.nvkm_event** %3, align 8
  %8 = load %struct.nvkm_event*, %struct.nvkm_event** %3, align 8
  %9 = call i64 @likely(%struct.nvkm_event* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  %12 = load i32, i32* @NVKM_NOTIFY_USER, align 4
  %13 = load %struct.nvkm_notify*, %struct.nvkm_notify** %2, align 8
  %14 = getelementptr inbounds %struct.nvkm_notify, %struct.nvkm_notify* %13, i32 0, i32 0
  %15 = call i32 @test_and_set_bit(i32 %12, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %11
  %18 = load %struct.nvkm_event*, %struct.nvkm_event** %3, align 8
  %19 = getelementptr inbounds %struct.nvkm_event, %struct.nvkm_event* %18, i32 0, i32 0
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.nvkm_notify*, %struct.nvkm_notify** %2, align 8
  %23 = call i32 @nvkm_notify_get_locked(%struct.nvkm_notify* %22)
  %24 = load %struct.nvkm_event*, %struct.nvkm_event** %3, align 8
  %25 = getelementptr inbounds %struct.nvkm_event, %struct.nvkm_event* %24, i32 0, i32 0
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  br label %28

28:                                               ; preds = %17, %11, %1
  ret void
}

declare dso_local i64 @likely(%struct.nvkm_event*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nvkm_notify_get_locked(%struct.nvkm_notify*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
