; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_notify.c_nvkm_notify_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_notify.c_nvkm_notify_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_notify = type { i32 (%struct.nvkm_notify*)*, i32, %struct.nvkm_event* }
%struct.nvkm_event = type { i32 }

@NVKM_NOTIFY_KEEP = common dso_local global i32 0, align 4
@NVKM_NOTIFY_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_notify*)* @nvkm_notify_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvkm_notify_func(%struct.nvkm_notify* %0) #0 {
  %2 = alloca %struct.nvkm_notify*, align 8
  %3 = alloca %struct.nvkm_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.nvkm_notify* %0, %struct.nvkm_notify** %2, align 8
  %6 = load %struct.nvkm_notify*, %struct.nvkm_notify** %2, align 8
  %7 = getelementptr inbounds %struct.nvkm_notify, %struct.nvkm_notify* %6, i32 0, i32 2
  %8 = load %struct.nvkm_event*, %struct.nvkm_event** %7, align 8
  store %struct.nvkm_event* %8, %struct.nvkm_event** %3, align 8
  %9 = load %struct.nvkm_notify*, %struct.nvkm_notify** %2, align 8
  %10 = getelementptr inbounds %struct.nvkm_notify, %struct.nvkm_notify* %9, i32 0, i32 0
  %11 = load i32 (%struct.nvkm_notify*)*, i32 (%struct.nvkm_notify*)** %10, align 8
  %12 = load %struct.nvkm_notify*, %struct.nvkm_notify** %2, align 8
  %13 = call i32 %11(%struct.nvkm_notify* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @NVKM_NOTIFY_KEEP, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @NVKM_NOTIFY_USER, align 4
  %19 = load %struct.nvkm_notify*, %struct.nvkm_notify** %2, align 8
  %20 = getelementptr inbounds %struct.nvkm_notify, %struct.nvkm_notify* %19, i32 0, i32 1
  %21 = call i32 @test_and_clear_bit(i32 %18, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %17, %1
  %24 = load %struct.nvkm_event*, %struct.nvkm_event** %3, align 8
  %25 = getelementptr inbounds %struct.nvkm_event, %struct.nvkm_event* %24, i32 0, i32 0
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.nvkm_notify*, %struct.nvkm_notify** %2, align 8
  %29 = call i32 @nvkm_notify_get_locked(%struct.nvkm_notify* %28)
  %30 = load %struct.nvkm_event*, %struct.nvkm_event** %3, align 8
  %31 = getelementptr inbounds %struct.nvkm_event, %struct.nvkm_event* %30, i32 0, i32 0
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  br label %34

34:                                               ; preds = %23, %17
  ret void
}

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nvkm_notify_get_locked(%struct.nvkm_notify*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
