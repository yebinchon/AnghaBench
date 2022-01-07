; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_ttm_lock.c___ttm_write_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_ttm_lock.c___ttm_write_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_lock = type { i32, i32, i32 }

@TTM_WRITE_LOCK_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_lock*)* @__ttm_write_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ttm_write_lock(%struct.ttm_lock* %0) #0 {
  %2 = alloca %struct.ttm_lock*, align 8
  %3 = alloca i32, align 4
  store %struct.ttm_lock* %0, %struct.ttm_lock** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ttm_lock*, %struct.ttm_lock** %2, align 8
  %5 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %4, i32 0, i32 2
  %6 = call i32 @spin_lock(i32* %5)
  %7 = load %struct.ttm_lock*, %struct.ttm_lock** %2, align 8
  %8 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  %12 = load %struct.ttm_lock*, %struct.ttm_lock** %2, align 8
  %13 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @TTM_WRITE_LOCK_PENDING, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %11
  %20 = load %struct.ttm_lock*, %struct.ttm_lock** %2, align 8
  %21 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %20, i32 0, i32 0
  store i32 -1, i32* %21, align 4
  %22 = load i32, i32* @TTM_WRITE_LOCK_PENDING, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.ttm_lock*, %struct.ttm_lock** %2, align 8
  %25 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  store i32 1, i32* %3, align 4
  br label %34

28:                                               ; preds = %11, %1
  %29 = load i32, i32* @TTM_WRITE_LOCK_PENDING, align 4
  %30 = load %struct.ttm_lock*, %struct.ttm_lock** %2, align 8
  %31 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %28, %19
  %35 = load %struct.ttm_lock*, %struct.ttm_lock** %2, align 8
  %36 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %35, i32 0, i32 2
  %37 = call i32 @spin_unlock(i32* %36)
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
