; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_ttm_lock.c___ttm_read_trylock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_ttm_lock.c___ttm_read_trylock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_lock = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_lock*, i32*)* @__ttm_read_trylock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ttm_read_trylock(%struct.ttm_lock* %0, i32* %1) #0 {
  %3 = alloca %struct.ttm_lock*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.ttm_lock* %0, %struct.ttm_lock** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 1, i32* %5, align 4
  %6 = load i32*, i32** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %8 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %7, i32 0, i32 2
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %11 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sge i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %16 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %21 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %21, align 8
  store i32 0, i32* %5, align 4
  %24 = load i32*, i32** %4, align 8
  store i32 1, i32* %24, align 4
  br label %32

25:                                               ; preds = %14, %2
  %26 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %27 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %30, %25
  br label %32

32:                                               ; preds = %31, %19
  %33 = load %struct.ttm_lock*, %struct.ttm_lock** %3, align 8
  %34 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %33, i32 0, i32 2
  %35 = call i32 @spin_unlock(i32* %34)
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  ret i32 %39
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
