; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_lid.c_psb_lid_timer_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_lid.c_psb_lid_timer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_psb_private = type { i32, %struct.timer_list }
%struct.timer_list = type { i64 }

@psb_lid_timer_func = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@PSB_LID_DELAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @psb_lid_timer_init(%struct.drm_psb_private* %0) #0 {
  %2 = alloca %struct.drm_psb_private*, align 8
  %3 = alloca %struct.timer_list*, align 8
  %4 = alloca i64, align 8
  store %struct.drm_psb_private* %0, %struct.drm_psb_private** %2, align 8
  %5 = load %struct.drm_psb_private*, %struct.drm_psb_private** %2, align 8
  %6 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %5, i32 0, i32 1
  store %struct.timer_list* %6, %struct.timer_list** %3, align 8
  %7 = load %struct.drm_psb_private*, %struct.drm_psb_private** %2, align 8
  %8 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %7, i32 0, i32 0
  %9 = call i32 @spin_lock_init(i32* %8)
  %10 = load %struct.drm_psb_private*, %struct.drm_psb_private** %2, align 8
  %11 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %10, i32 0, i32 0
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.timer_list*, %struct.timer_list** %3, align 8
  %15 = load i32, i32* @psb_lid_timer_func, align 4
  %16 = call i32 @timer_setup(%struct.timer_list* %14, i32 %15, i32 0)
  %17 = load i64, i64* @jiffies, align 8
  %18 = load i64, i64* @PSB_LID_DELAY, align 8
  %19 = add nsw i64 %17, %18
  %20 = load %struct.timer_list*, %struct.timer_list** %3, align 8
  %21 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.timer_list*, %struct.timer_list** %3, align 8
  %23 = call i32 @add_timer(%struct.timer_list* %22)
  %24 = load %struct.drm_psb_private*, %struct.drm_psb_private** %2, align 8
  %25 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %24, i32 0, i32 0
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @timer_setup(%struct.timer_list*, i32, i32) #1

declare dso_local i32 @add_timer(%struct.timer_list*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
