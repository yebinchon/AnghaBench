; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_ttm_lock.c___ttm_suspend_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_ttm_lock.c___ttm_suspend_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_lock = type { i64, i32, i32 }

@TTM_SUSPEND_LOCK_PENDING = common dso_local global i32 0, align 4
@TTM_SUSPEND_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_lock*)* @__ttm_suspend_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ttm_suspend_lock(%struct.ttm_lock* %0) #0 {
  %2 = alloca %struct.ttm_lock*, align 8
  %3 = alloca i32, align 4
  store %struct.ttm_lock* %0, %struct.ttm_lock** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ttm_lock*, %struct.ttm_lock** %2, align 8
  %5 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %4, i32 0, i32 1
  %6 = call i32 @spin_lock(i32* %5)
  %7 = load %struct.ttm_lock*, %struct.ttm_lock** %2, align 8
  %8 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load i32, i32* @TTM_SUSPEND_LOCK_PENDING, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.ttm_lock*, %struct.ttm_lock** %2, align 8
  %15 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* @TTM_SUSPEND_LOCK, align 4
  %19 = load %struct.ttm_lock*, %struct.ttm_lock** %2, align 8
  %20 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  store i32 1, i32* %3, align 4
  br label %29

23:                                               ; preds = %1
  %24 = load i32, i32* @TTM_SUSPEND_LOCK_PENDING, align 4
  %25 = load %struct.ttm_lock*, %struct.ttm_lock** %2, align 8
  %26 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %23, %11
  %30 = load %struct.ttm_lock*, %struct.ttm_lock** %2, align 8
  %31 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %30, i32 0, i32 1
  %32 = call i32 @spin_unlock(i32* %31)
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
