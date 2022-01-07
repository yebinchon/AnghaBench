; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_ttm_lock.c_ttm_read_trylock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_ttm_lock.c_ttm_read_trylock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_lock = type { i32 }

@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_read_trylock(%struct.ttm_lock* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttm_lock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ttm_lock* %0, %struct.ttm_lock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.ttm_lock*, %struct.ttm_lock** %4, align 8
  %12 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ttm_lock*, %struct.ttm_lock** %4, align 8
  %15 = call i32 @__ttm_read_trylock(%struct.ttm_lock* %14, i32* %7)
  %16 = call i32 @wait_event_interruptible(i32 %13, i32 %15)
  store i32 %16, i32* %6, align 4
  br label %24

17:                                               ; preds = %2
  %18 = load %struct.ttm_lock*, %struct.ttm_lock** %4, align 8
  %19 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ttm_lock*, %struct.ttm_lock** %4, align 8
  %22 = call i32 @__ttm_read_trylock(%struct.ttm_lock* %21, i32* %7)
  %23 = call i32 @wait_event(i32 %20, i32 %22)
  br label %24

24:                                               ; preds = %17, %10
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %43

34:                                               ; preds = %24
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  br label %41

41:                                               ; preds = %38, %37
  %42 = phi i32 [ 0, %37 ], [ %40, %38 ]
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %30
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @__ttm_read_trylock(%struct.ttm_lock*, i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
