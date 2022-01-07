; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_wait_for_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_wait_for_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mixer_context = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mixer_context*)* @mixer_wait_for_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixer_wait_for_sync(%struct.mixer_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mixer_context*, align 8
  %4 = alloca i32, align 4
  store %struct.mixer_context* %0, %struct.mixer_context** %3, align 8
  %5 = call i32 (...) @ktime_get()
  %6 = call i32 @ktime_add_us(i32 %5, i32 100000)
  store i32 %6, i32* %4, align 4
  br label %7

7:                                                ; preds = %21, %1
  %8 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %9 = call i32 @mixer_is_synced(%struct.mixer_context* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %22

12:                                               ; preds = %7
  %13 = call i32 @usleep_range(i32 1000, i32 2000)
  %14 = call i32 (...) @ktime_get()
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @ktime_compare(i32 %14, i32 %15)
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32, i32* @ETIMEDOUT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %23

21:                                               ; preds = %12
  br label %7

22:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %18
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @ktime_add_us(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @mixer_is_synced(%struct.mixer_context*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @ktime_compare(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
