; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_vidi.c_vidi_fake_vblank_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_vidi.c_vidi_fake_vblank_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vidi_context = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@VIDI_REFRESH_TIME = common dso_local global i32 0, align 4
@ctx = common dso_local global %struct.vidi_context* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @vidi_fake_vblank_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vidi_fake_vblank_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.vidi_context*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.vidi_context*, %struct.vidi_context** %3, align 8
  %5 = ptrtoint %struct.vidi_context* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @timer, align 4
  %8 = call %struct.vidi_context* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.vidi_context* %8, %struct.vidi_context** %3, align 8
  %9 = load %struct.vidi_context*, %struct.vidi_context** %3, align 8
  %10 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i64 @drm_crtc_handle_vblank(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.vidi_context*, %struct.vidi_context** %3, align 8
  %17 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %16, i32 0, i32 0
  %18 = load i64, i64* @jiffies, align 8
  %19 = load i32, i32* @VIDI_REFRESH_TIME, align 4
  %20 = call i64 @msecs_to_jiffies(i32 %19)
  %21 = add nsw i64 %18, %20
  %22 = sub nsw i64 %21, 1
  %23 = call i32 @mod_timer(i32* %17, i64 %22)
  br label %24

24:                                               ; preds = %15, %1
  ret void
}

declare dso_local %struct.vidi_context* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64 @drm_crtc_handle_vblank(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
